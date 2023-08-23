unit Table;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AddInsertEvent, ConvEditPlus_Const,
  ConvoProperties, EditValueDialog;


type // Перечисление режимов работы с таблицами
  TTableMode = (tmActorsPawns, tmFlags, tmSkills, tmObjects);

type
  TfrmTableEdit = class(TForm)
    lstTableContents: TListBox;
    editTable: TEdit;
    btnAddItem: TButton;
    Panel1: TPanel;
    btnEdit: TButton;
    btnDelete: TButton;
    btnDeleteUnused: TButton;
    btnClose: TButton;
    chkClearAfterAdd: TCheckBox;
    chkDoubleClickEditItem: TCheckBox;
    btnImport: TButton;
    btnExport: TButton;
    
    // new procedures/functions
    function CanDeleteItem(item: String): boolean;
    procedure UpdateButtonsState();
    procedure ApplyTableChanges();
    procedure SendTableDataBack();
    procedure UpdateFlags();

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
    procedure FormCreate(Sender: TObject);
    procedure lstTableContentsDblClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
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

uses MainWindow;

procedure TfrmTableEdit.UpdateFlags();
begin
    //
end;

procedure TfrmTableEdit.ApplyTableChanges();
begin
  case TableMode of
    tmActorsPawns:  frmMain.listPawnsActors.Assign(lstTableContents.Items);
    tmFlags:        frmMain.listFlags.Assign(lstTableContents.Items);
    tmSkills:       frmMain.listSkills.Assign(lstTableContents.Items);
    tmObjects:      frmMain.listObjects.Assign(lstTableContents.Items);
  end;
end;

// Добавить элемент в один из списков. Также не допустить повторов.
procedure TfrmTableEdit.btnAddItemClick(Sender: TObject);
var itemstr: string;
begin
    if Length(Trim(editTable.Text)) > 0 then
    begin
        itemstr := Trim(editTable.Text);
        if lstTableContents.Items.IndexOf(itemstr) < 0 then
           lstTableContents.items.Add(itemstr);
            //lstTableContents.items.Insert(0,item);
    end;

    if chkClearAfterAdd.Checked = True then
       editTable.Clear();

    editTable.SetFocus(); // very convenient if one needs to add many objects
end;

procedure TfrmTableEdit.btnCloseClick(Sender: TObject);
begin
    ApplyTableChanges();
    Close();
end;

procedure TfrmTableEdit.btnDeleteClick(Sender: TObject);
    var LastSelIndex: Integer;
begin
    if (lstTableContents.ItemIndex <> -1) and (CanDeleteItem(lstTableContents.Items[lstTableContents.ItemIndex])) = true
        then
        begin
           LastSelIndex := lstTableContents.ItemIndex;
           lstTableContents.Items.Delete(lstTableContents.ItemIndex);
           if LastSelIndex < lstTableContents.Count then
               lstTableContents.ItemIndex := LastSelIndex
               else
           lstTableContents.ItemIndex := lstTableContents.Count -1;
        end;

    UpdateButtonsState();
end;

procedure TfrmTableEdit.btnDeleteUnusedClick(Sender: TObject);
begin
if Application.MessageBox(PChar(strAskRemoveUnused),PChar(strAskRemoveUnusedTitle),
   MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    //
  end;
end;

procedure TfrmTableEdit.btnEditClick(Sender: TObject);
begin
    case TableMode of
      tmActorsPawns: frmEditValue.lblText.Caption := 'Actor/Pawn:';
      tmFlags:       frmEditValue.lblText.Caption := 'Flag Name:';
      tmSkills:      frmEditValue.lblText.Caption := 'Skill Name:';
      tmObjects:     frmEditValue.lblText.Caption := 'Object Name:';
    end;
    
    frmMain.SendStringToEditValue(lstTableContents);
end;

procedure TfrmTableEdit.btnExportClick(Sender: TObject);
begin
  if Application.MessageBox('The Export operation allows you to save contents from current table into .txt file.' + #13#10 +
    'Do you want to continue?',
    'Not implemented yet', MB_YESNO + MB_ICONINFORMATION + MB_TOPMOST) = IDYES then
    begin
      //
    end;
end;

procedure TfrmTableEdit.btnImportClick(Sender: TObject);
begin
  if Application.MessageBox('The Import operation allows you to add contents from .txt file into the list.' + #13#10 +
    'The file must contain one item per string. Type of data is Unreal FName, i.e. only characters from English ' +
    'alphabet, underscore and digits. FName should not start from digit(s).' + #13#10#13#10 + 'Do you want to continue?',
    'Not implemented yet', MB_YESNO + MB_ICONINFORMATION + MB_TOPMOST) = IDYES then
    begin
      //
    end;
end;

procedure TfrmTableEdit.editTableChange(Sender: TObject);
begin
    btnAddItem.Enabled := Length(Trim(editTable.Text)) > 0;
end;


// Тип данных FName, только англ. буквы, цифры и знак подчеркивания.
procedure TfrmTableEdit.editTableKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key in ['A'..'Z', 'a'..'z', '0'..'9', '_', #8] then
//  if CharInSet(Key, ['A'..'Z', 'a'..'z', '0'..'9', '_', #8]) then
//  else
//    Key := #0;
    FilterEditInput(key);
end;


procedure TfrmTableEdit.FormCreate(Sender: TObject);
begin

end;

// присвоить заголовок
procedure TfrmTableEdit.FormShow(Sender: TObject);
begin
    case TableMode of
      tmActorsPawns: Caption := strActorsPawns;
      tmFlags:       Caption := strFlags;
      tmSkills:      Caption := strSkills;
      tmObjects:     Caption := strObjects;
    end;

    if TableItemReceiver <> nil then // На случай если окно открыто из меню.
        Caption := Caption + ' [' + TableItemReceiver.Owner.ToString + '.' + TableItemReceiver.Name + ']';

    // в очередной раз проверить кнопки.
    UpdateButtonsState();
end;

// блокировать/разблокировать кнопки в зависимости от...
procedure TfrmTableEdit.UpdateButtonsState();
begin
    if (lstTableContents.ItemIndex <> -1) {or (lstTableContents.Items.Count > 0)} then
       btnEdit.Enabled := true else btnEdit.Enabled := false;

    if (lstTableContents.ItemIndex <> -1) {or (lstTableContents.Items.Count > 0)}  then
       btnDelete.Enabled := true else btnDelete.Enabled := false;
end;

procedure TfrmTableEdit.lstTableContentsClick(Sender: TObject);
begin
    UpdateButtonsState();
end;

// двойной клик по списку
procedure TfrmTableEdit.lstTableContentsDblClick(Sender: TObject);
begin
    if (chkDoubleClickEditItem.Checked = true) then 
    begin
        UpdateButtonsState();
        if (btnEdit.Enabled = True) then btnEditClick(btnEdit);    
    end else
        SendTableDataBack();

    if chkDoubleClickEditItem.Checked = false then
       btnCloseClick(btnClose);
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


// Пока так, в дальнейшем нужно проверять, ссылается ли данный объенкт на какое-то из событий.
function TfrmTableEdit.CanDeleteItem(item: String): boolean;
begin
   if Application.MessageBox('Are you sure you want to delete this item?',
    'Really delete table item?',
     MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES
   then
        result := true
   else
        result := false;
end;

// Send data back to listbox, editbox, etc.
procedure TfrmTableEdit.SendTableDataBack();
    var idx, current: Integer;
begin
    current := lstTableContents.ItemIndex;
    if current = -1 then Exit();
    
    if TableItemreceiver is TListBox then
    begin
       idx:=TListBox(TableItemreceiver).ItemIndex;
       TListBox(TableItemreceiver).Items[idx] := lstTableContents.Items[current];
    end 
    else if TableItemReceiver is TComboBox then
    begin
        TComboBox(TableItemreceiver).Text := lstTableContents.Items[current];
    end;
end;

end.
