object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'ConvEdit+ Settings'
  ClientHeight = 450
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  StyleElements = []
  OnCreate = FormCreate
  TextHeight = 14
  object shpUserName: TShape
    Left = 19
    Top = 37
    Width = 194
    Height = 32
    Brush.Style = bsClear
    Pen.Color = clRed
    Pen.Width = 4
    Visible = False
  end
  object lbl1: TLabel
    Left = 24
    Top = 22
    Width = 59
    Height = 14
    Caption = 'UserName:'
  end
  object Label1: TLabel
    Left = 24
    Top = 70
    Width = 124
    Height = 14
    Caption = 'Conversation File Path:'
  end
  object Label2: TLabel
    Left = 24
    Top = 174
    Width = 64
    Height = 14
    Caption = 'Audio Path:'
  end
  object Label3: TLabel
    Left = 24
    Top = 123
    Width = 167
    Height = 14
    Caption = 'Conversation File Backup Path:'
  end
  object shpHighlightColorFrom: TShape
    Left = 231
    Top = 366
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clSilver
    OnMouseDown = shpHighlightColorFromMouseDown
  end
  object shpHighlightColorTo: TShape
    Left = 257
    Top = 366
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clGreen
    OnMouseDown = shpHighlightColorToMouseDown
  end
  object shpHighlightColorSingle: TShape
    Left = 283
    Top = 366
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clYellow
    OnMouseDown = shpHighlightColorSingleMouseDown
  end
  object edtUserName: TEdit
    Left = 24
    Top = 42
    Width = 185
    Height = 22
    Hint = 'Will be used in conversation files. '
    TabOrder = 0
    OnChange = edtUserNameChange
  end
  object edtConFilePath: TEdit
    Left = 24
    Top = 88
    Width = 353
    Height = 22
    HideSelection = False
    ReadOnly = True
    TabOrder = 1
    StyleElements = []
  end
  object edtConFileBakPath: TEdit
    Left = 24
    Top = 143
    Width = 353
    Height = 22
    HideSelection = False
    ReadOnly = True
    TabOrder = 2
    StyleElements = []
  end
  object edtAudioPath: TEdit
    Left = 24
    Top = 192
    Width = 353
    Height = 22
    HideSelection = False
    ReadOnly = True
    TabOrder = 3
    StyleElements = []
  end
  object chkExpandFlagsOnExpandAll: TCheckBox
    Left = 24
    Top = 228
    Width = 353
    Height = 17
    Caption = 'Expand Flags On Expand All'
    TabOrder = 4
    StyleElements = []
  end
  object chkAskConversationDelete: TCheckBox
    Left = 24
    Top = 251
    Width = 353
    Height = 17
    Caption = 'Ask for Conversation deletion'
    TabOrder = 5
    StyleElements = []
  end
  object chkAskDeleteEvent: TCheckBox
    Left = 24
    Top = 274
    Width = 353
    Height = 17
    Caption = 'Ask For Event Deletion'
    TabOrder = 6
    StyleElements = []
  end
  object chkHighlightspeechChoiceEventsNoneAudio: TCheckBox
    Left = 24
    Top = 297
    Width = 353
    Height = 17
    Caption = 'Highlight Speech/Choice events with missing audio'
    TabOrder = 7
    StyleElements = []
  end
  object chkSelectEventsGradientFill: TCheckBox
    Left = 24
    Top = 366
    Width = 201
    Height = 17
    Hint = 'If not checked, use single color to highlight events.'
    Caption = 'Highlight events with gradient fill'
    TabOrder = 8
    StyleElements = []
    OnClick = chkSelectEventsGradientFillClick
  end
  object btnBrowseConFilePath: TButton
    Left = 383
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 9
    StyleElements = []
    OnClick = btnBrowseConFilePathClick
  end
  object btnBrowseBakConFilePath: TButton
    Left = 383
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 10
    StyleElements = []
    OnClick = btnBrowseBakConFilePathClick
  end
  object btnBrowseConAudioPath: TButton
    Left = 383
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 11
    StyleElements = []
    OnClick = btnBrowseConAudioPathClick
  end
  object txt1: TStaticText
    Left = 24
    Top = 408
    Width = 434
    Height = 3
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 12
  end
  object btnOk: TButton
    Left = 383
    Top = 417
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 13
    StyleElements = []
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 283
    Top = 417
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 14
    StyleElements = []
    OnClick = btnCancelClick
  end
  object btnClearLastFiles: TButton
    Left = 24
    Top = 417
    Width = 167
    Height = 25
    Caption = 'Clear recent files'
    TabOrder = 15
    StyleElements = []
    OnClick = btnClearLastFilesClick
  end
  object chkFlatControlsMainWin: TCheckBox
    Left = 24
    Top = 320
    Width = 353
    Height = 17
    Caption = 'Flat toolbar/event list header'
    TabOrder = 16
    StyleElements = []
  end
  object chkAutoSaveEnabled: TCheckBox
    Left = 24
    Top = 343
    Width = 227
    Height = 17
    Caption = 'AutoSave every...                minutes'
    TabOrder = 17
    StyleElements = []
  end
  object seAutoSaveMinutes: TSpinEdit
    Left = 144
    Top = 343
    Width = 55
    Height = 23
    AutoSize = False
    Color = clBtnFace
    EditorEnabled = False
    MaxLength = 2
    MaxValue = 20
    MinValue = 1
    StyleElements = []
    TabOrder = 18
    Value = 5
  end
  object btnPickUserName: TButton
    Left = 230
    Top = 41
    Width = 228
    Height = 25
    Caption = 'Use from current logged in user?'
    TabOrder = 19
    StyleElements = []
    OnClick = btnPickUserNameClick
  end
  object btnResetToDefaults: TButton
    Left = 383
    Top = 343
    Width = 75
    Height = 59
    Caption = 'Set original ConEdit style'
    TabOrder = 20
    WordWrap = True
    StyleElements = []
    OnClick = btnResetToDefaultsClick
  end
  object chkUseSelectionFrame: TCheckBox
    Left = 24
    Top = 389
    Width = 100
    Height = 17
    Hint = 'Use 3D frame in addition to selection color(s).'
    Caption = 'Use 3D frame?'
    TabOrder = 21
    StyleElements = []
    OnClick = chkSelectEventsGradientFillClick
  end
  object chkSelectedTextIsWhite: TCheckBox
    Left = 160
    Top = 389
    Width = 217
    Height = 17
    Hint = 'Use this option if you want to use dark selection colors. '
    Caption = 'Selected event text is bright'
    TabOrder = 22
    StyleElements = []
    OnClick = chkSelectEventsGradientFillClick
  end
  object dlgColor1: TColorDialog
    Left = 232
    Top = 232
  end
  object dlgSelectFolder: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odFileSystemDirectoryOnly, odStatusAvailable, odEditBox, odNewDialogStyle, odValidate]
    RootDirectory = fdDesktop
    Left = 424
    Top = 280
  end
end
