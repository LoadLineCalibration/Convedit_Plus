unit frmFind1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFind = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbbFindWhat: TComboBox;
    cbbFindInEvents: TComboBox;
    btnFind: TButton;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    rbAllConvos: TRadioButton;
    rbCurrentConvo: TRadioButton;
    chkFindWholeWordOnly: TCheckBox;
    chkMatchCase: TCheckBox;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFind: TfrmFind;

implementation

{$R *.dfm}

procedure TfrmFind.btnCloseClick(Sender: TObject);
begin
    Close();
end;

end.
