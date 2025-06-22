unit Table;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Conversation.Classes, AddInsertEvent,
  ConEditPlus.Consts, ConvoProperties, EditValueDialog, Vcl.Menus, system.Types, ConEditPlus.Enums,
  system.UITypes, ConEditPlus.Helpers, Vcl.Clipbrd;

type
  TfrmTableEdit = class(TForm)
    lstTableContents: TListBox;
    editTable: TEdit;
    btnAddItem: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnDeleteUnused: TButton;
    btnClose: TButton;
    chkClearAfterAdd: TCheckBox;
    chkDoubleClickEditItem: TCheckBox;
    btnAddDefSkills: TButton;
    btnAddDef_LR_Weapons: TButton;
    btnAddDef_CR_weapons: TButton;
    btnAddDefGrenades: TButton;
    btnAddDefMiscItems: TButton;
    btn_CustomClassList: TButton;
    CustomItemsPopup: TPopupMenu;
    btnAddDefInfolinkNames: TButton;
    StaticText2: TStaticText;
    CustomItem1: TMenuItem;
    ListContentsPopup: TPopupMenu;
    Copytoclipboard1: TMenuItem;
    edtSearchInTable: TEdit;
    edtTableItemsCounter: TEdit;
    N1: TMenuItem;
    CopylistcontentstoClipboard1: TMenuItem;
    Exportlistcontentstofile1: TMenuItem;
    ExportListDialog: TFileSaveDialog;

    // new procedures
    procedure UpdateButtonsState();
    procedure ApplyTableChanges();
    procedure SendTableDataBack();
    procedure BuildCustomMenu();
    procedure CleanupCurrentTable(aTableMode: TTableMode); // to remove unused table entries

    // new functions
    function CanDeleteItem(item: String): Boolean;
    function CheckFlagIsUsed(flagName: String): Boolean; // Ah oh
    function CheckActorIsUsed(actorName: string): Boolean;
    function CheckSkillIsUsed(skillName: string): Boolean;
    function CheckObjectIsUsed(objName: string): Boolean;

    procedure TableItemRenamed(renameFrom: string; renameTo: string);
    procedure RenameFlag(renameFrom: string; renameTo: string);
    procedure RenameActor(renameFrom: string; renameTo: string);
    procedure RenameSkill(renameFrom: string; renameTo: string);
    procedure RenameObject(renameFrom: string; renameTo: string);

    procedure SaveAndRestoreComboBoxSelection(cmb: TComboBox; newItems: TStrings);

    procedure editTableKeyPress(Sender: TObject; var Key: Char);
    procedure btnCloseClick(Sender: TObject);
    procedure lstTableContentsClick(Sender: TObject);
    procedure lstTableContentsKeyPress(Sender: TObject; var Key: Char);
    procedure editTableChange(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteUnusedClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure lstTableContentsEnter(Sender: TObject);
    procedure lstTableContentsExit(Sender: TObject);
    procedure lstTableContentsDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddDefSkillsClick(Sender: TObject);
    procedure btnAddDefMiscItemsClick(Sender: TObject);
    procedure btnAddDefGrenadesClick(Sender: TObject);
    procedure btnAddDef_LR_WeaponsClick(Sender: TObject);
    procedure btnAddDef_CR_weaponsClick(Sender: TObject);
    procedure btn_CustomClassListClick(Sender: TObject);
    procedure btnAddDefInfolinkNamesClick(Sender: TObject);
    procedure CustomItem1Click(Sender: TObject);
    procedure ListContentsPopupPopup(Sender: TObject);
    procedure Copytoclipboard1Click(Sender: TObject);
    procedure edtSearchInTableChange(Sender: TObject);
    procedure CopylistcontentstoClipboard1Click(Sender: TObject);
    procedure Exportlistcontentstofile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableMode: TTableMode; // Переменная для доступа
    TableItemReceiver: TControl;
  end;

var
  frmTableEdit: TfrmTableEdit;

implementation


{$R *.dfm}

uses MainWindow, frmFlagList1;


function TfrmTableEdit.CheckFlagIsUsed(flagName: String): Boolean; // return True if flag has been found in conversations or/and events
begin
    var convList:= frmMain.ConversationsList;

    for var i:= 0 to convList.Count -1 do
    begin
        for var k := 0 to High(convList.Items[i].conDependsOnFlags) do // check conDependsOnFlags first
        begin
            if LowerCase(convList.Items[i].conDependsOnFlags[k].flagName) = LowerCase(flagName) then
            begin
                Exit(True);
            end;
        end;

        for var e:= 0 to High(convList.Items[i].Events) do
        begin
            if convList.Items[i].Events[e] is TConEventChoice then // Check Choices
            begin
                var tempChoice := TConEventChoice(convList.Items[i].Events[e]);

                for var chi := 0 to High(tempChoice.Choices) do
                begin
                    for var crk := 0 to High(tempChoice.Choices[chi].RequiredFlags) do
                    begin
                        if LowerCase(tempChoice.Choices[chi].RequiredFlags[crk].flagName) = LowerCase(flagName) then
                        begin
                            frmMain.addLog('Found flag "' + flagName + '" in choice: "' + tempChoice.Choices[chi].textline + '" ' + tempChoice.Choices[chi].RequiredFlags[crk].flagName);
                            Exit(True);
                            //MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                            //Exit(False);
                        end;
                    end;
                end;
            end;

            if convList.Items[i].Events[e] is TConEventSetFlag then // Nothing? Check SetFlag events
            begin
                var tempSetFlag := TConEventSetFlag(convList.Items[i].Events[e]);

                for var crk := 0 to High(tempSetFlag.SetFlags) do
                begin
                    if LowerCase(tempSetFlag.SetFlags[crk].flagName) = LowerCase(flagName) then
                    begin
                        frmMain.AddLog(TimeToStr(Now()) +  ': checking TConEventSetFlag events: ' + tempSetFlag.SetFlags[crk].flagName);
                        frmMain.AddLog('Found flag ' + flagName + ' in TConEventSetFlag');
                        Exit(True);
                    end;
                end;
            end;

            if convList.Items[i].Events[e] is TConEventCheckFlag then
            begin
                var tempCheckFlag := TConEventCheckFlag(convList.Items[i].Events[e]);

                for var crk := 0 to High(tempCheckFlag.FlagsToCheck) do
                begin
                    if LowerCase(tempCheckFlag.FlagsToCheck[crk].flagName) = LowerCase(flagName) then
                    begin
                        frmMain.AddLog(TimeToStr(Now()) +  ': checking TConEventCheckFlag events: ' + tempCheckFlag.FlagsToCheck[crk].flagName);
                        frmMain.AddLog('Found flag ' + flagName + ' in TConEventCheckFlag');
                        Exit(True);
                    end;
                end;
            end;
        end;
    end;

    Result := False;
end;

function TfrmTableEdit.CheckActorIsUsed(actorName: string): Boolean;
begin
    var convList:= frmMain.ConversationsList;

    for var i:= 0 to convList.Count -1 do
    begin
        if LowerCase(convList.Items[i].conOwnerName) = LowerCase(actorName) then
        begin
            Exit(True);
        end;

        for var e:= 0 to High(convList.Items[i].Events) do
        begin
            if convList.Items[i].Events[e] is TConEventSpeech then
            begin
                var tempSpeech := TConEventSpeech(convList.Items[i].Events[e]);

                if LowerCase(tempSpeech.ActorValue) = LowerCase(actorName) then
                    Exit(True);

                if LowerCase(tempSpeech.ActorToValue) = LowerCase(actorName) then
                    Exit(True);
            end;

            if convList.Items[i].Events[e] is TConEventTransferObject then
            begin
                var tempTransObj := TConEventTransferObject(convList.Items[i].Events[e]);

                if LowerCase(tempTransObj.ActorFromValue) = LowerCase(actorName) then
                    Exit(True);

                if LowerCase(tempTransObj.ActorToValue) = LowerCase(actorName) then
                    Exit(True);
            end;

            if convList.Items[i].Events[e] is TConEventAnimation then
            begin
                var tempAnim := TConEventAnimation(convList.Items[i].Events[e]);

                if LowerCase(tempAnim.ActorValue) = LowerCase(actorName) then
                    Exit(True);
            end;

            if convList.Items[i].Events[e] is TConEventTrade then
            begin
                var tempTrade := TConEventTrade(convList.Items[i].Events[e]);

                if LowerCase(tempTrade.TradeActorValue) = LowerCase(actorName) then
                    Exit(True);
            end;
        end;
    end;

    Result := False;
end;

function TfrmTableEdit.CheckSkillIsUsed(skillName: string): Boolean; // used only in TConEventChoice.TChoiceItemObject
begin
    var convList:= frmMain.ConversationsList;

    for var i:= 0 to convList.Count -1 do
    begin
        for var e:= 0 to High(convList.Items[i].Events) do
        begin
            if convList.Items[i].Events[e] is TConEventChoice then // Check Choices
            begin
                var tempChoice := TConEventChoice(convList.Items[i].Events[e]);

                for var chi := 0 to High(tempChoice.Choices) do
                begin
                    if (tempChoice.Choices[chi].bSkillNeeded <> -1) and (LowerCase(tempChoice.Choices[chi].Skill) = LowerCase(skillName)) then
                    Exit(True);
                end;
            end;
        end;
    end;

    Result := False;
end;

function TfrmTableEdit.CheckObjectIsUsed(objName: string): Boolean;
begin
    var convList:= frmMain.ConversationsList;

    for var i:= 0 to convList.Count -1 do
    begin
        if LowerCase(convList.Items[i].conOwnerName) = LowerCase(objName) then
        begin
            Exit(True);
        end;

        for var e:= 0 to High(convList.Items[i].Events) do
        begin
            if convList.Items[i].Events[e] is TConEventCheckObject then
            begin
                var tempCheckObj := TConEventCheckObject(convList.Items[i].Events[e]);

                if LowerCase(tempCheckObj.ObjectValue) = LowerCase(objName) then
                    Exit(True);
            end;

            if convList.Items[i].Events[e] is TConEventTransferObject then
            begin
                var tempTransObj := TConEventTransferObject(convList.Items[i].Events[e]);

                if LowerCase(tempTransObj.ObjectValue) = LowerCase(objName) then
                    Exit(True);
            end;
        end;
    end;

    Result := False;
end;

function ListBoxContainsItem(ListBox: TListBox; Items: array of string): Boolean;
var
    i, j: Integer;
begin
    Result := False;

    // Check if ListBox is empty
    if ListBox.Items.Count = 0 then
       Exit();

    for i := 0 to ListBox.Items.Count - 1 do
    begin
        for j := Low(Items) to High(Items) do
        begin
            if ListBox.Items[i] = Items[j] then
            begin
                Result := True;
                Break;
            end;
        end;
        if Result = True then
           Break;
    end;
end;

procedure TfrmTableEdit.ApplyTableChanges();
begin
    case TableMode of
        TM_ActorsPawns:
        begin
            frmMain.listPawnsActors.Assign(lstTableContents.Items);

            if frmConvoProperties.Visible = True then
            begin
                frmConvoProperties.cmbConvoOwner.Items.Assign(lstTableContents.Items);
            end;

            if frmEventInsAdd.Visible = True then
            begin
                SaveAndRestoreComboBoxSelection(frmEventInsAdd.cmbSpeakingFrom, lstTableContents.Items);
                SaveAndRestoreComboBoxSelection(frmEventInsAdd.cmbSpeakingTo, lstTableContents.Items);
                SaveAndRestoreComboBoxSelection(frmEventInsAdd.cmbTransferObjectTo, lstTableContents.Items);
                SaveAndRestoreComboBoxSelection(frmEventInsAdd.cmbTransferObjectFrom, lstTableContents.Items);
                SaveAndRestoreComboBoxSelection(frmEventInsAdd.cmbPawnToAnimate, lstTableContents.Items);

                {frmEventInsAdd.cmbSpeakingFrom.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbSpeakingTo.Items.Assign(lstTableContents.Items);

                frmEventInsAdd.cmbTransferObjectTo.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbTransferObjectFrom.Items.Assign(lstTableContents.Items);

                frmEventInsAdd.cmbPawnToAnimate.Items.Assign(lstTableContents.Items);}
            end;
        end;

        TM_Flags:
        begin
            frmMain.listFlags.Assign(lstTableContents.Items);
        end;

        TM_Skills:
        begin
            frmMain.listSkills.Assign(lstTableContents.Items);
        end;

        TM_Objects:
        begin
            frmMain.listObjects.Assign(lstTableContents.Items);

            if frmEventInsAdd.Visible = True then
            begin
                frmEventInsAdd.cmbObjectToCheck.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbObjectToTransfer.Items.Assign(lstTableContents.Items);
            end;
        end;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddDefGrenadesClick(Sender: TObject);
begin
    if MessageDlg(strAddDefaultGrenadesQuestion,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_Grenades) -1 do
           lstTableContents.items.Add(Default_DeusEx_Grenades[i]);

        btnAddDefGrenades.Enabled := False;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddDefInfolinkNamesClick(Sender: TObject);
begin
    if MessageDlg(strAddDefInfoLinkNamesQuestion,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_Infolink_Names) -1 do
           lstTableContents.items.Add(Default_DeusEx_Infolink_Names[i]);

        btnAddDefInfolinkNames.Enabled := False;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddDefMiscItemsClick(Sender: TObject);
begin
    if MessageDlg(strAddDefaultMiscItemsQuestion,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_MiscItems) -1 do
           lstTableContents.items.Add(Default_DeusEx_MiscItems[i]);

        btnAddDefMiscItems.Enabled := False;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddDefSkillsClick(Sender: TObject);
begin
    if MessageDlg(strAddDefaultSkillsQuestion,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_Skills) -1 do
           lstTableContents.items.Add(Default_DeusEx_Skills[i]);

        btnAddDefSkills.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDef_CR_weaponsClick(Sender: TObject);
begin
    if MessageDlg(strAddDefaultCloseRangeWeapons,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_CloseRange) -1 do
           lstTableContents.items.Add(Default_DeusEx_CloseRange[i]);

        btnAddDef_CR_weapons.Enabled := False;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddDef_LR_WeaponsClick(Sender: TObject);
begin
    if MessageDlg(strAddDefaultFirearmsQuestion,  mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
       for var i:= 0 to Length(Default_DeusEx_LongRange) -1 do
           lstTableContents.items.Add(Default_DeusEx_LongRange[i]);

        btnAddDef_LR_Weapons.Enabled := False;
    end;

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnAddItemClick(Sender: TObject); // Добавить элемент в один из списков. Также не допустить повторов.
var itemstr: string;
begin
    if Length(Trim(editTable.Text)) > 0 then
    begin
        itemstr := Trim(editTable.Text);
        if lstTableContents.Items.IndexOf(itemstr) < 0 then
            lstTableContents.items.Add(itemstr);
    end;

    if chkClearAfterAdd.Checked = True then
       editTable.Clear();

    editTable.SetFocus(); // very convenient if one needs to add many objects

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnCloseClick(Sender: TObject);
begin
    ApplyTableChanges();
    SendTableDataBack();
    Close();
end;

procedure TfrmTableEdit.btnDeleteClick(Sender: TObject);
begin
    var LastSelIndex: Integer;

    if (lstTableContents.ItemIndex <> -1) and (CanDeleteItem(lstTableContents.Items[lstTableContents.ItemIndex])) = true then
    begin
        if MessageDlg(strAskDeleteTableItem, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            LastSelIndex := lstTableContents.ItemIndex;
            lstTableContents.Items.Delete(lstTableContents.ItemIndex);

            if LastSelIndex < lstTableContents.Count then
                lstTableContents.ItemIndex := LastSelIndex
                else
            lstTableContents.ItemIndex := lstTableContents.Count -1;
        end;
    end;

    UpdateButtonsState();

    frmMain.bFileModified := True;
end;

procedure TfrmTableEdit.btnDeleteUnusedClick(Sender: TObject);
begin
    if MessageDlg(strAskRemoveUnused, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        CleanupCurrentTable(TableMode);
end;

procedure TfrmTableEdit.btnEditClick(Sender: TObject);
begin
//    var ItemIdx := lstTableContents.ItemIndex;

{
    case TableMode of     //Don't allow renaming table item if it in use.
        TM_ActorsPawns:
        if CheckActorIsUsed(lstTableContents.Items[ItemIdx]) = true then
        begin
            MessageDlg(strCannotRenameTableItem,  mtWarning, [mbOK], 0);
            Exit();
        end;

        TM_Flags:
        if CheckFlagIsUsed(lstTableContents.Items[ItemIdx]) = true then
        begin
            MessageDlg(strCannotRenameTableItem,  mtWarning, [mbOK], 0);
            Exit();
        end;

        TM_Skills:
        if CheckSkillIsUsed(lstTableContents.Items[ItemIdx]) = true then
        begin
            MessageDlg(strCannotRenameTableItem,  mtWarning, [mbOK], 0);
            Exit();
        end;

        TM_Objects:
        if CheckObjectIsUsed(lstTableContents.Items[ItemIdx]) = true then
        begin
            MessageDlg(strCannotRenameTableItem,  mtWarning, [mbOK], 0);
            Exit();
        end;
    end;}

    case TableMode of
      TM_ActorsPawns: frmEditValue.lblText.Caption := strActorPawn;
      TM_Flags:       frmEditValue.lblText.Caption := strFlagName;
      TM_Skills:      frmEditValue.lblText.Caption := strSkillName;
      TM_Objects:     frmEditValue.lblText.Caption := strObjectName;
    end;

    frmMain.SendStringToEditValue(lstTableContents);
end;

procedure TfrmTableEdit.btn_CustomClassListClick(Sender: TObject);
begin
    BuildCustomMenu(); // Create only when button is clicked

    // Convert button coordinates to screen coordinates
    var TempPoint  := Point(btn_CustomClassList.Left, btn_CustomClassList.Top + btn_CustomClassList.Height);
    var FinalPoint := ClientToScreen(TempPoint);

    CustomItemsPopup.Popup(FinalPoint.X, FinalPoint.Y);
end;

procedure TfrmTableEdit.editTableChange(Sender: TObject);
begin
    btnAddItem.Enabled := Length(Trim(editTable.Text)) > 0;
end;

procedure TfrmTableEdit.editTableKeyPress(Sender: TObject; var Key: Char); // only FName
begin
    FilterEditInput(key);
end;

procedure TfrmTableEdit.edtSearchInTableChange(Sender: TObject);
begin
    lstTableContents.MultiSelect := True;

    lstTableContents.Items.BeginUpdate();

    try
        lstTableContents.ClearSelection();

        for var i:= 0 to lstTableContents.Items.Count -1 do
        begin
            if Pos(UpperCase(edtSearchInTable.Text), UpperCase(lstTableContents.Items[i])) > 0 then
                lstTableContents.Selected[i] := True;
        end;
    finally
        lstTableContents.Items.EndUpdate();
    end;
end;

procedure TfrmTableEdit.Exportlistcontentstofile1Click(Sender: TObject);
begin
    var TextFileName: string;

    if ExportListDialog.Execute() = True then
    begin
        TextFileName := ExportListDialog.FileName;

        if (ExportListDialog.FileTypeIndex = 1) and (ExtractFileExt(TextFileName) = '') then
            TextFileName := TextFileName + '.txt';

        lstTableContents.Items.SaveToFile(TextFileName, TEncoding.ANSI);
    end;
end;

procedure TfrmTableEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if frmFlagList.Visible = true then
        frmFlagList.FillFlagsList(); // Update flags list

    if frmConvoProperties.Visible = True then
        frmConvoProperties.editConvoNameChange(self);
end;

procedure TfrmTableEdit.FormShow(Sender: TObject); // присвоить заголовок
begin
    case TableMode of
      TM_ActorsPawns: Caption := strActorsPawns;
      TM_Flags:       Caption := strFlags;
      TM_Skills:      Caption := strSkills;
      TM_Objects:     Caption := strObjects;
    end;

    if TableItemReceiver <> nil then // На случай если окно открыто из меню.
        Caption := Caption + ' [' + TableItemReceiver.Owner.ToString + '.' + TableItemReceiver.Name + ']';

    // select item from combobox
    if TableItemReceiver is TComboBox then
    begin
        var itemIdx := TComboBox(TableItemReceiver).ItemIndex;
        var tempStr := TComboBox(TableItemReceiver).Items[itemIdx];

        for var i := 0 to lstTableContents.Count -1 do
        begin
            if lstTableContents.Items[i] = tempStr then
            begin
                lstTableContents.ItemIndex := i;
                Break;
            end;
        end;
    end;

    // в очередной раз проверить кнопки.
    UpdateButtonsState();
    edtTableItemsCounter.Text := 'NumItems: ' + lstTableContents.Count.ToString();
end;

procedure TfrmTableEdit.ListContentsPopupPopup(Sender: TObject);
begin
    if lstTableContents.ItemIndex <> -1 then
        Copytoclipboard1.Enabled := True;

    CopylistcontentstoClipboard1.Enabled := lstTableContents.Items.Count > 0;
    Exportlistcontentstofile1.Enabled := lstTableContents.Items.Count > 0;
end;

procedure TfrmTableEdit.UpdateButtonsState(); // блокировать/разблокировать кнопки в зависимости от...
begin
    btnDeleteUnused.Enabled := lstTableContents.Count > 0;
    btnDelete.Enabled := lstTableContents.ItemIndex <> -1;
    btnEdit.Enabled := lstTableContents.ItemIndex <> -1;


    btnAddDefSkills.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Skills);
    btnAddDefSkills.Visible := TableMode = TM_Skills;

    // Objects (Weapons, food, etc.)
    btnAddDef_LR_Weapons.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_LongRange);
    btnAddDef_LR_Weapons.Visible := TableMode = TM_Objects;

    btnAddDef_CR_weapons.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_CloseRange);
    btnAddDef_CR_weapons.Visible := TableMode = TM_Objects;

    btnAddDefGrenades.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Grenades);
    btnAddDefGrenades.Visible := TableMode = TM_Objects;

    btnAddDefMiscItems.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_MiscItems);
    btnAddDefMiscItems.Visible := TableMode = TM_Objects;

    btnAddDefInfolinkNames.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Infolink_Names);
    btnAddDefInfolinkNames.Visible := TableMode = TM_ActorsPawns;
end;

procedure TfrmTableEdit.lstTableContentsClick(Sender: TObject);
begin
    edtTableItemsCounter.Text := 'NumItems: ' + lstTableContents.Count.ToString();

    lstTableContents.MultiSelect := False;
    UpdateButtonsState();
end;

procedure TfrmTableEdit.lstTableContentsDblClick(Sender: TObject); //dblClick list item
begin
    if chkDoubleClickEditItem.Checked = true then
    begin
        UpdateButtonsState();
        if (btnEdit.Enabled = True) then btnEditClick(btnEdit);
    end
    else
    begin
        ApplyTableChanges();
        SendTableDataBack();
        Close();
    end;
end;

procedure TfrmTableEdit.lstTableContentsEnter(Sender: TObject);
begin
    UpdateButtonsState();
end;

procedure TfrmTableEdit.lstTableContentsExit(Sender: TObject);
begin
    UpdateButtonsState();
end;

procedure TfrmTableEdit.lstTableContentsKeyPress(Sender: TObject; var Key: Char);
begin
    UpdateButtonsState();
end;

procedure TfrmTableEdit.RenameActor(renameFrom, renameTo: string);
begin
    with frmMain do
    begin
        for var con in ConversationsList do
        begin
            if con.conOwnerName = renameFrom then // rename conversation owner
                con.conOwnerName := renameTo;

            for var item in ConvoTree.Items do // don't forget about tree...
            begin
                if (item.Level = 0) and (item.Text = renameFrom) then
                    item.Text := renameTo;
            end;

            for var Event in con.Events do // owner actor...
            begin
                if Event is TConEventSpeech then
                begin
                    if TConEventSpeech(Event).ActorValue = renameFrom then
                        TConEventSpeech(Event).ActorValue := renameTo;

                    if TConEventSpeech(Event).ActorToValue = renameFrom then
                        TConEventSpeech(Event).ActorToValue := renameTo;
                end;

                if Event is TConEventTransferObject then
                begin
                    if TConEventTransferObject(Event).ActorFromValue = renameFrom then
                        TConEventTransferObject(Event).ActorFromValue := renameTo;

                    if TConEventTransferObject(Event).ActorToValue = renameFrom then
                        TConEventTransferObject(Event).ActorToValue := renameTo;
                end;

                if Event is TConEventAnimation then
                begin
                    if TConEventAnimation(Event).ActorValue = renameFrom then
                        TConEventAnimation(Event).ActorValue := renameTo;
                end;

                if Event is TConEventTrade then
                begin
                    if TConEventTrade(Event).TradeActorValue = renameFrom then
                        TConEventTrade(Event).TradeActorValue := renameTo;
                end;
            end;
        end;
    end;
end;

procedure TfrmTableEdit.RenameFlag(renameFrom, renameTo: string);
begin
    with frmMain do
    begin
        for var con in ConversationsList do
        begin
            for var item in ConvoTree.Items do // Rename ConvoTree Item
            begin
                if (item.Level = 2) and (item.Text.StartsText(renameFrom, item.Text)) then
                begin
                    var posEquals := Pos(' = ', item.Text);
                    if posEquals > 0 then
                    begin
                        var prefix := Copy(item.Text, 1, posEquals - 1);
                        if prefix = renameFrom then
                            item.Text := StringReplace(item.Text, renameFrom, renameTo, []);
                    end;
                end;
            end;

            for var i := 0 to High(con.conDependsOnFlags) do // Rename flag in conDependsOnFlags
            begin
                if con.conDependsOnFlags[i].flagName = renameFrom then
                    con.conDependsOnFlags[i].flagName := renameTo;
            end;

            for var Event in con.Events do // Rename in Events
            begin
                if Event is TConEventChoice then
                begin
                    for var chi in TConEventChoice(Event).Choices do
                    begin
                        for var i := 0 to High(chi.RequiredFlags) do
                        begin
                            if chi.RequiredFlags[i].flagName = renameFrom then
                                chi.RequiredFlags[i].flagName := renameTo;
                        end;
                    end;
                end;

                if Event is TConEventSetFlag then
                begin
                    for var i := 0 to High(TConEventSetFlag(Event).SetFlags) do
                    begin
                        if TConEventSetFlag(Event).SetFlags[i].flagName = renameFrom then
                            TConEventSetFlag(Event).SetFlags[i].flagName := renameTo;
                    end;
                end;

                if Event is TConEventCheckFlag then
                begin
                    for var i := 0 to High(TConEventCheckFlag(Event).FlagsToCheck) do
                    begin
                        if TConEventCheckFlag(Event).FlagsToCheck[i].flagName = renameFrom then
                            TConEventCheckFlag(Event).FlagsToCheck[i].flagName := renameTo;
                    end;
                end;
            end;
        end;
    end;
end;

procedure TfrmTableEdit.RenameObject(renameFrom, renameTo: string);
begin
    with frmMain do
    begin
        for var con in ConversationsList do
        begin
            for var Event in con.Events do // Rename in Events
            begin
                if Event is TConEventCheckObject then
                begin
                    if TConEventCheckObject(Event).ObjectValue = renameFrom then
                        TConEventCheckObject(Event).ObjectValue := renameTo;
                end;

                if Event is TConEventTransferObject then
                begin
                    if TConEventTransferObject(Event).ObjectValue = renameFrom then
                        TConEventTransferObject(Event).ObjectValue := renameTo;
                end;
            end;
        end;
    end;
end;

procedure TfrmTableEdit.RenameSkill(renameFrom, renameTo: string);
begin
    with frmMain do
    begin
        for var con in ConversationsList do
        begin
            for var Event in con.Events do // Rename in Events
            begin
                if Event is TConEventChoice then
                begin
                    for var chi in TConEventChoice(Event).Choices do
                    begin
                        if chi.bSkillNeeded <> -1 then
                            if chi.Skill = renameFrom then
                                chi.Skill := renameTo;
                    end;
                end;
            end;
        end;
    end;
end;

function TfrmTableEdit.CanDeleteItem(item: String): boolean;
begin
    case TableMode of
        TM_ActorsPawns:
        begin
            if CheckActorIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        TM_Flags:
        begin
            if CheckFlagIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        TM_Skills:
        begin
            if CheckSkillIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        TM_Objects:
        begin
            if CheckObjectIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;
    end;

    Result := False;
end;

procedure TfrmTableEdit.CustomItem1Click(Sender: TObject);
var
    UseText, TextB4Tab: string;
begin
    UseText := (Sender as TMenuItem).Caption;

    var TabIndex := Pos(#9, UseText); // find position of Tab char

    if TabIndex = 0 then
        TextB4Tab := UseText // no Tab char, so use whole caption
    else
        TextB4Tab := Copy(UseText, 1, TabIndex -1);

    editTable.Text := TextB4Tab;
    btnAddItemClick(self);
end;

procedure TfrmTableEdit.SaveAndRestoreComboBoxSelection(cmb: TComboBox; newItems: TStrings);
var
    savedValue: string;
    newIndex: Integer;
begin
    // Запоминаем текущий выбранный элемент как строку
    if cmb.ItemIndex >= 0 then
        savedValue := cmb.Items[cmb.ItemIndex]
    else
        savedValue := '';

    // Обновляем список
    cmb.Items.Assign(newItems);

    // Пытаемся восстановить выбранный элемент по строке
    if savedValue <> '' then
    begin
        newIndex := cmb.Items.IndexOf(savedValue);
        cmb.ItemIndex := newIndex;
    end
    else
        cmb.ItemIndex := 0; // -1 вызовет исключение, ставим нулевой Item
end;

procedure TfrmTableEdit.SendTableDataBack(); // Send data back to listbox, editbox, etc.
var
    idx, current: Integer;
begin
    current := lstTableContents.ItemIndex;
    if current = -1 then Exit();

    if TableItemreceiver is TListBox then
    begin
       idx := TListBox(TableItemreceiver).ItemIndex;
       TListBox(TableItemreceiver).Items[idx] := lstTableContents.Items[current];
    end;
    {else }
    if TableItemReceiver is TComboBox then
    begin
        var cmbReceiver := TComboBox(TableItemReceiver);

//        if cmbReceiver.Visible = True then
//            cmbReceiver.SetFocus();

        cmbReceiver.ItemIndex := cmbReceiver.Items.IndexOf(lstTableContents.Items[current]);
    end;
end;

procedure TfrmTableEdit.TableItemRenamed(renameFrom, renameTo: string);
begin
    if renameFrom = renameTo then
    begin
//        ShowMessage('Nothing to rename, items are same!');
        Exit();
    end;

    if lstTableContents.Items.IndexOf(renameTo) = -1 then
    begin
        lstTableContents.Items[lstTableContents.ItemIndex] := renameTo;
    end
    else
    begin
        MessageDlg('The item name already exists.', mtWarning, [mbOK], 0);
        lstTableContents.Items[lstTableContents.ItemIndex] := renameFrom; // set value back to previous
        Exit();
    end;


    case TableMode of
        TM_ActorsPawns: RenameActor(renameFrom, renameTo);
        TM_Flags:       RenameFlag(renameFrom, renameTo);
        TM_Skills:      RenameSkill(renameFrom, renameTo);
        TM_Objects:     RenameObject(renameFrom, renameTo);
    end;

    //ShowMessage('From: ' + renameFrom + ' To: ' + renameTo);
end;

procedure TfrmTableEdit.BuildCustomMenu();
var
    CustomClasses: TStringList;
begin
    CustomItemsPopup.Items.Clear(); // удалить ранее созданные элементы меню

    CustomClasses := TStringList.Create();
    try
        case TableMode of
            TM_ActorsPawns: CustomClasses.LoadFromFile(CUSTOM_CLASSES_ACTORS);
            TM_Flags:       CustomClasses.LoadFromFile(CUSTOM_CLASSES_FLAGS);
            TM_Skills:      CustomClasses.LoadFromFile(CUSTOM_CLASSES_SKILLS);
            TM_Objects:     CustomClasses.LoadFromFile(CUSTOM_CLASSES_OBJECTS);
        end;

        for var i:= 0 to CustomClasses.Count -1 do
        begin
            var line := CustomClasses.Strings[i];

            // skip empty lines
            if CustomClasses.Strings[i].IsEmpty then
                Continue;

            if CustomClasses.Strings[i] = '-' then begin
                var CustomMenuSeparator := TMenuItem.Create(CustomItemsPopup);

                CustomMenuSeparator.Caption := CustomClasses.Strings[i];
                CustomItemsPopup.Items.Add(CustomMenuSeparator);
                Continue;
            end;

            // now split the line
            var parts := TStringList.Create();

            try
                parts.Delimiter := ';';
                parts.StrictDelimiter := True;
                parts.DelimitedText := line;

                var CustomMenuItem := TMenuItem.Create(CustomItemsPopup);

                if parts.Count > 1 then
                    CustomMenuItem.Caption := parts[0] + #9 + parts[1]
                else
                    CustomMenuItem.Caption := parts[0]; // allow using only name, without ;description

                // OnClick event handler...
                CustomMenuItem.OnClick := CustomItem1Click;

                // Add to menu
                CustomItemsPopup.Items.Add(CustomMenuItem);
            finally
                parts.Free(); // free memory
            end;
        end;

    finally
        CustomClasses.Free();
    end;
end;

procedure TfrmTableEdit.CleanupCurrentTable(aTableMode: TTableMode);
begin
    var tempList := TStringList.Create();

    case aTableMode of
      TM_ActorsPawns:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckActorIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg(strNothingToDelete,  mtInformation, [mbOK], 0);
                tempList.Free();
                Exit();
            end;

            var listString := '';

            for var j:= 0 to tempList.Count -1 do
                listString := listString + tempList.Strings[j] + #13#10;

            if MessageDlg(strAskUnusedActorsDelete + listString + strAskDeleteEntries,  mtConfirmation, mbOKCancel, 0) = mrOk then
               for var e:= 0 to tempList.Count -1 do
                  lstTableContents.Items.Delete(lstTableContents.Items.IndexOf(tempList[e]));
        end;

      TM_Flags:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckFlagIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg(strNothingToDelete,  mtInformation, [mbOK], 0);
                tempList.Free();
                Exit();
            end;

            var listString := '';

            for var j:= 0 to tempList.Count -1 do
                listString := listString + tempList.Strings[j] + #13#10;

            if MessageDlg(strAskUnusedFlagsDelete + listString + strAskDeleteEntries,  mtConfirmation, mbOKCancel, 0) = mrOk then
               for var e:= 0 to tempList.Count -1 do
                  lstTableContents.Items.Delete(lstTableContents.Items.IndexOf(tempList[e]));
        end;

      TM_Skills:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckSkillIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg(strNothingToDelete,  mtInformation, [mbOK], 0);
                tempList.Free();
                Exit();
            end;

            var listString := '';

            for var j:= 0 to tempList.Count -1 do
                listString := listString + tempList.Strings[j] + #13#10;

            if MessageDlg(strAskUnusedSkillsDelete + listString + strAskDeleteEntries,  mtConfirmation, mbOKCancel, 0) = mrOk then
               for var e:= 0 to tempList.Count -1 do
                  lstTableContents.Items.Delete(lstTableContents.Items.IndexOf(tempList[e]));
        end;

      TM_Objects:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckObjectIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg(strNothingToDelete,  mtInformation, [mbOK], 0);
                tempList.Free();
                Exit();
            end;

            var listString := '';

            for var j:= 0 to tempList.Count -1 do
                listString := listString + tempList.Strings[j] + #13#10;

            if MessageDlg(strAskUnusedObjectsDelete + listString + strAskDeleteEntries,  mtConfirmation, mbOKCancel, 0) = mrOk then
               for var e:= 0 to tempList.Count -1 do
                  lstTableContents.Items.Delete(lstTableContents.Items.IndexOf(tempList[e]));

        end;
    end;

    frmMain.bFileModified := True;

    tempList.Free();
end;


procedure TfrmTableEdit.CopylistcontentstoClipboard1Click(Sender: TObject);
begin
    if lstTableContents.Items.Count > 0 then
        Clipboard.AsText := lstTableContents.Items.Text;
end;

procedure TfrmTableEdit.Copytoclipboard1Click(Sender: TObject);
begin
    ClipBoard.AsText := lstTableContents.Items[lstTableContents.ItemIndex];
end;

end.
