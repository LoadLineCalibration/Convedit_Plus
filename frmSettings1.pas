unit frmSettings1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, MainWindow;

type
  TfrmSettings = class(TForm)
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtUserName: TEdit;
    edtConFilePath: TEdit;
    edtConFileBakPath: TEdit;
    edtAudioPath: TEdit;
    chkExpandFlagsOnExpandAll: TCheckBox;
    chkAskConversationDelete: TCheckBox;
    chkAskDeleteEvent: TCheckBox;
    chkHighlightspeecvhChoiceEventsNoneAudio: TCheckBox;
    chkSelectionGradientFill: TCheckBox;
    btnBrowseConFilePath: TButton;
    btnBrowseBakConFilePath: TButton;
    btnBrowseConAudioPath: TButton;
    shpHighlightColorFrom: TShape;
    shpHighlightColorTo: TShape;
    shpHighlightColorSingle: TShape;
    dlgColor1: TColorDialog;
    txt1: TStaticText;
    btnOk: TButton;
    btnCancel: TButton;
    btnClearLastFiles: TButton;
    txt2: TStaticText;
    chkFlatControlsMainWin: TCheckBox;

    // new procedures
    procedure SaveApplyChanges();

    procedure chkSelectionGradientFillClick(Sender: TObject);
    procedure shpHighlightColorFromMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure shpHighlightColorToMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure shpHighlightColorSingleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

{$R *.dfm}


procedure TfrmSettings.SaveApplyChanges();
begin
  with frmMain do begin
     mainToolBar.Flat := chkFlatControlsMainWin.Checked;
     if chkFlatControlsMainWin.Checked then
        HeaderControl1.Style := hsFlat else HeaderControl1.Style := hsButtons;
  end;
end;

procedure TfrmSettings.btnCancelClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmSettings.btnOkClick(Sender: TObject);
begin
    SaveApplyChanges();
end;

procedure TfrmSettings.chkSelectionGradientFillClick(Sender: TObject);
begin
    shpHighlightColorSingle.Visible := not chkSelectionGradientFill.Checked;
    shpHighlightColorFrom.Visible := chkSelectionGradientFill.Checked;
    shpHighlightColorTo.Visible := chkSelectionGradientFill.Checked;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
    chkSelectionGradientFillClick(self);
end;

procedure TfrmSettings.shpHighlightColorFromMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if (dlgColor1.Execute() = true) then
    begin
        shpHighlightColorFrom.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpHighlightColorSingleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if (dlgColor1.Execute() = true) then
    begin
        shpHighlightColorSingle.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpHighlightColorToMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if (dlgColor1.Execute() = true) then
    begin
        shpHighlightColorTo.Brush.Color := dlgColor1.Color;
    end;
end;

end.
