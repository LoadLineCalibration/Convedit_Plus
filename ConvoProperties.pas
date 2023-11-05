unit ConvoProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Buttons,
  System.StrUtils, Conversation.Classes, ConvEditPlus_Util, ConvEditPlus_Const;

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
    editLastModifiedBy: TEdit;
    editConvoCreatedOn: TEdit;
    editConvoCreatedBy: TEdit;
    lvConvoDependsOnFlags: TListView;
    Label10: TLabel;
    btnAddFlag: TButton;
    btnDeleteFlag: TButton;
    Label11: TLabel;
    btnHelp: TBitBtn;
    lblTypeName: TLabel;
    chkAdd_PLayedFlag: TCheckBox;
    Label12: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure chkDataLinkConvoClick(Sender: TObject);
    procedure chkNPCentersPCRadiusClick(Sender: TObject);
    procedure btnPickConvoOwnerClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure editConvoNameChange(Sender: TObject);
    procedure editConvoNameKeyPress(Sender: TObject; var Key: Char);
    procedure cmbConvoOwnerKeyPress(Sender: TObject; var Key: Char);
    procedure chkDisplayConvoOnlyOnceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddFlagClick(Sender: TObject);
    procedure lvConvoDependsOnFlagsDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConvoProperties: TfrmConvoProperties;

implementation

{$R *.dfm}

uses AddInsertEvent, Table, EditValueDialog, HelpWindow, MainWindow, frmFlagList1;

procedure TfrmConvoProperties.btnAddFlagClick(Sender: TObject);
begin
    frmFlagList.ShowModalCheckFlags(lvConvoDependsOnFlags);
end;

procedure TfrmConvoProperties.btnCancelClick(Sender: TObject);
begin
    Close();
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

procedure TfrmConvoProperties.cmbConvoOwnerKeyPress(Sender: TObject; var Key: Char);
begin
    frmEventInsAdd.AllowFNameInput(Sender, Key);
end;

procedure TfrmConvoProperties.editConvoNameChange(Sender: TObject);
    var L, L1: Integer;
    var S, S1: string;
begin
    S := Trim(editConvoName.text);
    L := Length(S);

    S1 := Trim(cmbConvoOwner.text);
    L1 := Length(S1);

    // Unlock the "OK" button only if required fields are not empty and contains no digit in the beginning.
    btnOk.Enabled := ((L > 0) and
    (L1 > 0) and
    (StringStartsFromDigit(S) = false) and
    (StringStartsFromDigit(S1) = false));

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

procedure TfrmConvoProperties.FormShow(Sender: TObject);
begin
    pgcConvoPropertiesTabs.TabIndex := 0;
    editConvoNameChange(self);
    cmbConvoOwner.Items.Assign(frmMain.listPawnsActors);
end;

procedure TfrmConvoProperties.lvConvoDependsOnFlagsDblClick(Sender: TObject);
begin
    frmMain.ToggleLV_FlagValue(lvConvoDependsOnFlags);
end;

procedure TfrmConvoProperties.btnHelpClick(Sender: TObject);
begin
    case pgcConvoPropertiesTabs.TabIndex of
    0: frmHelp.LoadHelpResource('EmptyHelp');
    1: frmHelp.LoadHelpResource('EmptyHelp');
    2: frmHelp.LoadHelpResource('ConvPropertiesInvoke');
    3: frmHelp.LoadHelpResource('ConvPropertiesOptions');
    4: frmHelp.LoadHelpResource('EmptyHelp');
    end;
end;

procedure TfrmConvoProperties.btnOkClick(Sender: TObject);
begin
    var ConvoToAdd: TConversation;
    var NodeConName, NodeConOwnerName, NodeDependsOnFlags: TTreeNode;

    ConvoToAdd := TConversation.Create(); // create empty TConversation object

    with convoToAdd do
    begin
        conName := editConvoName.Text;
        conCreatedByName := frmMain.ConversationUserName;
        conModifiedByName := frmMain.ConversationUserName;

        // conversation has only one owner
        conOwnerName:= cmbConvoOwner.Items[cmbConvoOwner.ItemIndex];
        conOwnerIndex := frmMain.FindTableIdByName(tmActorsPawns, conOwnerName);

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

    frmMain.ConversationsList.Add(ConvoToAdd);
    ConvoToAdd.id := frmMain.ConversationsList.IndexOfItem(ConvoToAdd, TList.TDirection.FromBeginning);

    // Add conversation to the tree
    if frmMain.ItemExistsInTreeView(frmMain.ConvoTree, ConvoToAdd.conOwnerName) = False then
    begin
        NodeConOwnerName:= frmMain.ConvoTree.Items.Add(nil, ConvoToAdd.conOwnerName);
        NodeConOwnerName.ImageIndex := 0;
        NodeConOwnerName.ExpandedImageIndex := 0;
        NodeConOwnerName.SelectedIndex := 0;
    end
    else
        NodeConOwnerName := frmMain.FindTreeItemByText(frmMain.ConvoTree, ConvoToAdd.conOwnerName);

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


    Close();
end;

procedure TfrmConvoProperties.btnPickConvoOwnerClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbConvoOwner);
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
    chkAdd_PLayedFlag.Enabled := chkDisplayConvoOnlyOnce.Checked;

    if chkDisplayConvoOnlyOnce.Checked = false then chkAdd_PLayedFlag.Checked := false;
end;

end.
