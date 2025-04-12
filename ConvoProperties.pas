unit ConvoProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Buttons,
  System.StrUtils, Conversation.Classes, ConEditPlus.Helpers, ConEditPlus.Consts, ConEditPlus.Enums,
  System.UITypes, System.TypInfo;

type
  TfrmConvoProperties = class(TForm)
    btnCancel: TButton;
    btnOk: TButton;
    Panel1: TPanel;
    pgcConvoPropertiesTabs: TPageControl;
    TabSheet1: TTabSheet;
    memoConversationNotes: TMemo;
    cmbConvoOwner: TComboBox;
    editConvoDescription: TEdit;
    editConvoName: TEdit;
    Flags: TTabSheet;
    Invoke: TTabSheet;
    Options: TTabSheet;
    tsinfo: TTabSheet;
    Label1: TLabel;
    chkDisplayConvoOnlyOnce: TCheckBox;
    chkNonInteractive: TCheckBox;
    chkDataLinkConvo: TCheckBox;
    chkFPMode: TCheckBox;
    chkRandomCameraPlacement: TCheckBox;
    chkCanBeInterruptedByAnotherConvo: TCheckBox;
    chkAbsolutelyCannotInterrupt: TCheckBox;
    chkPCfrobsNPC: TCheckBox;
    chkPCbumpsNPC: TCheckBox;
    chkNPCseesPlayer: TCheckBox;
    chkNPCentersPCRadius: TCheckBox;
    Label2: TLabel;
    editDistFromPlayer: TSpinEdit;
    lblDistFromPlayer: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnPickConvoOwner: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    editConvoLastModifiedOn: TEdit;
    editConvoLastModifiedBy: TEdit;
    editConvoCreatedOn: TEdit;
    editConvoCreatedBy: TEdit;
    lvConvoDependsOnFlags: TListView;
    Label10: TLabel;
    btnAddFlag: TButton;
    btnDeleteFlag: TButton;
    Label11: TLabel;
    btnHelp: TBitBtn;
    lblTypeName: TLabel;
    chkAdd_PlayedFlag: TCheckBox;
    Label12: TLabel;
    cmbAIBarksMode: TComboBox;
    chkAddAiBarksSuffix: TCheckBox;
    btnAddAiBarkTemplate: TButton;
    Button1: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure chkDataLinkConvoClick(Sender: TObject);
    procedure chkNPCentersPCRadiusClick(Sender: TObject);
    procedure btnPickConvoOwnerClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure editConvoNameChange(Sender: TObject);
    procedure editConvoNameKeyPress(Sender: TObject; var Key: Char);
    procedure chkDisplayConvoOnlyOnceClick(Sender: TObject);
    procedure btnAddFlagClick(Sender: TObject);
    procedure lvConvoDependsOnFlagsDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    // new procedures
    procedure AddNewConversation();
    procedure EditConversation_FillFields(var convoToEdit: TConversation); // Load conversation info so we can change something
    procedure UpdateConversation(var convoToUpdate: TConversation); // write modified data back to Conversation we're loaded in procedure above
    procedure ClearFields();
    procedure FillAIBarksComboBox();

    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure editDistFromPlayerChange(Sender: TObject);

    // new functions
    function CheckConversationExists(conName: string): Boolean;
    procedure pgcConvoPropertiesTabsChange(Sender: TObject);
    procedure btnDeleteFlagClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkAddAiBarksSuffixClick(Sender: TObject);
    procedure btnAddAiBarkTemplateClick(Sender: TObject);
  private
    { Private declarations }
  public
    EditMode: TConversationEditMode;
    { Public declarations }
  end;

var
  frmConvoProperties: TfrmConvoProperties;



implementation

{$R *.dfm}

uses AddInsertEvent, Table, EditValueDialog, HelpWindow, MainWindow, frmFlagList1;

function TfrmConvoProperties.CheckConversationExists(conName: String): Boolean;
begin
    for var i:= 0  to frmMain.ConversationsList.Count -1 do
    begin
        if LowerCase(frmMain.ConversationsList.Items[i].conName) = LowerCase(conName) then
        begin
            Exit(True);
        end;
    end;

    Result := False;
end;

procedure TfrmConvoProperties.ClearFields();
begin
    editConvoName.Clear();
    editConvoDescription.Clear();
    memoConversationNotes.Clear();
    lvConvoDependsOnFlags.Clear();
    chkAddAiBarksSuffix.Checked := False;

    // Reset Options
    chkDisplayConvoOnlyOnce.Checked           := True;
    chkDisplayConvoOnlyOnceClick(self);
    chkDataLinkConvo.Checked                  := False;
    chkNonInteractive.Checked                 := False;
    chkFPMode.Checked                         := False;
    chkRandomCameraPlacement.Checked          := False;
    chkCanBeInterruptedByAnotherConvo.Checked := False;
    chkAbsolutelyCannotInterrupt.Checked      := False;

    // Reset Invoke options
    chkPCfrobsNPC.Checked        := True;
    chkPCbumpsNPC.Checked        := True;
    chkNPCseesPlayer.Checked     := False;
    chkNPCentersPCRadius.Checked := False;
    chkNPCentersPCRadiusClick(self);

    editDistFromPlayer.Value := 0;
end;

procedure TfrmConvoProperties.FillAIBarksComboBox();
begin
    var AIBarks: TBarkModes;
    var StrToAdd: string;

    cmbAIBarksMode.Clear();

    for AIBarks := Low(TBarkModes) to High(TBarkModes) do
    begin
        StrToAdd := GetEnumName(TypeInfo(TBarkModes), Ord(AIBarks));

        if StrToAdd.StartsWith('BM') then
            StrToAdd := Copy(StrToAdd, 3, Length(StrToAdd) -2);

        cmbAIBarksMode.Items.Add(StrToAdd);
    end;

    cmbAIBarksMode.ItemIndex := 0;
    chkAddAiBarksSuffixClick(self);
end;

procedure TfrmConvoProperties.AddNewConversation();
begin
    var ConvoToAdd: TConversation;
    var NodeConName, NodeConOwnerName, NodeDependsOnFlags: TTreeNode;

    ConvoToAdd := TConversation.Create(); // create empty TConversation object

    with ConvoToAdd do
    begin
        conName := editConvoName.Text;
        conCreatedByName := frmMain.ConversationUserName;
        conModifiedByName := frmMain.ConversationUserName;

        conModifiedByDate := conXMLDateTime(); // set current date/time

        // conversation has only one owner
        conOwnerName:= cmbConvoOwner.Items[cmbConvoOwner.ItemIndex];
        conOwnerIndex := frmMain.FindTableIdByName(TM_ActorsPawns, conOwnerName);

        // How conversation is activated + options
        bInfoLink        := chkDataLinkConvo.Checked;
        bOnlyOnce        := chkDisplayConvoOnlyOnce.Checked;
        bPCBumps         := chkPCbumpsNPC.Checked;
        bPCFrobs         := chkPCfrobsNPC.Checked;
        bNonInteract     := chkNonInteractive.Checked;
        bFirstPerson     := chkFPMode.Checked;
        bRandomCamera    := chkRandomCameraPlacement.Checked;
        bCanInterrupt    := chkCanBeInterruptedByAnotherConvo.Checked;
        bCannotInterrupt := chkAbsolutelyCannotInterrupt.Checked;
        bNPCSees         := chkNPCseesPlayer.Checked;
        bNPCEnters       := chkNPCentersPCRadius.Checked;
        distance         := editDistFromPlayer.Value;

        // flags...
        SetLength(conDependsOnFlags, lvConvoDependsOnFlags.Items.Count); // set size of array

        for var cdof := 0 to High(conDependsOnFlags) do
        begin
            conDependsOnFlags[cdof].flagName := lvConvoDependsOnFlags.Items[cdof].Caption; // and fill it
            conDependsOnFlags[cdof].flagValue := StrToBool(lvConvoDependsOnFlags.Items[cdof].SubItems[0]);
            conDependsOnFlags[cdof].flagIndex := lvConvoDependsOnFlags.Items[cdof].SubItems[1].ToInteger;
        end;
    end;

    frmMain.ConversationsList.Add(ConvoToAdd); // add to list
    ConvoToAdd.id := frmMain.ConversationsList.IndexOfItem(ConvoToAdd, TList.TDirection.FromBeginning); // set id from list

    // Add conversation to the tree
    //if frmMain.ItemExistsInTreeView(frmMain.ConvoTree, ConvoToAdd.conOwnerName) = False then
    if frmMain.FindConvoOwnerInTree(ConvoToAdd.conOwnerName) = nil then
    begin
        NodeConOwnerName:= frmMain.ConvoTree.Items.Add(nil, ConvoToAdd.conOwnerName);
        NodeConOwnerName.ImageIndex := 0;
        NodeConOwnerName.ExpandedImageIndex := 0;
        NodeConOwnerName.SelectedIndex := 0;
    end
    else
        NodeConOwnerName := frmMain.FindConvoOwnerInTree(ConvoToAdd.conOwnerName); //frmMain.FindTreeItemByText(frmMain.ConvoTree, ConvoToAdd.conOwnerName);

    // Add owner's conversations
    NodeConName:= frmMain.ConvoTree.Items.AddChildObject(NodeConOwnerName, ConvoToAdd.conName, ConvoToAdd);
    NodeConName.ImageIndex := 1;
    NodeConName.ExpandedImageIndex := 1;
    NodeConName.SelectedIndex := 1;

    for var fl:= 0 to High(ConvoToAdd.conDependsOnFlags) do // now add flags to the tree
    begin
        NodeDependsOnFlags:= frmMain.ConvoTree.Items.AddChild(NodeConName,
        convoToAdd.conDependsOnFlags[fl].flagName + ' = '
        + BoolToStr(convoToAdd.conDependsOnFlags[fl].flagValue, true));

        // red icon = false, green icon = true
        if NodeDependsOnFlags.Text.EndsText('true', NodeDependsOnFlags.Text) then
        begin
            NodeDependsOnFlags.ImageIndex := 2;
            NodeDependsOnFlags.ExpandedImageIndex := 2;
            NodeDependsOnFlags.SelectedIndex := 2;
        end else
        begin
            NodeDependsOnFlags.ImageIndex := 3;
            NodeDependsOnFlags.ExpandedImageIndex := 3;
            NodeDependsOnFlags.SelectedIndex := 3;
        end;
    end;

    if chkAdd_PlayedFlag.Checked = True then
        frmMain.listFlags.Add(ConvoToAdd.conName + PLAYED_SUFF);

    frmMain.SelectTreeItemByObject(frmMain.ConvoTree, ConvoToAdd); // select the conversation
end;

procedure TfrmConvoProperties.UpdateConversation(var convoToUpdate: TConversation);
var
    TempConvoOwnerName: string;
begin
    with convoToUpdate do
    begin
        conName := editConvoName.Text; // conversation name

        conModifiedByName := frmMain.ConversationUserName; // user name
        conModifiedByDate := conXMLDateTime(); // use current date/time

        // conversation has only one owner
        TempConvoOwnerName := cmbConvoOwner.Items[cmbConvoOwner.ItemIndex];

        conOwnerName  := TempConvoOwnerName; //cmbConvoOwner.Items[cmbConvoOwner.ItemIndex];
        conOwnerIndex := frmMain.FindTableIdByName(TM_ActorsPawns, tempConvoOwnerName);

        // How conversation is activated + options
        bInfoLink        := chkDataLinkConvo.Checked;
        bOnlyOnce        := chkDisplayConvoOnlyOnce.Checked;
        bPCBumps         := chkPCbumpsNPC.Checked;
        bPCFrobs         := chkPCfrobsNPC.Checked;
        bNonInteract     := chkNonInteractive.Checked;
        bFirstPerson     := chkFPMode.Checked;
        bRandomCamera    := chkRandomCameraPlacement.Checked;
        bCanInterrupt    := chkCanBeInterruptedByAnotherConvo.Checked;
        bCannotInterrupt := chkAbsolutelyCannotInterrupt.Checked;
        bNPCSees         := chkNPCseesPlayer.Checked;
        bNPCEnters       := chkNPCentersPCRadius.Checked;
        distance         := editDistFromPlayer.Value;

        // flags...
        SetLength(conDependsOnFlags, lvConvoDependsOnFlags.Items.Count); // set size of array

        for var cdof := 0 to High(conDependsOnFlags) do
        begin
            conDependsOnFlags[cdof].flagName := lvConvoDependsOnFlags.Items[cdof].Caption; // and fill it
            conDependsOnFlags[cdof].flagValue := StrToBool(lvConvoDependsOnFlags.Items[cdof].SubItems[0]);
            conDependsOnFlags[cdof].flagIndex := frmMain.FindTableIdByName(TM_Flags, lvConvoDependsOnFlags.Items[cdof].Caption);
        end;
    end;

    var NameNode := frmMain.ConvoTree.Selected; // � ������ ������ Conversation
    var OwnerNode := frmMain.ConvoTree.Selected.Parent; // Owner
    var ConName := LowerCase(convoToUpdate.conName);
    var ConOwner := LowerCase(convoToUpdate.conOwnerName);
    var NodeConNameText := LowerCase(NameNode.Text);
    var NodeConOwnerText := LowerCase(OwnerNode.Text);

    // ���������� ������ ��� �������  � Owner �� ���������
    if (NodeConNameText <> ConName) and (NodeConOwnerText = ConOwner) then
        NameNode.Text := convoToUpdate.conName;

    // Owner changed
    if NodeConOwnerText <> ConOwner then
    begin
        var ExistingOwnerNode := frmMain.FindConvoOwnerInTree(ConOwner); // ������� ��������, ����� ���� � ������ ��� ���� ����� Owner?

        if ExistingOwnerNode <> nil then
        begin
           NameNode.Text := convoToUpdate.conName;
           NameNode.MoveTo(ExistingOwnerNode, naAddChild); // Move conversation branch to existing owner node

           if OwnerNode.Count = 0 then
               OwnerNode.Delete();
        end else
        begin
            // Handle the scenario where the new owner node does not exist
            var NewOwnerNode := frmMain.ConvoTree.Items.Add(nil, convoToUpdate.conOwnerName);

            NameNode.Text := convoToUpdate.conName;
            NameNode.MoveTo(NewOwnerNode, naAddChild); // Move conversation branch to existing owner node
        end;
    end;

    NameNode.DeleteChildren(); // delete all flag nodes

    for var fl := 0 to High(convoToUpdate.conDependsOnFlags) do // and recreate them
    begin
        var NewNodeDependsOnFlags:= frmMain.ConvoTree.Items.AddChild(NameNode,
        convoToUpdate.conDependsOnFlags[fl].flagName + ' = '
        + BoolToStr(convoToUpdate.conDependsOnFlags[fl].flagValue, true));

        // red icon = false, green icon = true
        if NewNodeDependsOnFlags.Text.EndsText('true', NewNodeDependsOnFlags.Text) then
        begin
            NewNodeDependsOnFlags.ImageIndex := 2;
            NewNodeDependsOnFlags.ExpandedImageIndex := 2;
            NewNodeDependsOnFlags.SelectedIndex := 2;
        end else
        begin
            NewNodeDependsOnFlags.ImageIndex := 3;
            NewNodeDependsOnFlags.ExpandedImageIndex := 3;
            NewNodeDependsOnFlags.SelectedIndex := 3;
        end;
    end;

    if chkAdd_PlayedFlag.Checked = True then
        frmMain.listFlags.Add(convoToUpdate.conName + PLAYED_SUFF);

    NameNode.Expand(False);
end;

procedure TfrmConvoProperties.EditConversation_FillFields(var convoToEdit: TConversation);
begin
    pgcConvoPropertiesTabs.ActivePageIndex := 0;
    ClearFields();

    cmbConvoOwner.Items.Assign(frmMain.listPawnsActors); //it must be here, not there!

    if Assigned(convoToEdit) = false then Exit();

    cmbConvoOwner.Items        := frmMain.listPawnsActors;
    editConvoName.Text         := convoToEdit.conName;
    editConvoDescription.Text  := convoToEdit.conDescription;
    cmbConvoOwner.ItemIndex    := cmbConvoOwner.Items.IndexOf(convoToEdit.conOwnerName);
    memoConversationNotes.Text := convoToEdit.conNotes;

    for var i:= 0 to High(convoToEdit.conDependsOnFlags) do
    begin
        var cdFlag := lvConvoDependsOnFlags.Items.Add();

        cdFlag.Caption := convoToEdit.conDependsOnFlags[i].flagName;
        cdFlag.SubItems.Add(BoolToStr(convoToEdit.conDependsOnFlags[i].flagValue, True));
        cdFlag.SubItems.Add(convoToEdit.conDependsOnFlags[i].flagIndex.ToString);
    end;

    chkPCfrobsNPC.Checked        := convoToEdit.bPCFrobs;
    chkNPCentersPCRadius.Checked := convoToEdit.bNPCEnters;
    chkPCbumpsNPC.Checked        := convoToEdit.bPCBumps; // pointless?
    chkNPCseesPlayer.Checked     := convoToEdit.bNPCSees; // same?

    editDistFromPlayer.Value     := convoToEdit.distance;

    chkDisplayConvoOnlyOnce.Checked           := convoToEdit.bOnlyOnce;
    chkDataLinkConvo.Checked     := convoToEdit.bInfoLink;
    chkNonInteractive.Checked    := convoToEdit.bNonInteract;
    chkFPMode.Checked            := convoToEdit.bFirstPerson;
    chkRandomCameraPlacement.Checked          := convoToEdit.bRandomCamera;
    chkCanBeInterruptedByAnotherConvo.Checked := convoToEdit.bCanInterrupt;
    chkAbsolutelyCannotInterrupt.Checked      := convoToEdit.bCannotInterrupt;

    editConvoCreatedOn.Text := convoToEdit.conCreatedByDate;
    editConvoCreatedBy.Text := convoToEdit.conCreatedByName;

    editConvoLastModifiedOn.Text := convoToEdit.conModifiedByDate;
    editConvoLastModifiedBy.Text := convoToEdit.conModifiedByName;

    editConvoNameChange(self);

    EditMode := em_Edit;

    ShowModal();
end;

procedure TfrmConvoProperties.btnAddAiBarkTemplateClick(Sender: TObject);
begin
    var AIBarksItemIdx := cmbAIBarksMode.ItemIndex;
      if AIBarksItemIdx = -1 then AIBarksItemIdx := 0; // Combobox itemIndex (failsafe)
    var AIBarkMode := cmbAIBarksMode.Items[AIBarksItemIdx];
    var bAlreadyBark: Boolean := False;

    for var str in cmbAIBarksMode.Items do
    begin
        if EndsText(str, editConvoName.Text) = True then
        begin
            bAlreadyBark := True;
            Break;
        end;
    end;

    if bAlreadyBark = False then
    begin
        editConvoName.Text := editConvoName.Text + AIBarkMode;
    end;
end;

procedure TfrmConvoProperties.btnAddFlagClick(Sender: TObject);
begin
    frmFlagList.ShowModalCheckFlags(lvConvoDependsOnFlags);
end;

procedure TfrmConvoProperties.btnCancelClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmConvoProperties.btnDeleteFlagClick(Sender: TObject);
begin
    if lvConvoDependsOnFlags.Selected <> nil then
        lvConvoDependsOnFlags.Selected.Delete();
end;

procedure TfrmConvoProperties.chkNPCentersPCRadiusClick(Sender: TObject);
begin
    if (chkNPCentersPCRadius.Checked = true) then
    begin
        editDistFromPlayer.Enabled := true;
        lblDistFromPlayer.Enabled := true;
    end else
    begin
        editDistFromPlayer.Enabled := false;
        lblDistFromPlayer.Enabled := false;
    end
end;

procedure TfrmConvoProperties.editConvoNameChange(Sender: TObject);
begin
    var S := Trim(editConvoName.text);
    var L := Length(S);

    // Unlock the "OK" button only if required fields are not empty and contains no digit in the beginning.
    //btnOk.Enabled := ((L > 0) and (StringStartsFromDigit(S) = false) and (cmbConvoOwner.ItemIndex <> -1) and (cmbConvoOwner.Items.Count > 0));
    btnOk.Enabled := ((L > 0) and (ConEditPlus.Helpers.ValidateFName(S) = True) and (cmbConvoOwner.ItemIndex <> -1) and (cmbConvoOwner.Items.Count > 0));

    lblTypeName.Visible := not btnOk.Enabled;
    with pgcConvoPropertiesTabs do
    begin
        Flags.TabVisible := btnOk.Enabled;
        Invoke.TabVisible := btnOk.Enabled;
        Options.TabVisible := btnOk.Enabled;
        tsinfo.TabVisible := btnOk.Enabled;
    end;
end;

procedure TfrmConvoProperties.editConvoNameKeyPress(Sender: TObject; var Key: Char);
begin
    frmEventInsAdd.AllowFNameInput(Sender, Key);
end;

procedure TfrmConvoProperties.editDistFromPlayerChange(Sender: TObject);
begin
    if editDistFromPlayer.Value <= 1 then
        editDistFromPlayer.Value := 0;
end;

procedure TfrmConvoProperties.FormCreate(Sender: TObject);
begin
    FillAIBarksComboBox();
end;

procedure TfrmConvoProperties.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if WheelDelta < 1 then
    begin
       editDistFromPlayer.Value := editDistFromPlayer.Value - 2;
       Handled := True;
    end
    else
    begin
       editDistFromPlayer.Value := editDistFromPlayer.Value + 2;
       Handled := True;
    end;
end;

procedure TfrmConvoProperties.FormShow(Sender: TObject);
begin
    editConvoNameChange(Self);
    chkDisplayConvoOnlyOnceClick(self);
end;

procedure TfrmConvoProperties.lvConvoDependsOnFlagsDblClick(Sender: TObject);
begin
    frmMain.ToggleLV_FlagValue(lvConvoDependsOnFlags);
end;

procedure TfrmConvoProperties.pgcConvoPropertiesTabsChange(Sender: TObject);
begin
    btnHelp.Visible := pgcConvoPropertiesTabs.ActivePageIndex <> 4;
end;

procedure TfrmConvoProperties.btnHelpClick(Sender: TObject);
begin
    case pgcConvoPropertiesTabs.TabIndex of
    0: frmHelp.LoadHelpResource('ConvPropertiesGeneral');
    1: frmHelp.LoadHelpResource('ConvPropertiesFlags');
    2: frmHelp.LoadHelpResource('ConvPropertiesInvoke');
    3: frmHelp.LoadHelpResource('ConvPropertiesOptions');
    end;
end;

procedure TfrmConvoProperties.btnOkClick(Sender: TObject);
begin
    case EditMode of
        em_Edit:
        begin
            if (editConvoName.Text <> frmMain.CurrentConversation.conName) and
               (frmMain.CanRenameConversation(editConvoName.Text) = False) then
            begin
                MessageDlg(PChar(strCannotRenameConversation),  mtError, [mbOK], 0);
                Exit();
            end;

            UpdateConversation(frmMain.CurrentConversation);
            frmMain.bFileModified := True;
            frmMain.SelectTreeItemByObject(frmMain.ConvoTree, frmMain.CurrentConversation);
        end;

        em_Create:
        begin
            //if StringStartsFromDigit(editConvoName.Text) = True then
            if ConEditPlus.Helpers.ValidateFName(editConvoName.Text) = False then
            begin
                MessageDlg(ConEditPlus.Consts.strInvalidFName,  mtError, [mbOK], 0);
                Exit();
            end;

            if CheckConversationExists(editConvoName.Text) = True then
            begin
                MessageDlg(strConversationAlreadyExists,  mtError, [mbOK], 0);
                Exit();
            end;

            AddNewConversation();
            frmMain.bFileModified := True;
        end;
    end;

    Close();
end;

procedure TfrmConvoProperties.btnPickConvoOwnerClick(Sender: TObject);
begin
    frmMain.PickTableObject(TM_ActorsPawns, cmbConvoOwner);
end;

procedure TfrmConvoProperties.chkAddAiBarksSuffixClick(Sender: TObject);
begin
    cmbAIBarksMode.Visible := chkAddAiBarksSuffix.Checked;
    btnAddAiBarkTemplate.Visible := chkAddAiBarksSuffix.Checked;
end;

procedure TfrmConvoProperties.chkDataLinkConvoClick(Sender: TObject);
begin
    if (chkDataLinkConvo.Checked = true) then
        begin
            chkNonInteractive.Checked := false;
            chkFPMode.Checked := false;
            chkRandomCameraPlacement.Checked := false;
            chkCanBeInterruptedByAnotherConvo.Checked := false;

            chkNonInteractive.Enabled := false;
            chkFPMode.Enabled := false;
            chkRandomCameraPlacement.Enabled := false;
            chkCanBeInterruptedByAnotherConvo.Enabled := false;

            if StartsText(INFOLINK_PREFIX,editConvoName.Text) = false then
               editConvoName.Text := INFOLINK_PREFIX + editConvoName.Text;
        end else
        begin
            chkNonInteractive.Enabled := true;
            chkFPMode.Enabled := true;
            chkRandomCameraPlacement.Enabled := true;
            chkCanBeInterruptedByAnotherConvo.Enabled := true;

            if StartsText(INFOLINK_PREFIX,editConvoName.Text) = true then
               editConvoName.Text := ReplaceStr(editConvoName.Text, INFOLINK_PREFIX, '');
        end;
end;

procedure TfrmConvoProperties.chkDisplayConvoOnlyOnceClick(Sender: TObject);
begin
    chkAdd_PlayedFlag.Enabled := chkDisplayConvoOnlyOnce.Checked;
    if chkDisplayConvoOnlyOnce.Checked = false then chkAdd_PlayedFlag.Checked := false;
end;

end.
