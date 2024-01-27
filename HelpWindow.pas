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
    btnZoom100: TButton;
    btnZoom125: TButton;
    btnZoom150: TButton;
    btnZoom175: TButton;
    btnZoom200: TButton;
    btnZoom75: TButton;
    // new procedures
    procedure LoadHelpResource(topic: string);
    procedure btnCloseClick(Sender: TObject);
    procedure btnZoom100Click(Sender: TObject);
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
{$R HelpResources.res}  // <---- your resource file!

procedure TfrmHelp.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmHelp.btnZoom100Click(Sender: TObject);
begin
    if TButton(Sender) <> nil then
    begin
       redtHelpContents.Zoom := 100; // bug?
       redtHelpContents.Zoom := TButton(Sender).Tag;
       memorizedScale := TButton(Sender).Tag;
    end;
end;

procedure TfrmHelp.LoadHelpResource(topic: string);
var rs: TResourceStream;
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
