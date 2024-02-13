unit Table;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Conversation.Classes, AddInsertEvent,
  ConvEditPlus.Consts, ConvoProperties, EditValueDialog, Vcl.Menus, system.Types, convEditPlus.Enums,
  system.UITypes;

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

uses MainWindow, frmFlagList1, ConvEditPlus_Util;


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
        tmActorsPawns:
        begin
            frmMain.listPawnsActors.Assign(lstTableContents.Items);

            if frmConvoProperties.Visible = True then
            begin
                frmConvoProperties.cmbConvoOwner.Items.Assign(lstTableContents.Items);
            end;

            if frmEventInsAdd.Visible = True then
            begin
                frmEventInsAdd.cmbSpeakingFrom.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbSpeakingTo.Items.Assign(lstTableContents.Items);

                frmEventInsAdd.cmbTransferObjectTo.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbTransferObjectFrom.Items.Assign(lstTableContents.Items);

                frmEventInsAdd.cmbPawnToAnimate.Items.Assign(lstTableContents.Items);
            end;
        end;

        tmFlags:
        begin
            frmMain.listFlags.Assign(lstTableContents.Items);
        end;

        tmSkills:
        begin
            frmMain.listSkills.Assign(lstTableContents.Items);
        end;

        tmObjects:
        begin
            frmMain.listObjects.Assign(lstTableContents.Items);

            if frmEventInsAdd.Visible = True then
            begin
                frmEventInsAdd.cmbObjectToCheck.Items.Assign(lstTableContents.Items);
                frmEventInsAdd.cmbObjectToTransfer.Items.Assign(lstTableContents.Items);
            end;
        end;
    end;
end;

procedure TfrmTableEdit.btnAddDefGrenadesClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefaultGrenadesQuestion), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
    begin
       for var i:= 0 to Length(Default_DeusEx_Grenades) -1 do
           lstTableContents.items.Add(Default_DeusEx_Grenades[i]);

        btnAddDefGrenades.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDefInfolinkNamesClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefInfoLinkNamesQuestion), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
    begin
       for var i:= 0 to Length(Default_DeusEx_Infolink_Names) -1 do
           lstTableContents.items.Add(Default_DeusEx_Infolink_Names[i]);

        btnAddDefInfolinkNames.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDefMiscItemsClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefaultMiscItemsQuestion), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
    begin

       for var i:= 0 to Length(Default_DeusEx_MiscItems) -1 do
           lstTableContents.items.Add(Default_DeusEx_MiscItems[i]);

        btnAddDefMiscItems.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDefSkillsClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefaultSkillsQuestion), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
    begin
       for var i:= 0 to Length(Default_DeusEx_Skills) -1 do
           lstTableContents.items.Add(Default_DeusEx_Skills[i]);

        btnAddDefSkills.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDef_CR_weaponsClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefaultCloseRangeWeapons), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then begin

       for var i:= 0 to Length(Default_DeusEx_CloseRange) -1 do
           lstTableContents.items.Add(Default_DeusEx_CloseRange[i]);

        btnAddDef_CR_weapons.Enabled := False;
    end;
end;

procedure TfrmTableEdit.btnAddDef_LR_WeaponsClick(Sender: TObject);
begin
    if Application.MessageBox(PChar(strAddDefaultFirearmsQuestion), '', MB_OKCANCEL +
       MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
    begin

       for var i:= 0 to Length(Default_DeusEx_LongRange) -1 do
           lstTableContents.items.Add(Default_DeusEx_LongRange[i]);

        btnAddDef_LR_Weapons.Enabled := False;
    end;
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
end;

procedure TfrmTableEdit.btnDeleteUnusedClick(Sender: TObject);
begin
    if MessageDlg(strAskRemoveUnused, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        CleanupCurrentTable(TableMode);
end;

procedure TfrmTableEdit.btnEditClick(Sender: TObject);
begin
    case TableMode of
      tmActorsPawns: frmEditValue.lblText.Caption := strActorPawn;
      tmFlags:       frmEditValue.lblText.Caption := strFlagName;
      tmSkills:      frmEditValue.lblText.Caption := strSkillName;
      tmObjects:     frmEditValue.lblText.Caption := strObjectName;
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
      tmActorsPawns: Caption := strActorsPawns;
      tmFlags:       Caption := strFlags;
      tmSkills:      Caption := strSkills;
      tmObjects:     Caption := strObjects;
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
end;

procedure TfrmTableEdit.UpdateButtonsState(); // блокировать/разблокировать кнопки в зависимости от...
begin
    btnDeleteUnused.Enabled := lstTableContents.Count > 0;
    btnDelete.Enabled := lstTableContents.ItemIndex <> -1;
    btnEdit.Enabled := lstTableContents.ItemIndex <> -1;


    btnAddDefSkills.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Skills);
    btnAddDefSkills.Visible := TableMode = tmSkills;

    // Objects (Weapons, food, etc.)
    btnAddDef_LR_Weapons.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_LongRange);
    btnAddDef_LR_Weapons.Visible := TableMode = tmObjects;

    btnAddDef_CR_weapons.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_CloseRange);
    btnAddDef_CR_weapons.Visible := TableMode = tmObjects;

    btnAddDefGrenades.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Grenades);
    btnAddDefGrenades.Visible := TableMode = tmObjects;

    btnAddDefMiscItems.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_MiscItems);
    btnAddDefMiscItems.Visible := TableMode = tmObjects;

    btnAddDefInfolinkNames.Enabled := not ListBoxContainsItem(lstTableContents, Default_DeusEx_Infolink_Names);
    btnAddDefInfolinkNames.Visible := TableMode = tmActorsPawns;
end;

procedure TfrmTableEdit.lstTableContentsClick(Sender: TObject);
begin
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

function TfrmTableEdit.CanDeleteItem(item: String): boolean;
begin
    case TableMode of
        tmActorsPawns:
        begin
            if CheckActorIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        tmFlags:
        begin
            if CheckFlagIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        tmSkills:
        begin
            if CheckSkillIsUsed(item) = True then
            begin
                MessageDlg(strCannotDeleteTableItem, mtWarning, [mbOK], 0);
                Exit(False);
            end
            else
                Exit(True);
        end;

        tmObjects:
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
    {else }if TableItemReceiver is TComboBox then
    begin
        var cmbReceiver := TComboBox(TableItemReceiver);

        cmbReceiver.SetFocus();
        cmbReceiver.ItemIndex := cmbReceiver.Items.IndexOf(lstTableContents.Items[current]);
    end;
end;

procedure TfrmTableEdit.BuildCustomMenu();
var
    CustomClasses: TStringList;
begin
    CustomItemsPopup.Items.Clear(); // удалить ранее созданные элементы меню

    CustomClasses := TStringList.Create();
try
    case TableMode of
        tmActorsPawns: CustomClasses.LoadFromFile(CUSTOM_CLASSES_ACTORS);
        tmFlags:       CustomClasses.LoadFromFile(CUSTOM_CLASSES_FLAGS);
        tmSkills:      CustomClasses.LoadFromFile(CUSTOM_CLASSES_SKILLS);
        tmObjects:     CustomClasses.LoadFromFile(CUSTOM_CLASSES_OBJECTS);
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
                CustomMenuItem.Caption := parts[0] + #9 + parts[1];

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
      tmActorsPawns:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckActorIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg('Nothing to delete!',  mtInformation, [mbOK], 0);
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

      tmFlags:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckFlagIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg('Nothing to delete!',  mtInformation, [mbOK], 0);
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

      tmSkills:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckSkillIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg('Nothing to delete!',  mtInformation, [mbOK], 0);
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

      tmObjects:
        begin
            for var i:= 0 to lstTableContents.Items.Count -1 do
                if CheckObjectIsUsed(lstTableContents.Items[i]) = False then
                    tempList.Add(lstTableContents.Items[i]);

            if tempList.Count = 0 then
            begin
                MessageDlg('Nothing to delete!',  mtInformation, [mbOK], 0);
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

    tempList.Free();
end;


end.
