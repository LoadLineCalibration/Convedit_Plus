object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'ConvEdit+ Settings'
  ClientHeight = 433
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
    Left = 239
    Top = 328
    Width = 18
    Height = 17
    Cursor = crHandPoint
    Brush.Color = clSilver
    OnMouseDown = shpHighlightColorFromMouseDown
  end
  object shpHighlightColorTo: TShape
    Left = 263
    Top = 328
    Width = 18
    Height = 17
    Cursor = crHandPoint
    Brush.Color = clGreen
    OnMouseDown = shpHighlightColorToMouseDown
  end
  object shpHighlightColorSingle: TShape
    Left = 287
    Top = 328
    Width = 18
    Height = 17
    Cursor = crHandPoint
    Brush.Color = clYellow
    OnMouseDown = shpHighlightColorSingleMouseDown
  end
  object edtUserName: TEdit
    Left = 24
    Top = 40
    Width = 185
    Height = 22
    Hint = 'Will be used in conversation files. '
    TabOrder = 0
  end
  object edtConFilePath: TEdit
    Left = 24
    Top = 88
    Width = 353
    Height = 22
    TabOrder = 1
  end
  object edtConFileBakPath: TEdit
    Left = 24
    Top = 143
    Width = 353
    Height = 22
    TabOrder = 2
  end
  object edtAudioPath: TEdit
    Left = 24
    Top = 192
    Width = 353
    Height = 22
    TabOrder = 3
  end
  object chkExpandFlagsOnExpandAll: TCheckBox
    Left = 24
    Top = 236
    Width = 369
    Height = 17
    Caption = 'Expand Flags On Expand All'
    TabOrder = 4
    StyleElements = []
  end
  object chkAskConversationDelete: TCheckBox
    Left = 24
    Top = 259
    Width = 369
    Height = 17
    Caption = 'Ask for Conversation deletion'
    TabOrder = 5
    StyleElements = []
  end
  object chkAskDeleteEvent: TCheckBox
    Left = 24
    Top = 282
    Width = 369
    Height = 17
    Caption = 'Ask For Event Deletion'
    TabOrder = 6
    StyleElements = []
  end
  object chkHighlightspeecvhChoiceEventsNoneAudio: TCheckBox
    Left = 24
    Top = 305
    Width = 369
    Height = 17
    Caption = 'Highlight Speech/Choice events with missing audio'
    TabOrder = 7
    StyleElements = []
  end
  object chkSelectionGradientFill: TCheckBox
    Left = 24
    Top = 328
    Width = 209
    Height = 17
    Hint = 'If not checked, use single color to highlight events.'
    Caption = 'Highlight events with gradient fill'
    TabOrder = 8
    StyleElements = []
    OnClick = chkSelectionGradientFillClick
  end
  object btnBrowseConFilePath: TButton
    Left = 383
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 9
    StyleElements = []
  end
  object btnBrowseBakConFilePath: TButton
    Left = 383
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 10
    StyleElements = []
  end
  object btnBrowseConAudioPath: TButton
    Left = 383
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 11
    StyleElements = []
  end
  object txt1: TStaticText
    Left = 24
    Top = 391
    Width = 434
    Height = 3
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 12
  end
  object btnOk: TButton
    Left = 383
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 13
    StyleElements = []
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 287
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 14
    StyleElements = []
    OnClick = btnCancelClick
  end
  object btnClearLastFiles: TButton
    Left = 24
    Top = 400
    Width = 167
    Height = 25
    Caption = 'Clear recent files'
    TabOrder = 15
    StyleElements = []
  end
  object txt2: TStaticText
    Left = 263
    Top = 28
    Width = 434
    Height = 34
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Reserved'
    TabOrder = 16
  end
  object chkFlatControlsMainWin: TCheckBox
    Left = 24
    Top = 351
    Width = 369
    Height = 17
    Caption = 'Flat toolbar/event list header'
    TabOrder = 17
    StyleElements = []
  end
  object dlgColor1: TColorDialog
    Left = 232
    Top = 240
  end
end
