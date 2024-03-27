object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'ConEditPlus Settings'
  ClientHeight = 500
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
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
  object Label6: TLabel
    Left = 385
    Top = 389
    Width = 52
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
  object chkAskConversationDelete: TCheckBox
    Left = 8
    Top = 389
    Width = 185
    Height = 17
    Caption = 'Ask for Conversation deletion'
    TabOrder = 4
    StyleName = 'Windows'
  end
  object chkAskDeleteEvent: TCheckBox
    Left = 8
    Top = 412
    Width = 185
    Height = 17
    Caption = 'Ask For Event Deletion'
    TabOrder = 5
    StyleName = 'Windows'
  end
  object btnBrowseConFilePath: TButton
    Left = 367
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 6
    StyleName = 'Windows'
    OnClick = btnBrowseConFilePathClick
  end
  object btnBrowseBakConFilePath: TButton
    Left = 367
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 7
    StyleName = 'Windows'
    OnClick = btnBrowseBakConFilePathClick
  end
  object btnBrowseConAudioPath: TButton
    Left = 367
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 8
    StyleName = 'Windows'
    OnClick = btnBrowseConAudioPathClick
  end
  object txt1: TStaticText
    Left = 8
    Top = 458
    Width = 434
    Height = 3
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 9
    StyleName = 'Windows'
  end
  object btnOk: TButton
    Left = 368
    Top = 467
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 10
    StyleName = 'Windows'
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 267
    Top = 467
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 11
    StyleName = 'Windows'
    OnClick = btnCancelClick
  end
  object btnClearLastFiles: TButton
    Left = 8
    Top = 467
    Width = 167
    Height = 25
    Caption = 'Clear recent files'
    TabOrder = 12
    StyleName = 'Windows'
    OnClick = btnClearLastFilesClick
  end
  object chkAutoSaveEnabled: TCheckBox
    Left = 204
    Top = 389
    Width = 114
    Height = 17
    Hint = 'AutoSave is not implemented yet '
    Caption = 'AutoSave every'
    TabOrder = 13
  end
  object seAutoSaveMinutes: TSpinEdit
    Left = 324
    Top = 389
    Width = 55
    Height = 24
    AutoSize = False
    Color = clBtnFace
    EditorEnabled = False
    MaxLength = 2
    MaxValue = 20
    MinValue = 1
    StyleName = 'Windows'
    TabOrder = 14
    Value = 5
  end
  object btnPickUserName: TButton
    Left = 215
    Top = 33
    Width = 228
    Height = 25
    Caption = 'Use from current logged in user?'
    TabOrder = 15
    StyleName = 'Windows'
    OnClick = btnPickUserNameClick
  end
  object chkEnableLogging: TCheckBox
    Left = 8
    Top = 435
    Width = 185
    Height = 17
    Hint = 
      'Enable logging of some events. Useful for debugging. '#13#10'Warning: ' +
      'This will slow down most of operations.'
    Caption = 'Enable logging'
    TabOrder = 16
    StyleName = 'Windows'
    OnClick = chkSelectEventsGradientFillClick
  end
  object chkDblClickTreeFlag: TCheckBox
    Left = 204
    Top = 412
    Width = 239
    Height = 17
    Hint = 
      '(not implemented yet) Toggle flag value in conversations tree by' +
      ' double-clicking it. '
    Caption = 'DblClick tree flag to change value'
    TabOrder = 17
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 214
    Width = 435
    Height = 169
    Caption = ' Events list '
    TabOrder = 18
    object Label4: TLabel
      Left = 316
      Top = 45
      Width = 64
      Height = 17
      AutoSize = False
      Caption = 'Grid color:'
      Layout = tlCenter
      StyleName = 'Windows'
    end
    object shpGridColor: TShape
      Left = 376
      Top = 43
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Brush.Color = clYellow
      OnMouseDown = shpGridColorMouseDown
    end
    object shpHighlightColorFrom: TShape
      Left = 265
      Top = 43
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Brush.Color = clSilver
      OnMouseDown = shpHighlightColorFromMouseDown
    end
    object shpHighlightColorSingle: TShape
      Left = 265
      Top = 43
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Brush.Color = clYellow
      OnMouseDown = shpHighlightColorSingleMouseDown
    end
    object shpHighlightColorTo: TShape
      Left = 291
      Top = 43
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Brush.Color = clGreen
      OnMouseDown = shpHighlightColorToMouseDown
    end
    object Label5: TLabel
      Left = 11
      Top = 138
      Width = 174
      Height = 22
      AutoSize = False
      Caption = 'Hold this key to reorder events:'
      Layout = tlCenter
      StyleName = 'Windows'
    end
    object shpOriginalStyle: TShape
      Left = 337
      Top = 114
      Width = 89
      Height = 41
      Brush.Style = bsClear
      Pen.Color = clRed
      Pen.Width = 4
    end
    object chkHighlightRelatedEvents: TCheckBox
      Left = 11
      Top = 92
      Width = 201
      Height = 17
      Caption = 'Highlight related events'
      TabOrder = 0
    end
    object chkHighlightspeechChoiceEventsNoneAudio: TCheckBox
      Left = 11
      Top = 69
      Width = 297
      Height = 17
      Caption = 'Highlight Speech/Choice events with missing audio'
      TabOrder = 1
      StyleName = 'Windows'
    end
    object chkSelectEventsGradientFill: TCheckBox
      Left = 11
      Top = 46
      Width = 238
      Height = 17
      Hint = 'If not checked, use single color to highlight events.'
      Caption = 'Highlight selected event with gradient fill'
      TabOrder = 2
      StyleName = 'Windows'
      OnClick = chkSelectEventsGradientFillClick
    end
    object chkUseSelectionFrame: TCheckBox
      Left = 11
      Top = 23
      Width = 114
      Height = 17
      Hint = 'Use 3D frame in addition to selection color(s).'
      Caption = 'Use 3D frame?'
      TabOrder = 3
      StyleName = 'Windows'
      OnClick = chkSelectEventsGradientFillClick
    end
    object chkSelectedTextIsWhite: TCheckBox
      Left = 11
      Top = 115
      Width = 209
      Height = 17
      Hint = 'Use this option if you want to use dark selection colors. '
      Caption = 'Selected event text is bright'
      TabOrder = 4
      StyleName = 'Windows'
      OnClick = chkSelectEventsGradientFillClick
    end
    object chkFlatControlsMainWin: TCheckBox
      Left = 207
      Top = 20
      Width = 175
      Height = 17
      Hint = 
        'Toggle slight 3D effect for toolbar buttons and Events list head' +
        'er'
      Caption = 'Flat toolbar/event list header'
      TabOrder = 5
      StyleName = 'Windows'
    end
    object cbbReorderEventsModKey: TComboBox
      Left = 180
      Top = 138
      Width = 69
      Height = 22
      Hint = 'Hold this key and drag selected event with mouse to change order'
      Style = csOwnerDrawVariable
      ItemIndex = 0
      TabOrder = 6
      Text = 'Ctrl'
      StyleName = 'Windows'
      Items.Strings = (
        'Ctrl'
        'Shift'
        'Alt')
    end
    object btnResetToDefaults: TButton
      Left = 340
      Top = 117
      Width = 84
      Height = 36
      Hint = 'Set selection colors like in original ConEdit'
      Caption = 'Set original ConEdit style'
      TabOrder = 7
      WordWrap = True
      StyleName = 'Windows'
      OnClick = btnResetToDefaultsClick
    end
    object chkDarkModeEventList: TCheckBox
      Left = 207
      Top = 94
      Width = 189
      Height = 17
      Hint = 
        '(Dark theme is not implemented yet) Use dark theme colors for ev' +
        'ents list. You can use this option as an addition to dark theme.'
      Caption = 'Dark mode for events list'
      TabOrder = 8
    end
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
    Left = 288
    Top = 88
  end
end
