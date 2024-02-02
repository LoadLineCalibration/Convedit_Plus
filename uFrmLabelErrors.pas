unit uFrmLabelErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmLabelErrors = class(TForm)
    lvLabelErrors: TListView;
    Label1: TLabel;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabelErrors: TfrmLabelErrors;

implementation

{$R *.dfm}

procedure TfrmLabelErrors.btnCloseClick(Sender: TObject);
begin
    frmLabelErrors.Close();
end;

procedure TfrmLabelErrors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    lvLabelErrors.Items.Clear();
end;

end.
