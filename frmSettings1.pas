unit frmSettings1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, System.UITypes,
  Vcl.Samples.Spin, Conversation.Classes, ConEditPlus.Enums, ConEditPlus.Consts, ConEditPlus.Colors;

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
    cbbReorderEventsModKey: TComboBox;
    lblReorderKey: TLabel;
    dlgSelectFolder: TFileOpenDialog;
    chkEnableLogging: TCheckBox;
    chkDblClickTreeFlag: TCheckBox;
    grpEventsList: TGroupBox;
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
    chkGridColor: TCheckBox;
    chkVerifyLabelNames: TCheckBox;
    chkOverrideSelectedEventColor: TCheckBox;
    cmbEventsColorTheme: TComboBox;
    Label1: TLabel;
    btnResetPlayerBindNameColor: TButton;
    btnResetPlayerSpeechBGColor: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;

    // new procedures
    procedure SaveChanges();
    procedure LoadSettings();
    procedure FillThemesCombo();
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
    procedure chkGridColorClick(Sender: TObject);
    procedure chkOverrideSelectedEventColorClick(Sender: TObject);
    procedure chkPlayerBindNameColorClick(Sender: TObject);
    procedure chkPlayerSpeechBGColorClick(Sender: TObject);
    procedure btnResetPlayerBindNameColorClick(Sender: TObject);
    procedure btnResetPlayerSpeechBGColorClick(Sender: TObject);
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
    // update color shapes
    chkPlayerBindNameColorClick(self);
    chkPlayerSpeechBGColorClick(Self);

    chkOverrideSelectedEventColorClick(Self);
    chkSelectEventsGradientFillClick(self);

    chkGridColorClick(Self);


    with frmMain do
    begin
        edtUserName.Text := ConversationUserName;
        edtConFilePath.Text := ConFilePath;
        edtConFileBakPath.Text := ConFileBakPath;
        edtAudioPath.Text := ConFileAudioPath;

        chkHighlightRelatedEvents.Checked := bHighlightRelatedEvents;
        chkVerifyLabelNames.Checked := bVerifyEventLabel; // verify if label name is valid?
        chkAskConversationDelete.Checked := bAskForConvoDelete;
        chkAskDeleteEvent.Checked := bAskForEventDelete;
        chkHighlightspeechChoiceEventsNoneAudio.Checked := bHglEventWithNoAudio;

        chkFlatControlsMainWin.Checked := bFlatToolbar;

        chkAutoSaveEnabled.Checked := bAutoSaveEnabled;
        seAutoSaveMinutes.Value := AutoSaveMinutes;

        chkUseSelectionFrame.Checked := bUse3DSelectionFrame;
        chkSelectedTextIsWhite.Checked := bUseWhiteSelectedText;

        chkEnableLogging.Checked := bUseLogging;

        cbbReorderEventsModKey.ItemIndex := Ord(ReorderModKey);

        chkDblClickTreeFlag.Checked := bEnableDblClickTreeFlag;

        if EventListColors = ConEditPlus.Colors.DefaultTEventsColors then
            cmbEventsColorTheme.ItemIndex := 0
        else if EventListColors = ConEditPlus.Colors.SofterTEventsColors then
            cmbEventsColorTheme.ItemIndex := 1
        else if EventListColors = ConEditPlus.Colors.SofterDarkerTEventsColors then
            cmbEventsColorTheme.ItemIndex := 2
        else if EventListColors = ConEditPlus.Colors.ShadesOfGrayTEventsColors then
            cmbEventsColorTheme.ItemIndex := 3;

        shpHighlightColorSingle.Brush.Color := clrHighlightEvent;
        shpHighlightColorFrom.Brush.Color := clrHighlightEventFrom;
        shpHighlightColorTo.Brush.Color := clrHighlightEventTo;

        chkGridColor.Checked := bUseCustomGridColor;
        shpGridColor.Brush.Color := clrGrid;

        chkPlayerBindNameColor.Checked := bUsePlayerBindNameColor;  // Override Player BindName and color
        shpPlayerBindNameColor.Brush.Color := clPlayerBindNameColor; // Color

        chkPlayerSpeechBGColor.Checked := bUsePlayerSpeechBGColor; // Override Player BindName color
        shpPlayerSpeechBGColor.Brush.Color := clPlayerSpeechBGColor; // Color

        chkOverrideSelectedEventColor.Checked := bUseCustomHighlightEventColor; // переопределить цвет выбранного события
        chkSelectEventsGradientFill.Checked := bHglEventsGradient; // Градиентная заливка?


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
        bVerifyEventLabel := chkVerifyLabelNames.Checked;
        bAskForConvoDelete := chkAskConversationDelete.Checked;
        bAskForEventDelete := chkAskDeleteEvent.Checked;
        bHglEventWithNoAudio := chkHighlightspeechChoiceEventsNoneAudio.Checked;

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

        // сохранить тему
        case frmSettings.cmbEventsColorTheme.ItemIndex of
            0: EventListColors := ConEditPlus.Colors.DefaultTEventsColors;
            1: EventListColors := ConEditPlus.Colors.SofterTEventsColors;
            2: EventListColors := ConEditPlus.Colors.SofterDarkerTEventsColors;
            3: EventListColors := ConEditPlus.Colors.ShadesOfGrayTEventsColors;
        end;

        // и переопределённые цвета
        bUsePlayerBindNameColor := chkPlayerBindNameColor.Checked;  // Player BindName
        clPlayerBindNameColor := shpPlayerBindNameColor.Brush.Color; // and color

        bUsePlayerSpeechBGColor := chkPlayerSpeechBGColor.Checked;
        clPlayerSpeechBGColor := shpPlayerSpeechBGColor.Brush.Color;

        clrHighlightEvent := shpHighlightColorSingle.Brush.Color;
        clrHighlightEventFrom := shpHighlightColorFrom.Brush.Color;
        clrHighlightEventTo := shpHighlightColorTo.Brush.Color;

        bUseCustomGridColor := chkGridColor.Checked;
        clrGrid := shpGridColor.Brush.Color;

        bUseCustomHighlightEventColor := chkOverrideSelectedEventColor.Checked; // Переопределить цвет выбранного события
        bHglEventsGradient := chkSelectEventsGradientFill.Checked;


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
        if Winapi.Windows.GetUserName(TempUser, i) = True then
        begin
            if Winapi.Windows.MessageBox(0, PChar(Format(strUseUsername, [TempUser])), PChar(strUseUserNameTitle), MB_YESNO
                + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
            begin
                edtUserName.Text := TempUser
            end;
        end

    finally
        System.SysUtils.StrDispose(TempUser);
    end;
end;

procedure TfrmSettings.btnResetPlayerBindNameColorClick(Sender: TObject);
begin
    shpPlayerBindNameColor.Brush.Color := clNone;
end;

procedure TfrmSettings.btnResetPlayerSpeechBGColorClick(Sender: TObject);
begin
    shpPlayerSpeechBGColor.Brush.Color := clNone;
end;

procedure TfrmSettings.btnResetToDefaultsClick(Sender: TObject); // Use event selection colors from original ConEdit app.
begin
    chkFlatControlsMainWin.Checked := False; // 3D ConEventList header
    chkUseSelectionFrame.Checked := False;

    chkPlayerBindNameColor.Checked := False; // Не менять цвет события Speech игрока
    chkPlayerBindNameColorClick(self);

    chkPlayerSpeechBGColor.Checked := False; // Не менять цвет фона события Speech игрока
    chkPlayerSpeechBGColorClick(self);

    chkOverrideSelectedEventColor.Checked := True; // Изменить цвет выбранного события
    chkOverrideSelectedEventColorClick(self);
    shpHighlightColorSingle.Brush.Color := Winapi.Windows.RGB(0,0,128); // установить синий цвет

    chkSelectEventsGradientFill.Checked := False; // Без градиентной заливки
    chkSelectEventsGradientFillClick(self);

    chkGridColor.Checked := False; // Не менять цвет разделителей событий
    chkGridColorClick(self);

    chkSelectedTextIsWhite.Checked := True;

    cmbEventsColorTheme.ItemIndex := 0; // Самое главное, установить стандартную тему
end;

procedure TfrmSettings.chkGridColorClick(Sender: TObject);
begin
    shpGridColor.Visible := chkGridColor.Checked;
end;

procedure TfrmSettings.chkOverrideSelectedEventColorClick(Sender: TObject);
begin
    chkSelectEventsGradientFill.Visible := chkOverrideSelectedEventColor.Checked;
    shpHighlightColorSingle.Visible := chkOverrideSelectedEventColor.Checked;
    shpHighlightColorFrom.Visible := chkOverrideSelectedEventColor.Checked;
    shpHighlightColorTo.Visible := chkOverrideSelectedEventColor.Checked;

    if chkSelectEventsGradientFill.Visible = True then
        chkSelectEventsGradientFillClick(self);
end;

procedure TfrmSettings.chkPlayerBindNameColorClick(Sender: TObject);
begin
    shpPlayerBindNameColor.Visible := chkPlayerBindNameColor.Checked;
end;

procedure TfrmSettings.chkPlayerSpeechBGColorClick(Sender: TObject);
begin
    shpPlayerSpeechBGColor.Visible := chkPlayerSpeechBGColor.Checked;
end;

procedure TfrmSettings.chkSelectEventsGradientFillClick(Sender: TObject);
begin
    if chkSelectEventsGradientFill.Visible = True then
    begin
        shpHighlightColorSingle.Visible := not chkSelectEventsGradientFill.Checked;
        shpHighlightColorFrom.Visible := chkSelectEventsGradientFill.Checked;
        shpHighlightColorTo.Visible := chkSelectEventsGradientFill.Checked;
    end;
end;

procedure TfrmSettings.edtUserNameChange(Sender: TObject);
begin
    btnOk.Enabled := Length(Trim(edtUserName.Text)) > 1;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
    Icon := frmMain.Icon;

    FillThemesCombo();
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

procedure TfrmSettings.FillThemesCombo();
begin
    with cmbEventsColorTheme.Items do
    begin
        Clear();
        Add(ELC_DEFAULT);
        Add(ELC_SOFTER);
        Add(ELC_SOFTER_DARKER);
        Add(ELC_SHADES_OF_GRAY);
    end;
end;

procedure TfrmSettings.FirstTimeLaunch();
begin
  //
end;

end.

