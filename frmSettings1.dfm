object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'ConvEdit+ Settings'
  ClientHeight = 490
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  StyleName = 'Windows'
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  TextHeight = 15
  object shpUserName: TShape
    Left = 5
    Top = 30
    Width = 192
    Height = 30
    Brush.Style = bsClear
    Pen.Color = clRed
    Pen.Width = 4
  end
  object lbl1: TLabel
    Left = 8
    Top = 14
    Width = 58
    Height = 15
    Caption = 'UserName:'
    StyleName = 'Windows'
  end
  object Label1: TLabel
    Left = 8
    Top = 62
    Width = 121
    Height = 15
    Caption = 'Conversation File Path:'
    StyleName = 'Windows'
  end
  object Label2: TLabel
    Left = 8
    Top = 166
    Width = 62
    Height = 15
    Caption = 'Audio Path:'
    StyleName = 'Windows'
  end
  object Label3: TLabel
    Left = 8
    Top = 115
    Width = 163
    Height = 15
    Caption = 'Conversation File Backup Path:'
    StyleName = 'Windows'
  end
  object shpHighlightColorFrom: TShape
    Left = 215
    Top = 358
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clSilver
    OnMouseDown = shpHighlightColorFromMouseDown
  end
  object shpHighlightColorTo: TShape
    Left = 241
    Top = 358
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clGreen
    OnMouseDown = shpHighlightColorToMouseDown
  end
  object shpHighlightColorSingle: TShape
    Left = 267
    Top = 358
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clYellow
    OnMouseDown = shpHighlightColorSingleMouseDown
  end
  object shpOriginalStyle: TShape
    Left = 363
    Top = 295
    Width = 82
    Height = 66
    Brush.Style = bsClear
    Pen.Color = clRed
    Pen.Width = 4
  end
  object shpGridColor: TShape
    Left = 413
    Top = 381
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Brush.Color = clYellow
    OnMouseDown = shpGridColorMouseDown
  end
  object Label4: TLabel
    Left = 343
    Top = 381
    Width = 64
    Height = 17
    AutoSize = False
    Caption = 'Grid color:'
    Layout = tlCenter
    StyleName = 'Windows'
  end
  object Label5: TLabel
    Left = 8
    Top = 420
    Width = 114
    Height = 22
    AutoSize = False
    Caption = 'Reorder events key:'
    Layout = tlCenter
    StyleName = 'Windows'
  end
  object Label6: TLabel
    Left = 189
    Top = 335
    Width = 116
    Height = 17
    AutoSize = False
    Caption = 'minutes'
    Layout = tlCenter
  end
  object edtUserName: TEdit
    Left = 8
    Top = 34
    Width = 185
    Height = 23
    Hint = 'Will be used in conversation files. '
    PopupMenu = frmEventInsAdd.MemoPopup
    TabOrder = 0
    OnChange = edtUserNameChange
  end
  object edtConFilePath: TEdit
    Left = 8
    Top = 80
    Width = 353
    Height = 23
    HideSelection = False
    PopupMenu = frmEventInsAdd.MemoPopup
    ReadOnly = True
    TabOrder = 1
    StyleName = 'Windows'
  end
  object edtConFileBakPath: TEdit
    Left = 8
    Top = 135
    Width = 353
    Height = 23
    HideSelection = False
    PopupMenu = frmEventInsAdd.MemoPopup
    ReadOnly = True
    TabOrder = 2
    StyleName = 'Windows'
  end
  object edtAudioPath: TEdit
    Left = 8
    Top = 184
    Width = 353
    Height = 23
    HideSelection = False
    PopupMenu = frmEventInsAdd.MemoPopup
    ReadOnly = True
    TabOrder = 3
    StyleName = 'Windows'
  end
  object chkExpandFlagsOnExpandAll: TCheckBox
    Left = 8
    Top = 220
    Width = 353
    Height = 17
    Caption = 'Expand Flags On Expand All'
    TabOrder = 4
    StyleName = 'Windows'
  end
  object chkAskConversationDelete: TCheckBox
    Left = 8
    Top = 243
    Width = 353
    Height = 17
    Caption = 'Ask for Conversation deletion'
    TabOrder = 5
    StyleName = 'Windows'
  end
  object chkAskDeleteEvent: TCheckBox
    Left = 8
    Top = 266
    Width = 353
    Height = 17
    Caption = 'Ask For Event Deletion'
    TabOrder = 6
    StyleName = 'Windows'
  end
  object chkHighlightspeechChoiceEventsNoneAudio: TCheckBox
    Left = 8
    Top = 289
    Width = 353
    Height = 17
    Caption = 'Highlight Speech/Choice events with missing audio'
    TabOrder = 7
    StyleName = 'Windows'
  end
  object chkSelectEventsGradientFill: TCheckBox
    Left = 8
    Top = 358
    Width = 201
    Height = 17
    Hint = 'If not checked, use single color to highlight events.'
    Caption = 'Highlight events with gradient fill'
    TabOrder = 8
    StyleName = 'Windows'
    OnClick = chkSelectEventsGradientFillClick
  end
  object btnBrowseConFilePath: TButton
    Left = 367
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 9
    StyleName = 'Windows'
    OnClick = btnBrowseConFilePathClick
  end
  object btnBrowseBakConFilePath: TButton
    Left = 367
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 10
    StyleName = 'Windows'
    OnClick = btnBrowseBakConFilePathClick
  end
  object btnBrowseConAudioPath: TButton
    Left = 367
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 11
    StyleName = 'Windows'
    OnClick = btnBrowseConAudioPathClick
  end
  object txt1: TStaticText
    Left = 8
    Top = 448
    Width = 434
    Height = 3
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 12
    StyleName = 'Windows'
  end
  object btnOk: TButton
    Left = 368
    Top = 457
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 13
    StyleName = 'Windows'
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 267
    Top = 457
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 14
    StyleName = 'Windows'
    OnClick = btnCancelClick
  end
  object btnClearLastFiles: TButton
    Left = 8
    Top = 457
    Width = 167
    Height = 25
    Caption = 'Clear recent files'
    TabOrder = 15
    StyleName = 'Windows'
    OnClick = btnClearLastFilesClick
  end
  object chkFlatControlsMainWin: TCheckBox
    Left = 8
    Top = 312
    Width = 353
    Height = 17
    Caption = 'Flat toolbar/event list header'
    TabOrder = 16
    StyleName = 'Windows'
  end
  object chkAutoSaveEnabled: TCheckBox
    Left = 8
    Top = 335
    Width = 114
    Height = 17
    Caption = 'AutoSave every'
    TabOrder = 17
    StyleName = 'Windows'
  end
  object seAutoSaveMinutes: TSpinEdit
    Left = 128
    Top = 335
    Width = 55
    Height = 24
    AutoSize = False
    Color = clBtnFace
    EditorEnabled = False
    MaxLength = 2
    MaxValue = 20
    MinValue = 1
    StyleName = 'Windows'
    TabOrder = 18
    Value = 5
  end
  object btnPickUserName: TButton
    Left = 214
    Top = 33
    Width = 228
    Height = 25
    Caption = 'Use from current logged in user?'
    TabOrder = 19
    StyleName = 'Windows'
    OnClick = btnPickUserNameClick
  end
  object btnResetToDefaults: TButton
    Left = 367
    Top = 299
    Width = 75
    Height = 59
    Caption = 'Set original ConEdit style'
    TabOrder = 20
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnResetToDefaultsClick
  end
  object chkUseSelectionFrame: TCheckBox
    Left = 8
    Top = 381
    Width = 114
    Height = 17
    Hint = 'Use 3D frame in addition to selection color(s).'
    Caption = 'Use 3D frame?'
    TabOrder = 21
    StyleName = 'Windows'
    OnClick = chkSelectEventsGradientFillClick
  end
  object chkSelectedTextIsWhite: TCheckBox
    Left = 128
    Top = 381
    Width = 209
    Height = 17
    Hint = 'Use this option if you want to use dark selection colors. '
    Caption = 'Selected event text is bright'
    TabOrder = 22
    StyleName = 'Windows'
    OnClick = chkSelectEventsGradientFillClick
  end
  object cbbReorderEventsModKey: TComboBox
    Left = 128
    Top = 419
    Width = 69
    Height = 22
    Style = csOwnerDrawVariable
    ItemIndex = 0
    TabOrder = 23
    Text = 'Ctrl'
    StyleName = 'Windows'
    Items.Strings = (
      'Ctrl'
      'Shift'
      'Alt')
  end
  object dlgColor1: TColorDialog
    Left = 208
    Top = 168
  end
  object dlgSelectFolder: TFileOpenDialog
    FavoriteLinks = <>
    FileName = 'C:\Lang\Modules\XmlVerySimple\Source'
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist, fdoCreatePrompt]
    Left = 368
    Top = 240
  end
end
