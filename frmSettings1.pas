unit frmSettings1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, System.UITypes,
  Vcl.Samples.Spin, Conversation.Classes, ConEditPlus.Enums, ConEditPlus.Consts;

type
  TfrmSettings = class(TForm)
    lblUserName: TLabel;
    lblConversationsPath: TLabel;
    lblAudioPath: TLabel;
    lblAutoSavePath: TLabel;
    edtUserName: TEdit;
    edtConFilePath: TEdit;
    edtConFileBakPath: TEdit;
    edtAudioPath: TEdit;
    chkHighlightRelatedEvents: TCheckBox;
    chkAskConversationDelete: TCheckBox;
    chkAskDeleteEvent: TCheckBox;
    chkHighlightspeechChoiceEventsNoneAudio: TCheckBox;
    chkSelectEventsGradientFill: TCheckBox;
    btnBrowseConFilePath: TButton;
    btnBrowseBakConFilePath: TButton;
    btnBrowseConAudioPath: TButton;
    shpHighlightColorFrom: TShape;
    shpHighlightColorTo: TShape;
    shpHighlightColorSingle: TShape;
    dlgColor1: TColorDialog;
    btnOk: TButton;
    btnCancel: TButton;
    btnClearLastFiles: TButton;
    chkFlatControlsMainWin: TCheckBox;
    btnPickUserName: TButton;
    btnResetToDefaults: TButton;
    chkUseSelectionFrame: TCheckBox;
    chkSelectedTextIsWhite: TCheckBox;
    shpUserName: TShape;
    shpOriginalStyle: TShape;
    shpGridColor: TShape;
    lblGridColor: TLabel;
    cbbReorderEventsModKey: TComboBox;
    lblReorderKey: TLabel;
    dlgSelectFolder: TFileOpenDialog;
    chkEnableLogging: TCheckBox;
    chkDblClickTreeFlag: TCheckBox;
    grpEventsList: TGroupBox;
    chkDarkModeEventList: TCheckBox;
    pgcSettings: TPageControl;
    Page1: TTabSheet;
    PageA: TTabSheet;
    GroupBox1: TGroupBox;
    chkAutoSaveEnabled: TCheckBox;
    seAutoSaveMinutes: TSpinEdit;
    lblMinutes: TLabel;
    TabSheet1: TTabSheet;
    grpEventListColors: TGroupBox;
    btnEmptyBakPath: TButton;
    chkPlayerBindNameColor: TCheckBox;
    shpPlayerBindNameColor: TShape;
    chkPlayerSpeechBGColor: TCheckBox;
    shpPlayerSpeechBGColor: TShape;

    // new procedures
    procedure SaveChanges();
    procedure LoadSettings();
    procedure FirstTimeLaunch();

    procedure chkSelectEventsGradientFillClick(Sender: TObject);
    procedure shpHighlightColorFromMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure shpHighlightColorToMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure shpHighlightColorSingleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnBrowseBakConFilePathClick(Sender: TObject);
    procedure btnBrowseConAudioPathClick(Sender: TObject);
    procedure btnBrowseConFilePathClick(Sender: TObject);
    procedure btnPickUserNameClick(Sender: TObject);
    procedure btnResetToDefaultsClick(Sender: TObject);
    procedure btnClearLastFilesClick(Sender: TObject);
    procedure edtUserNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure shpGridColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnEmptyBakPathClick(Sender: TObject);
    procedure shpPlayerBindNameColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure shpPlayerSpeechBGColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses MainWindow;
{$R *.dfm}

procedure TfrmSettings.LoadSettings();
begin
    chkSelectEventsGradientFillClick(self);

    with frmMain do
    begin
        edtUserName.Text := ConversationUserName;
        edtConFilePath.Text := ConFilePath;
        edtConFileBakPath.Text := ConFileBakPath;
        edtAudioPath.Text := ConFileAudioPath;

        chkHighlightRelatedEvents.Checked := bHighlightRelatedEvents;
        chkAskConversationDelete.Checked := bAskForConvoDelete;
        chkAskDeleteEvent.Checked := bAskForEventDelete;
        chkHighlightspeechChoiceEventsNoneAudio.Checked := bHglEventWithNoAudio;
        chkSelectEventsGradientFill.Checked := bHglEventsGradient;

        shpHighlightColorSingle.Brush.Color := clrHighlightEvent;
        shpHighlightColorFrom.Brush.Color := clrHighlightEventFrom;
        shpHighlightColorTo.Brush.Color := clrHighlightEventTo;
        shpGridColor.Brush.Color := clrGrid;

        chkFlatControlsMainWin.Checked := bFlatToolbar;

        chkAutoSaveEnabled.Checked := bAutoSaveEnabled;
        seAutoSaveMinutes.Value := AutoSaveMinutes;

        chkUseSelectionFrame.Checked := bUse3DSelectionFrame;
        chkSelectedTextIsWhite.Checked := bUseWhiteSelectedText;

        chkEnableLogging.Checked := bUseLogging;

        cbbReorderEventsModKey.ItemIndex := Ord(ReorderModKey);

        chkDblClickTreeFlag.Checked := bEnableDblClickTreeFlag;

        chkPlayerBindNameColor.Checked := bUsePlayerBindNameColor;  // Player BindName
        shpPlayerBindNameColor.Brush.Color := clPlayerBindNameColor; // and color

        chkPlayerSpeechBGColor.Checked := bUsePlayerSpeechBGColor;
        shpPlayerSpeechBGColor.Brush.Color := clPlayerSpeechBGColor;
    end;
end;

procedure TfrmSettings.SaveChanges();
begin
    with frmMain do
    begin
        mainToolBar.Flat := chkFlatControlsMainWin.Checked;
        if chkFlatControlsMainWin.Checked then
          HeaderControl1.Style := hsFlat else HeaderControl1.Style := hsButtons;

        ConversationUserName := edtUserName.Text;
        ConFilePath := edtConFilePath.Text;
        ConFileBakPath := edtConFileBakPath.Text;
        ConFileAudioPath := edtAudioPath.Text;

        bHighlightRelatedEvents := chkHighlightRelatedEvents.Checked;
        bAskForConvoDelete := chkAskConversationDelete.Checked;
        bAskForEventDelete := chkAskDeleteEvent.Checked;
        bHglEventWithNoAudio := chkHighlightspeechChoiceEventsNoneAudio.Checked;
        bHglEventsGradient := chkSelectEventsGradientFill.Checked;

        clrHighlightEvent := shpHighlightColorSingle.Brush.Color;
        clrHighlightEventFrom := shpHighlightColorFrom.Brush.Color;
        clrHighlightEventTo := shpHighlightColorTo.Brush.Color;
        clrGrid := shpGridColor.Brush.Color;

        bFlatToolbar := chkFlatControlsMainWin.Checked;
        mainToolBar.Flat := bFlatToolbar;
        if bFlatToolbar = true then HeaderControl1.Style := hsFlat else HeaderControl1.Style := hsButtons;

        bAutoSaveEnabled := chkAutoSaveEnabled.Checked;
        AutoSaveMinutes := seAutoSaveMinutes.Value;
        AutoSaveTimer.Interval := AutoSaveMinutes * 60000;

        bUse3DSelectionFrame := chkUseSelectionFrame.Checked;
        bUseWhiteSelectedText := chkSelectedTextIsWhite.Checked;

        bUseLogging := chkEnableLogging.Checked;

        ReorderModKey := TReorderEventsModKey(cbbReorderEventsModKey.ItemIndex);
        btnReorder.Hint := GetReorderButtonHint(); // Update hint

        bEnableDblClickTreeFlag := chkDblClickTreeFlag.Checked;

        bUsePlayerBindNameColor := chkPlayerBindNameColor.Checked;  // Player BindName
        clPlayerBindNameColor := shpPlayerBindNameColor.Brush.Color; // and color

        bUsePlayerSpeechBGColor := chkPlayerSpeechBGColor.Checked;
        clPlayerSpeechBGColor := shpPlayerSpeechBGColor.Brush.Color;

        ConEventList.Invalidate(); // Refresh the event list
    end;
end;

procedure TfrmSettings.btnBrowseBakConFilePathClick(Sender: TObject);
begin
    if dlgSelectFolder.Execute() = true then
       edtConFileBakPath.Text := dlgSelectFolder.FileName;
end;

procedure TfrmSettings.btnBrowseConAudioPathClick(Sender: TObject);
begin
    if dlgSelectFolder.Execute() = true then
       edtAudioPath.Text := dlgSelectFolder.FileName;
end;

procedure TfrmSettings.btnBrowseConFilePathClick(Sender: TObject);
begin
    if dlgSelectFolder.Execute() = true then
       edtConFilePath.Text := dlgSelectFolder.FileName;
end;

procedure TfrmSettings.btnCancelClick(Sender: TObject);
begin
    LoadSettings();
    Close();
end;

procedure TfrmSettings.btnClearLastFilesClick(Sender: TObject);
begin
    if MessageDlg(strClearRecentQuestion,  mtConfirmation, [mbYes, mbNo],0) = mrYes then
        frmMain.ClearRecentFiles();
end;

procedure TfrmSettings.btnEmptyBakPathClick(Sender: TObject);
begin
    edtConFileBakPath.Clear();
end;

procedure TfrmSettings.btnOkClick(Sender: TObject);
begin
    SaveChanges();
    Close();
end;

procedure TfrmSettings.btnPickUserNameClick(Sender: TObject); // Get current Windows user name
var
    TempUser: PChar; i: DWord;
begin
    i := 1024;
    TempUser := StrAlloc(Succ(i));

    try
        if GetUserName(TempUser, i) = True then
        begin
            if MessageBox(0, PChar(Format(strUseUsername, [TempUser])), PChar(strUseUserNameTitle), MB_YESNO
                + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
            begin
                edtUserName.Text := TempUser
            end;
        end

    finally
        StrDispose(TempUser);
    end;
end;

procedure TfrmSettings.btnResetToDefaultsClick(Sender: TObject); // Use event selection colors from original ConEdit app.
begin
    chkUseSelectionFrame.Checked := False;

    chkSelectEventsGradientFill.Checked := False;
    chkSelectEventsGradientFillClick(self);
    chkSelectedTextIsWhite.Checked := True;

    shpHighlightColorSingle.Brush.Color := RGB(0,0,128);

    chkFlatControlsMainWin.Checked := False;
end;

procedure TfrmSettings.chkSelectEventsGradientFillClick(Sender: TObject);
begin
    shpHighlightColorSingle.Visible := not chkSelectEventsGradientFill.Checked;
    shpHighlightColorFrom.Visible := chkSelectEventsGradientFill.Checked;
    shpHighlightColorTo.Visible := chkSelectEventsGradientFill.Checked;
end;

procedure TfrmSettings.edtUserNameChange(Sender: TObject);
begin
    btnOk.Enabled := Length(Trim(edtUserName.Text)) > 1;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
    Icon := frmMain.Icon;

    LoadSettings();
    edtUserNameChange(self);
end;

procedure TfrmSettings.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
    if ActiveControl = seAutoSaveMinutes then
    begin
        if WheelDelta > 0 then
        begin
           seAutoSaveMinutes.Value := seAutoSaveMinutes.Value + 1;
           Handled := True;
        end else
        begin
           seAutoSaveMinutes.Value := seAutoSaveMinutes.Value - 1;
           Handled := True;
        end;
    end;

    if ActiveControl = cbbReorderEventsModKey then
    begin
        Handled := True;
    end;
end;

procedure TfrmSettings.FormShow(Sender: TObject);
begin
    LoadSettings();
end;

procedure TfrmSettings.shpGridColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpGridColor.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpHighlightColorFromMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpHighlightColorFrom.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpHighlightColorSingleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpHighlightColorSingle.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpHighlightColorToMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpHighlightColorTo.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpPlayerBindNameColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpPlayerBindNameColor.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.shpPlayerSpeechBGColorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    dlgColor1.Color := shpPlayerSpeechBGColor.Brush.Color;

    if ((Button = TMouseButton.mbLeft) and (dlgColor1.Execute() = true)) then
    begin
        shpPlayerSpeechBGColor.Brush.Color := dlgColor1.Color;
    end;
end;

procedure TfrmSettings.FirstTimeLaunch();
begin
  //
end;

end.
