unit HelpWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmHelp = class(TForm)
    pnl1: TPanel;
    redtHelpContents: TRichEdit;
    btnClose: TButton;
    cmbHelpTextScale: TComboBox;
    // new procedures
    procedure LoadHelpResource(topic: string);
    procedure btnCloseClick(Sender: TObject);
    procedure cmbHelpTextScaleChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    memorizedScale: Integer;
    { Public declarations }
  end;

var
  frmHelp: TfrmHelp;

implementation

{$R *.dfm}
{$R HelpResources.res} // help resources (rtf)

procedure TfrmHelp.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmHelp.cmbHelpTextScaleChange(Sender: TObject);
begin
    case cmbHelpTextScale.itemIndex of
        0: redtHelpContents.Zoom := 75; // 75%
        1: redtHelpContents.Zoom := 100; // 100%
        2: redtHelpContents.Zoom := 125; // 125%
        3: redtHelpContents.Zoom := 150; // 150%
    end;

end;

procedure TfrmHelp.FormShow(Sender: TObject);
begin
    cmbHelpTextScaleChange(self);
end;

procedure TfrmHelp.LoadHelpResource(topic: string);
var
    rs: TResourceStream;
begin
    rs := TResourceStream.Create(hinstance, topic, RT_RCDATA);

    try
        redtHelpContents.PlainText := False;
        rs.Position := 0;
        redtHelpContents.Lines.LoadFromStream(rs);
        redtHelpContents.ReadOnly := true;
        redtHelpContents.Zoom := 100;
        redtHelpContents.Zoom := memorizedScale; // Restore scale after loading new help resource.
    finally
        rs.Free();
    end;

    self.Show();
end;

end.
