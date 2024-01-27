unit AboutBox1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ES.Labels, Winapi.MMSystem;

type
  TfrmAbout = class(TForm)
    btnOk: TButton;
    EsLinkLabel1: TEsLinkLabel;
    Label1: TLabel;
    Memo1: TMemo;
    EsLinkLabel2: TEsLinkLabel;
    edtVersion: TEdit;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    clickCount: Integer;
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

uses MainWindow;

procedure TfrmAbout.btnOkClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmAbout.FormClick(Sender: TObject);
begin
    Inc(clickCount);
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
    for var i:= 0 to frmAbout.ControlCount -1 do
    begin
        if frmAbout.Controls[i] is TEsLinkLabel then
            TEsLinkLabel(frmAbout.Controls[i]).Hint := TEsLinkLabel(frmAbout.Controls[i]).Url;
    end;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
    edtVersion.Text := ' [version ' + frmMain.GetAppVersionStr() +']';
end;

end.
