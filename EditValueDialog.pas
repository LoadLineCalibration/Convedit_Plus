unit EditValueDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
    receiver: TControl;
    { Public declarations }
  end;

var
  frmEditValue: TfrmEditValue;

implementation

{$R *.dfm}

uses AddInsertEvent, ConvoProperties, MainWindow, Table, ConvEditPlus_Util;

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
    var idx: Integer;
begin
   if receiver is TListBox then
   begin
       idx:=TListBox(receiver).ItemIndex;
       TListBox(receiver).Items[idx] := editValue.Text;
   end;
end;

end.
