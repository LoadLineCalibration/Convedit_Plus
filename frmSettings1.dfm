object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ConEditPlus Settings'
  ClientHeight = 474
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
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
  object lblUserName: TLabel
    Left = 8
    Top = 14
    Width = 59
    Height = 15
    Caption = 'User name:'
  end
  object lblConversationsPath: TLabel
    Left = 8
    Top = 62
    Width = 121
    Height = 15
    Caption = 'Conversation File Path:'
  end
  object lblAudioPath: TLabel
    Left = 8
    Top = 109
    Width = 62
    Height = 15
    Caption = 'Audio Path:'
  end
  object pgcSettings: TPageControl
    Left = 4
    Top = 161
    Width = 446
    Height = 277
    ActivePage = Page1
    Style = tsFlatButtons
    TabOrder = 9
    object Page1: TTabSheet
      Caption = 'Events and conversations'
      object grpEventsList: TGroupBox
        Left = 1
        Top = 7
        Width = 434
        Height = 236
        Caption = ' Events/Events list/Conversations tree '
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object lblReorderKey: TLabel
          Left = 11
          Top = 207
          Width = 174
          Height = 22
          AutoSize = False
          Caption = 'Hold this key to reorder events:'
          Layout = tlCenter
        end
        object chkHighlightRelatedEvents: TCheckBox
          Left = 11
          Top = 115
          Width = 201
          Height = 17
          Caption = 'Highlight related events'
          TabOrder = 0
        end
        object chkHighlightspeechChoiceEventsNoneAudio: TCheckBox
          Left = 11
          Top = 92
          Width = 297
          Height = 17
          Caption = 'Highlight Speech/Choice events with missing audio'
          TabOrder = 1
        end
        object chkUseSelectionFrame: TCheckBox
          Left = 11
          Top = 23
          Width = 201
          Height = 17
          Hint = 'Use 3D frame in addition to selection color(s).'
          Caption = 'Use 3D frame for selected event?'
          TabOrder = 2
          OnClick = chkSelectEventsGradientFillClick
        end
        object chkFlatControlsMainWin: TCheckBox
          Left = 11
          Top = 69
          Width = 175
          Height = 17
          Hint = 
            'Toggle slight 3D effect for toolbar buttons and Events list head' +
            'er'
          Caption = 'Flat toolbar/event list header'
          TabOrder = 3
        end
        object cbbReorderEventsModKey: TComboBox
          Left = 180
          Top = 207
          Width = 69
          Height = 22
          Hint = 'Hold this key and drag selected event with mouse to change order'
          Style = csOwnerDrawVariable
          ItemIndex = 0
          TabOrder = 4
          Text = 'Ctrl'
          Items.Strings = (
            'Ctrl'
            'Shift'
            'Alt')
        end
        object chkAskConversationDelete: TCheckBox
          Left = 11
          Top = 161
          Width = 185
          Height = 17
          Caption = 'Ask for Conversation deletion'
          TabOrder = 5
        end
        object chkAskDeleteEvent: TCheckBox
          Left = 11
          Top = 138
          Width = 142
          Height = 17
          Caption = 'Ask For Event Deletion'
          TabOrder = 6
        end
        object chkDblClickTreeFlag: TCheckBox
          Left = 11
          Top = 184
          Width = 209
          Height = 17
          Hint = 'Toggle flag value in conversations tree by double-clicking it. '
          Caption = 'DblClick tree flag to change value'
          TabOrder = 7
        end
        object chkVerifyLabelNames: TCheckBox
          Left = 11
          Top = 46
          Width = 201
          Height = 17
          Hint = 
            'Check if Label of event is valid. Disable if you want to bypass ' +
            'that check.'
          Caption = 'Veryfy Event Labels?'
          TabOrder = 8
          OnClick = chkSelectEventsGradientFillClick
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'EventList colors'
      ImageIndex = 2
      object grpEventListColors: TGroupBox
        Left = 1
        Top = 7
        Width = 434
        Height = 236
        Caption = 'Override Event list colors and themes'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object shpPlayerBindNameColor: TShape
          Left = 172
          Top = 23
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clYellow
          OnMouseDown = shpPlayerBindNameColorMouseDown
        end
        object shpPlayerSpeechBGColor: TShape
          Left = 215
          Top = 47
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clYellow
          OnMouseDown = shpPlayerSpeechBGColorMouseDown
        end
        object shpGridColor: TShape
          Left = 151
          Top = 121
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clYellow
          OnMouseDown = shpGridColorMouseDown
        end
        object shpHighlightColorFrom: TShape
          Left = 255
          Top = 97
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clSilver
          OnMouseDown = shpHighlightColorFromMouseDown
        end
        object shpHighlightColorSingle: TShape
          Left = 255
          Top = 97
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clYellow
          OnMouseDown = shpHighlightColorSingleMouseDown
        end
        object shpHighlightColorTo: TShape
          Left = 281
          Top = 97
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Brush.Color = clGreen
          OnMouseDown = shpHighlightColorToMouseDown
        end
        object shpOriginalStyle: TShape
          Left = 9
          Top = 203
          Width = 167
          Height = 26
          Brush.Style = bsClear
          Pen.Color = clRed
          Pen.Width = 4
        end
        object chkPlayerBindNameColor: TCheckBox
          Left = 11
          Top = 23
          Width = 155
          Height = 17
          Hint = 
            'If checked, custom color for JCDenton bindname will be used. Oth' +
            'erwise use color from current theme'
          Caption = 'Player BindName Color:'
          TabOrder = 0
        end
        object chkPlayerSpeechBGColor: TCheckBox
          Left = 11
          Top = 46
          Width = 198
          Height = 17
          Caption = 'Player Speech background color:'
          TabOrder = 1
        end
        object btnResetToDefaults: TButton
          Left = 11
          Top = 205
          Width = 164
          Height = 23
          Hint = 'Set selection colors like in original ConEdit'
          Caption = 'Set original ConEdit style'
          TabOrder = 2
          WordWrap = True
          OnClick = btnResetToDefaultsClick
        end
        object chkSelectedTextIsWhite: TCheckBox
          Left = 11
          Top = 171
          Width = 209
          Height = 17
          Hint = 'Use this option if you want to use dark selection colors. '
          Caption = 'Selected event text is bright'
          TabOrder = 3
          OnClick = chkSelectEventsGradientFillClick
        end
        object chkSelectEventsGradientFill: TCheckBox
          Left = 11
          Top = 98
          Width = 238
          Height = 17
          Hint = 'If not checked, use single color to highlight events.'
          Caption = 'Highlight selected event with gradient fill'
          TabOrder = 4
          OnClick = chkSelectEventsGradientFillClick
        end
        object chkGridColor: TCheckBox
          Left = 11
          Top = 121
          Width = 134
          Height = 17
          Caption = 'Event separator color'
          TabOrder = 5
          OnClick = chkGridColorClick
        end
      end
    end
    object PageA: TTabSheet
      Caption = 'Misc. options'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 7
        Width = 434
        Height = 236
        Caption = ' Misc. settings '
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object lblMinutes: TLabel
          Left = 180
          Top = 23
          Width = 52
          Height = 17
          AutoSize = False
          Caption = 'minutes'
          Layout = tlCenter
        end
        object lblAutoSavePath: TLabel
          Left = 11
          Top = 53
          Width = 224
          Height = 15
          Caption = 'Conversation File Backup (AutoSave) Path:'
        end
        object chkEnableLogging: TCheckBox
          Left = 11
          Top = 206
          Width = 117
          Height = 17
          Hint = 
            'Enable logging of some events. Useful for debugging. '#13#10'Warning: ' +
            'This will slow down most of operations.'
          Caption = 'Enable logging'
          TabOrder = 0
          OnClick = chkSelectEventsGradientFillClick
        end
        object chkAutoSaveEnabled: TCheckBox
          Left = 11
          Top = 23
          Width = 114
          Height = 17
          Hint = 'Enable/disable AutoSave'
          Caption = 'AutoSave every'
          TabOrder = 1
        end
        object seAutoSaveMinutes: TSpinEdit
          Left = 119
          Top = 23
          Width = 55
          Height = 24
          AutoSize = False
          Color = clBtnFace
          EditorEnabled = False
          MaxLength = 2
          MaxValue = 20
          MinValue = 1
          TabOrder = 2
          Value = 5
        end
        object btnBrowseBakConFilePath: TButton
          Left = 323
          Top = 74
          Width = 58
          Height = 23
          Caption = 'Browse...'
          TabOrder = 3
          OnClick = btnBrowseBakConFilePathClick
        end
        object edtConFileBakPath: TEdit
          Left = 11
          Top = 74
          Width = 306
          Height = 23
          Hint = 
            'Important: If you created a new conversation file, '#13#10'you need to' +
            ' save it first; otherwise, AutoSave will not work.'#10#13#10'If you want' +
            ' to save backup files in the same directory as the '#13#10'loaded file' +
            ', leave this field empty.'
          HideSelection = False
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 4
        end
        object btnEmptyBakPath: TButton
          Left = 382
          Top = 74
          Width = 44
          Height = 23
          Caption = 'Empty'
          TabOrder = 5
          OnClick = btnEmptyBakPathClick
        end
      end
    end
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
    Hint = 
      'I don'#39't know what is this, this option was borrowed from OG ConE' +
      'dit.'#13#10'Maybe eventually I will remove it.'#13#10
    HideSelection = False
    PopupMenu = frmEventInsAdd.MemoPopup
    ReadOnly = True
    TabOrder = 1
  end
  object edtAudioPath: TEdit
    Left = 8
    Top = 127
    Width = 353
    Height = 23
    HideSelection = False
    PopupMenu = frmEventInsAdd.MemoPopup
    ReadOnly = True
    TabOrder = 2
  end
  object btnBrowseConFilePath: TButton
    Left = 367
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 3
    OnClick = btnBrowseConFilePathClick
  end
  object btnBrowseConAudioPath: TButton
    Left = 367
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Browse...'
    TabOrder = 4
    OnClick = btnBrowseConAudioPathClick
  end
  object btnOk: TButton
    Left = 368
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 267
    Top = 440
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = btnCancelClick
  end
  object btnClearLastFiles: TButton
    Left = 8
    Top = 440
    Width = 167
    Height = 25
    Caption = 'Clear recent files'
    TabOrder = 7
    OnClick = btnClearLastFilesClick
  end
  object btnPickUserName: TButton
    Left = 215
    Top = 33
    Width = 228
    Height = 25
    Caption = 'Use from current logged in user?'
    TabOrder = 8
    OnClick = btnPickUserNameClick
  end
  object dlgColor1: TColorDialog
    Left = 208
    Top = 111
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
