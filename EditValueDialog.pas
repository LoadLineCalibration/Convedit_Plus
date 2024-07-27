unit EditValueDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ConEditPlus.Helpers;

type
  TfrmEditValue = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;
    Panel1: TPanel;
    editValue: TEdit;
    lblText: TLabel;
    procedure SendDataBack();
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure editValueKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Receiver: TControl;
    { Public declarations }
  end;

var
  frmEditValue: TfrmEditValue;

implementation

{$R *.dfm}

uses AddInsertEvent, ConvoProperties, MainWindow, Table;

procedure TfrmEditValue.btnOkClick(Sender: TObject);
begin
    SendDataBack();
end;

procedure TfrmEditValue.editValueKeyPress(Sender: TObject; var Key: Char);
begin
    FilterEditInput(key);
end;

procedure TfrmEditValue.FormShow(Sender: TObject);
begin
    Caption := 'Value for: [' + receiver.Name + ']';
end;

procedure TfrmEditValue.SendDataBack();
var
    idx: Integer;
begin
   if Receiver is TListBox then
   begin
       idx:=TListBox(Receiver).ItemIndex;

        if Receiver.Owner.Name = 'frmTableEdit' then
        begin
            frmTableEdit.TableItemRenamed(TListBox(Receiver).Items[idx], editValue.Text); // notify the Table editor
            Exit(); // «десь всЄ, дальше там.
        end;

       TListBox(Receiver).Items[idx] := editValue.Text;
   end;
end;

end.
