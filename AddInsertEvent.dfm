object frmEventInsAdd: TfrmEventInsAdd
  Left = 0
  Top = 0
  AlphaBlendValue = 128
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Event'
  ClientHeight = 598
  ClientWidth = 564
  Color = clBtnFace
  TransparentColorValue = 13160660
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.SheetOfGlass = True
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000000000000000000000000000000000000000000000
    0000467F1C7B1A300A1F00000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000579E23AA65B729EA2A4D113E000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000001424
    081860AE27C570CB2DFF69BE2AF93F7219782B4E11552B4E11552B4E11552B4E
    11552B4E1155223E0E33000000000000000000000000000000000000000062B1
    27DB6FC82DFF71CC2EFF71CC2EFF6DC52CFF6BC22BFF6BC22BFF6BC22BFF6BC2
    2BFF6BC22BFF68BD2AFD23400E330000000000000000000000000000000070CA
    2DFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
    2EFF71CC2EFF71CC2EFF335C14550000000031220A1F8A5F1E7B0000000071CC
    2EFF71CC2EFF69BE2AFF69BE2AFF6FC92DFF66B929FF6CC42CFF6CC42CFF66B9
    29FF6FC92DFF71CC2EFF345E15554F37113EC3872CEAAC7828AA0000000071CC
    2EFF71CC2EFFD2E2C1FFD2E2C1FF84CD4DFFE8ECE0FFA8D683FFA8D683FFE8EC
    E0FF84CD4DFF71CC2EFF889226B1CB8D2FF9DA9733FFBD832CC5281B081871CC
    2EFF71CC2EFFD5E8C2FFD5E8C2FF86D24EFFE9EDE0FFABDC84FFABDC84FFE9ED
    E0FF86D24EFF71CC2EFFB4A730FFDB9834FFDB9834FFD79532FFBE842BDB71CC
    2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
    2EFF71CC2EFF71CC2EFFB7A931FFDB9834FFDB9834FFDB9834FFD99733FF71CC
    2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
    2EFF71CC2EFF71CC2EFFB7A931FFDB9834FFDB9834FFDB9834FFDB9834FF6DC5
    2CDB71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC2EFF71CC
    2EFF71CC2EFF71CB2EFFC5A232FFDB9834FFDB9834FFDB9834FFDB9834FF192D
    0A18345F1553345F1555345F15556E81228EB7A932FFB7A932FFB7A932FFB7A9
    32FFB7A932FFC5A232FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FF0000
    000000000000000000000000000062441755DB9834FFDB9834FFDB9834FFDB98
    34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FF0000
    000000000000000000000000000062441755DB9834FFDB9834FFDB9834FFDB98
    34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FF0000
    00000000000000000000000000004E361233DB9834FDDB9834FFDB9834FFDB98
    34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFD59432DB0000
    0000000000000000000000000000000000005138133366471855664718556647
    185566471855664718556647185566471855664718556646185332230B189FFF
    00008FFF0000001F0000000F0000000900000001000000000000000000000000
    0000000000000000000000000000F0000000F0000000F0000000F8000000}
  PopupMode = pmExplicit
  Position = poOwnerFormCenter
  ShowHint = True
  StyleName = 'Windows'
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    564
    598)
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 2
    Width = 548
    Height = 106
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Event: '
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      548
      106)
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 106
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Event Label: '
      Layout = tlCenter
      StyleElements = []
    end
    object Label2: TLabel
      Left = 16
      Top = 47
      Width = 106
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Event Type: '
      Layout = tlCenter
      StyleElements = []
    end
    object lblStatus: TLabel
      Left = 16
      Top = 75
      Width = 519
      Height = 30
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblStatus'
      Color = clYellow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      Visible = False
      WordWrap = True
      StyleName = 'Windows'
    end
    object cmbEventType: TComboBox
      Left = 128
      Top = 48
      Width = 399
      Height = 22
      AutoCloseUp = True
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = True
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Speech'
      StyleElements = []
      StyleName = 'Windows'
      OnChange = cmbEventTypeChange
      Items.Strings = (
        'Speech'
        'Choice'
        'Set Flags'
        'Check Flags'
        'Check Object'
        'Transfer Object'
        'Move Camera'
        'Play Animation'
        'Buy/Sell/Trade'
        'Jump'
        'Random Label'
        'Trigger'
        'Add/Complete Goal'
        'Add Note'
        'Add Skill Points'
        'Add Credits'
        'Check Persona'
        'Comment'
        'End')
    end
    object editEventLabel: TEdit
      Left = 128
      Top = 20
      Width = 399
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      PopupMenu = MemoPopup
      TabOrder = 1
      StyleElements = []
      OnKeyPress = AllowFNameInput
    end
  end
  object EventsPages: TPageControl
    Left = 4
    Top = 114
    Width = 556
    Height = 410
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    RaggedRight = True
    Style = tsFlatButtons
    TabOrder = 1
    StyleElements = []
    object TabSheet1: TTabSheet
      Caption = 'Speech'
      object GroupBox20: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Speech: '
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label5: TLabel
          Left = 16
          Top = 28
          Width = 106
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Actor to Speak: '
          Layout = tlCenter
          StyleElements = []
        end
        object Label6: TLabel
          Left = 16
          Top = 56
          Width = 106
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Speaking To: '
          Layout = tlCenter
          StyleElements = []
        end
        object Label7: TLabel
          Left = 16
          Top = 85
          Width = 106
          Height = 22
          AutoSize = False
          Caption = 'Speech: '
          Layout = tlCenter
          StyleElements = []
        end
        object Label8: TLabel
          Left = 18
          Top = 326
          Width = 63
          Height = 17
          Anchors = [akLeft, akRight, akBottom]
          AutoSize = False
          Caption = 'Audio file: '
          Constraints.MinHeight = 17
          Constraints.MinWidth = 63
          Layout = tlCenter
          StyleElements = []
          ExplicitTop = 327
        end
        object memoSpeech: TMemo
          Left = 16
          Top = 106
          Width = 519
          Height = 214
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MemoPopup
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
        object cmbSpeakingFrom: TComboBox
          Left = 128
          Top = 28
          Width = 380
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          PopupMenu = MemoPopup
          TabOrder = 1
          StyleElements = []
          OnKeyPress = AllowFNameInput
        end
        object cmbSpeakingTo: TComboBox
          Left = 128
          Top = 57
          Width = 380
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          PopupMenu = MemoPopup
          TabOrder = 2
          StyleElements = []
          OnKeyPress = AllowFNameInput
        end
        object edtSpeechAudioFile: TEdit
          Left = 16
          Top = 347
          Width = 461
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          HideSelection = False
          ReadOnly = True
          TabOrder = 3
          StyleName = 'Windows'
        end
        object btnPlayAudioFile: TButton
          Left = 483
          Top = 347
          Width = 52
          Height = 22
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = 'Play'
          TabOrder = 4
          StyleName = 'Windows'
          OnClick = btnPlayAudioFileClick
        end
        object btnSpeakingFromActor: TButton
          Left = 508
          Top = 28
          Width = 21
          Height = 22
          Caption = '...'
          TabOrder = 5
          StyleElements = []
          OnClick = btnSpeakingFromActorClick
        end
        object btnSpeakingToActor: TButton
          Left = 508
          Top = 56
          Width = 21
          Height = 22
          Caption = '...'
          TabOrder = 6
          StyleElements = []
          OnClick = btnSpeakingToActorClick
        end
        object chkAutoSwapSpeaker: TCheckBox
          Left = 128
          Top = 83
          Width = 209
          Height = 17
          Cursor = crHandPoint
          Hint = 
            'Check to automatically swap "Actor to Speak" and "Speaking To" w' +
            'hen adding a new Speech event.'
          Caption = 'AutoSwap?'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Choice'
      ImageIndex = 1
      object GroupBox19: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Choice: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object btnAddChoice: TButton
          Left = 14
          Top = 303
          Width = 99
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Add Choice'
          TabOrder = 1
          StyleElements = []
          OnClick = btnAddChoiceClick
        end
        object btnMoveDownChoice: TButton
          Left = 455
          Top = 333
          Width = 80
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Move down'
          Enabled = False
          TabOrder = 2
          StyleElements = []
          OnClick = btnMoveDownChoiceClick
        end
        object btnEditChoice: TButton
          Left = 119
          Top = 303
          Width = 82
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Edit...'
          Enabled = False
          TabOrder = 3
          StyleElements = []
          OnClick = btnEditChoiceClick
        end
        object btnDeleteChoice: TButton
          Left = 207
          Top = 302
          Width = 98
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Delete choice'
          Enabled = False
          TabOrder = 4
          StyleElements = []
          OnClick = btnDeleteChoiceClick
        end
        object btnMoveUpChoice: TButton
          Left = 455
          Top = 302
          Width = 80
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Move Up'
          Enabled = False
          TabOrder = 5
          StyleElements = []
          OnClick = btnMoveUpChoiceClick
        end
        object chkClearScreen: TCheckBox
          Left = 16
          Top = 334
          Width = 241
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Clear Screen before displaying choices?'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 6
          StyleElements = []
        end
        object lvChoiceList: TListView
          Left = 16
          Top = 24
          Width = 521
          Height = 272
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = <
            item
              Caption = 'Choice (Text)'
              Width = 390
            end
            item
              Caption = 'Value (Label)'
              Width = 90
            end
            item
              Caption = 'idx'
              Width = 30
            end>
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FullDrag = True
          GridLines = True
          HideSelection = False
          StyleName = 'Windows'
          RowSelect = True
          ParentFont = False
          SmallImages = ilSpecial
          TabOrder = 0
          ViewStyle = vsReport
          OnChange = lvChoiceListChange
          OnDblClick = btnEditChoiceClick
          OnEditing = lvSetFlagsEditing
        end
        object chkDblClickToPlay: TCheckBox
          Left = 16
          Top = 357
          Width = 194
          Height = 17
          Hint = 
            'Use double click to play selected choice audio, otherwise edit t' +
            'he choice item as usually. '#13#10'Works only if audio file is present' +
            '.'
          Anchors = [akRight, akBottom]
          Caption = 'DblClick to play choice audio?'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 7
          WordWrap = True
          StyleName = 'Windows'
          OnClick = chkDblClickToPlayClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Set Flags'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Set Flags: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object lblDblClickTip: TLabel
          Left = 332
          Top = 335
          Width = 203
          Height = 28
          Anchors = [akRight, akBottom]
          AutoSize = False
          Caption = 'Double click on flag name to change '#13#10'value (true/false)'
          ExplicitLeft = 330
          ExplicitTop = 336
        end
        object lvSetFlags: TListView
          Left = 16
          Top = 24
          Width = 519
          Height = 305
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = <
            item
              Caption = 'Flag Name'
              Width = 300
            end
            item
              Caption = 'Value'
              Width = 90
            end
            item
              Caption = 'Expiration'
              Width = 70
            end
            item
              Caption = 'Index'
            end>
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          FullDrag = True
          GridLines = True
          HideSelection = False
          MultiSelect = True
          StyleElements = []
          StyleName = 'Windows'
          RowSelect = True
          ParentFont = False
          SmallImages = ilSpecial
          TabOrder = 0
          ViewStyle = vsReport
          OnChange = lvSetFlagsChange
          OnDblClick = lvSetFlagsDblClick
          OnEditing = lvSetFlagsEditing
        end
        object btnAddSetFlag: TButton
          Left = 22
          Top = 335
          Width = 111
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Add Flag'
          TabOrder = 1
          StyleElements = []
          OnClick = btnAddSetFlagClick
        end
        object btnDeleteSetFlag: TButton
          Left = 139
          Top = 335
          Width = 111
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Delete selected'
          Enabled = False
          TabOrder = 2
          StyleElements = []
          OnClick = btnDeleteSetFlagClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Check Flags'
      ImageIndex = 3
      object GroupBox18: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Check Flags: '
        Color = 13226452
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label9: TLabel
          Left = 113
          Top = 352
          Width = 135
          Height = 15
          Anchors = [akRight, akBottom]
          Caption = 'If Flags Set them jump to:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          StyleElements = []
          ExplicitTop = 353
        end
        object lvCheckFlags: TListView
          Left = 16
          Top = 24
          Width = 519
          Height = 288
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = <
            item
              Caption = 'Flag Name'
              Width = 380
            end
            item
              Caption = 'Value'
              Width = 80
            end
            item
              Caption = 'Index'
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatScrollBars = True
          FullDrag = True
          GridLines = True
          HideSelection = False
          MultiSelect = True
          StyleName = 'Windows'
          RowSelect = True
          ParentFont = False
          SmallImages = ilSpecial
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvCheckFlagsDblClick
          OnEditing = lvSetFlagsEditing
        end
        object btnAddCheckFlag: TButton
          Left = 22
          Top = 318
          Width = 111
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Add Flag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          StyleName = 'Windows'
          OnClick = btnAddCheckFlagClick
        end
        object btnDeleteCheckFlag: TButton
          Left = 139
          Top = 318
          Width = 111
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Delete selected'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          StyleName = 'Windows'
          OnClick = btnDeleteCheckFlagClick
        end
        object cmbChkFlgJumpToLabel: TComboBox
          Left = 264
          Top = 349
          Width = 271
          Height = 23
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Check Object'
      ImageIndex = 4
      object GroupBox17: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Check Object: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label10: TLabel
          Left = 24
          Top = 76
          Width = 241
          Height = 22
          AutoSize = False
          Caption = 'Object to Look for:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label11: TLabel
          Left = 24
          Top = 148
          Width = 249
          Height = 22
          AutoSize = False
          Caption = 'If Object NOT found, then Jump to Label'
          Layout = tlCenter
          StyleElements = []
        end
        object cmbObjectToCheck: TComboBox
          Left = 24
          Top = 96
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object cmbObjNotFoundJumpTo: TComboBox
          Left = 24
          Top = 168
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object btnFindObject: TButton
          Left = 397
          Top = 96
          Width = 21
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 2
          StyleElements = []
          OnClick = btnFindObjectClick
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Transfer Object'
      ImageIndex = 5
      object GroupBox16: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Transfer Object: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label12: TLabel
          Left = 16
          Top = 28
          Width = 241
          Height = 22
          AutoSize = False
          Caption = 'Object to transfer:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label13: TLabel
          Left = 16
          Top = 172
          Width = 241
          Height = 22
          AutoSize = False
          Caption = 'Transfer To:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label14: TLabel
          Left = 16
          Top = 244
          Width = 241
          Height = 22
          AutoSize = False
          Caption = 'Transfer From:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label15: TLabel
          Left = 16
          Top = 316
          Width = 241
          Height = 22
          AutoSize = False
          Caption = 'On Fail Jump to:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label16: TLabel
          Left = 16
          Top = 97
          Width = 297
          Height = 22
          AutoSize = False
          Caption = 'Number of items to transfer (only if stackable!)'
          Layout = tlCenter
          StyleElements = []
        end
        object cmbObjectToTransfer: TComboBox
          Left = 16
          Top = 48
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object cmbTransferObjectTo: TComboBox
          Left = 16
          Top = 192
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object cmbTransferObjectFrom: TComboBox
          Left = 16
          Top = 264
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object cmbTransferObjectFailLabel: TComboBox
          Left = 16
          Top = 336
          Width = 367
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object seAmountToTransfer: TSpinEdit
          Left = 16
          Top = 120
          Width = 367
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          EditorEnabled = False
          MaxValue = 0
          MinValue = 0
          StyleElements = []
          TabOrder = 4
          Value = 0
          OnChange = editConditionValueChange
        end
        object btnObjectToTransfer: TButton
          Left = 389
          Top = 48
          Width = 21
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 5
          StyleElements = []
          OnClick = btnObjectToTransferClick
        end
        object btnObjTransferToPawn: TButton
          Left = 389
          Top = 192
          Width = 21
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 6
          StyleElements = []
          OnClick = btnObjTransferToPawnClick
        end
        object btnTransferObjFrom: TButton
          Left = 389
          Top = 264
          Width = 21
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 7
          StyleElements = []
          OnClick = btnTransferObjFromClick
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Move Camera'
      ImageIndex = 6
      object GroupBox15: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Move Camera: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label17: TLabel
          Left = 48
          Top = 308
          Width = 329
          Height = 22
          AutoSize = False
          Caption = 'Camera Transition (Not Implemented in game code?):'
          Layout = tlCenter
          StyleElements = []
        end
        object rbPredefinedCameraPos: TRadioButton
          Left = 48
          Top = 56
          Width = 441
          Height = 17
          Cursor = crHandPoint
          Caption = 'Predefined camera position'
          Checked = True
          TabOrder = 0
          TabStop = True
          StyleElements = []
          OnClick = rbPredefinedCameraPosClick
        end
        object cbbPredefinedCameraPos: TComboBox
          Left = 96
          Top = 79
          Width = 399
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Side, Tight'
          StyleElements = []
          StyleName = 'Windows'
          OnChange = cmbEventTypeChange
          Items.Strings = (
            'Side, Tight'
            'Side, Mid'
            'Side, Above'
            'Side, Above 45 Degrees'
            'Shoulders, Left'
            'Shoulders, Right'
            'Head Shot, Tight'
            'Head Shot, Mid'
            'Head Shot, Left'
            'Head Shot, Right'
            'Head Shot, Slight Right'
            'Head Shot Slight Left'
            'Straight Above, Looking Down'
            'Straight Below, Looking Up'
            'Below, Looking Up')
        end
        object rbSpecialCameraPos: TRadioButton
          Left = 48
          Top = 152
          Width = 465
          Height = 17
          Cursor = crHandPoint
          Caption = 
            'Specify Camera Position (not implemented in game code? Also can ' +
            'lead to crash)'
          TabOrder = 2
          StyleElements = []
          OnClick = rbSpecialCameraPosClick
        end
        object rbRandomCameraPos: TRadioButton
          Left = 48
          Top = 248
          Width = 161
          Height = 17
          Cursor = crHandPoint
          Caption = 'Random camera position'
          TabOrder = 3
          StyleElements = []
          OnClick = rbRandomCameraPosClick
        end
        object btnEditCameraSpecialPos: TButton
          Left = 96
          Top = 175
          Width = 209
          Height = 25
          Caption = 'Edit Camera Properties...'
          TabOrder = 4
          StyleElements = []
          OnClick = btnEditCameraSpecialPosClick
        end
        object cbbCameraTransition: TComboBox
          Left = 48
          Top = 327
          Width = 217
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 5
          StyleElements = []
          StyleName = 'Windows'
          OnChange = cmbEventTypeChange
          Items.Strings = (
            'Jump'
            'Spline')
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Play Animation'
      ImageIndex = 7
      object GroupBox14: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Play Animation (Implemented in TNM?): '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label18: TLabel
          Left = 32
          Top = 44
          Width = 329
          Height = 22
          AutoSize = False
          Caption = 'Pawn To Animate'
          Layout = tlCenter
          StyleElements = []
        end
        object Label19: TLabel
          Left = 32
          Top = 108
          Width = 329
          Height = 22
          AutoSize = False
          Caption = 'Sequence to Play:'
          Layout = tlCenter
          StyleElements = []
        end
        object cmbPawnToAnimate: TComboBox
          Left = 32
          Top = 64
          Width = 399
          Height = 23
          AutoDropDown = True
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          PopupMenu = MemoPopup
          TabOrder = 0
          StyleElements = []
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object cmbAnimSeq: TComboBox
          Left = 32
          Top = 128
          Width = 399
          Height = 23
          AutoCloseUp = True
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
          Items.Strings = (
            'ToDo: Add list of animations here')
        end
        object GroupBox21: TGroupBox
          Left = 32
          Top = 156
          Width = 393
          Height = 105
          Caption = ' Animation Duration: '
          TabOrder = 2
          StyleElements = []
          object chkWaitFinishAnim: TCheckBox
            Left = 175
            Top = 24
            Width = 200
            Height = 17
            Caption = 'Wait for Animation to finish'
            TabOrder = 0
            StyleElements = []
          end
          object rbPlayAnimOnce: TRadioButton
            Left = 24
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Play Once'
            Checked = True
            TabOrder = 1
            TabStop = True
            StyleElements = []
            OnClick = rbPlayAnimOnceClick
          end
          object rbLoopAnim: TRadioButton
            Left = 24
            Top = 64
            Width = 113
            Height = 17
            Caption = 'Loop Animation'
            TabOrder = 2
            StyleElements = []
            OnClick = rbLoopAnimClick
          end
        end
        object grpAnimTimed: TGroupBox
          Left = 32
          Top = 275
          Width = 393
          Height = 62
          TabOrder = 3
          StyleElements = []
          DesignSize = (
            393
            62)
          object Label20: TLabel
            Left = 24
            Top = 24
            Width = 51
            Height = 22
            AutoSize = False
            Caption = 'Play for:                       Seconds'
            Layout = tlCenter
            StyleElements = []
          end
          object Label21: TLabel
            Left = 159
            Top = 24
            Width = 106
            Height = 22
            AutoSize = False
            Caption = 'Seconds'
            Layout = tlCenter
            StyleElements = []
          end
          object edtPlayAnimSeconds: TSpinEdit
            Left = 72
            Top = 23
            Width = 81
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            EditorEnabled = False
            MaxValue = 0
            MinValue = 0
            StyleElements = []
            TabOrder = 0
            Value = 0
            OnChange = editConditionValueChange
          end
        end
        object chkAnimTimed: TCheckBox
          Left = 56
          Top = 275
          Width = 113
          Height = 17
          Caption = 'Animation Timed:'
          TabOrder = 4
          StyleElements = []
          OnClick = chkAnimTimedClick
        end
        object btnPawnToAnim: TButton
          Left = 437
          Top = 64
          Width = 21
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 5
          StyleElements = []
          OnClick = btnPawnToAnimClick
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Buy/Sell/Trade'
      ImageIndex = 8
      object GroupBox13: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Buy/Sell/Trade: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        object Label4: TLabel
          Left = 2
          Top = 17
          Width = 544
          Height = 358
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'Not Implemented in game code, only for compatibility (maybe?)'
          Layout = tlCenter
          StyleElements = []
          ExplicitTop = 15
          ExplicitWidth = 542
          ExplicitHeight = 360
        end
      end
    end
    object Jump: TTabSheet
      Caption = 'Jump'
      ImageIndex = 9
      object GroupBox12: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Jump: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label22: TLabel
          Left = 32
          Top = 108
          Width = 329
          Height = 22
          AutoSize = False
          Caption = 'Jump to Label:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label23: TLabel
          Left = 32
          Top = 44
          Width = 329
          Height = 22
          AutoSize = False
          Caption = 'Conversation:'
          Layout = tlCenter
          StyleElements = []
        end
        object cboJumpLabel: TComboBox
          Left = 32
          Top = 128
          Width = 399
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          StyleElements = []
          StyleName = 'Windows'
          OnChange = cmbEventTypeChange
          OnKeyPress = AllowFNameInput
        end
        object cboJumpConv: TComboBox
          Left = 32
          Top = 64
          Width = 399
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          StyleElements = []
          StyleName = 'Windows'
          OnChange = cboJumpConvChange
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Random Label'
      ImageIndex = 10
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Jump to Random Label: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object lblTargets: TLabel
          Left = 37
          Top = 32
          Width = 71
          Height = 15
          Caption = 'Label Targets:'
          StyleElements = []
        end
        object Label25: TLabel
          Left = 38
          Top = 320
          Width = 36
          Height = 15
          Anchors = [akRight, akBottom]
          Caption = 'Labels:'
          StyleElements = []
          ExplicitTop = 321
        end
        object btnAddRandomLabel: TButton
          Left = 426
          Top = 340
          Width = 111
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Add Label'
          Enabled = False
          TabOrder = 0
          StyleElements = []
          OnClick = btnAddRandomLabelClick
        end
        object btnRemoveAllRandomLabels: TButton
          Left = 426
          Top = 99
          Width = 111
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Remove All'
          TabOrder = 1
          StyleElements = []
          OnClick = btnRemoveAllRandomLabelsClick
        end
        object btnRemoveCurrentRandomLabel: TButton
          Left = 426
          Top = 68
          Width = 111
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Remove'
          TabOrder = 2
          StyleElements = []
          OnClick = btnRemoveCurrentRandomLabelClick
        end
        object chkCycleEvents: TCheckBox
          Left = 38
          Top = 295
          Width = 97
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Cycle Events'
          TabOrder = 3
          StyleElements = []
          OnClick = chkCycleEventsClick
        end
        object chkCycleOnce: TCheckBox
          Left = 158
          Top = 295
          Width = 145
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Only Cycle Once'
          Enabled = False
          TabOrder = 4
          StyleElements = []
        end
        object chkRandomAfterCycle: TCheckBox
          Left = 289
          Top = 295
          Width = 131
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Random After cycle'
          Enabled = False
          TabOrder = 5
          StyleElements = []
        end
        object lstRandomLabels: TListBox
          Left = 38
          Top = 48
          Width = 382
          Height = 241
          Style = lbOwnerDrawFixed
          Anchors = [akLeft, akTop, akRight, akBottom]
          ExtendedSelect = False
          ItemHeight = 20
          TabOrder = 6
          StyleElements = []
        end
        object cmbEventRandomLabels: TComboBox
          Left = 38
          Top = 340
          Width = 382
          Height = 23
          AutoCloseUp = True
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          Ctl3D = True
          ParentCtl3D = False
          PopupMenu = MemoPopup
          TabOrder = 7
          StyleElements = []
          StyleName = 'Windows'
          OnChange = cmbEventRandomLabelsChange
          OnClick = cmbEventRandomLabelsChange
          OnEnter = cmbEventRandomLabelsChange
          OnKeyDown = cmbEventRandomLabelsKeyDown
          OnKeyPress = AllowFNameInput
        end
        object Panel1: TPanel
          Left = 78
          Top = 327
          Width = 459
          Height = 3
          Anchors = [akRight, akBottom]
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvLowered
          DoubleBuffered = True
          FullRepaint = False
          ParentDoubleBuffered = False
          TabOrder = 8
          StyleElements = []
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Trigger'
      ImageIndex = 11
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Trigger: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        object Label26: TLabel
          Left = 40
          Top = 56
          Width = 59
          Height = 15
          Caption = 'Trigger tag:'
          StyleElements = []
        end
        object editTriggerTag: TEdit
          Left = 40
          Top = 72
          Width = 257
          Height = 23
          PopupMenu = MemoPopup
          TabOrder = 0
          Text = 'editTriggerTag'
          StyleElements = []
          OnKeyPress = AllowFNameInput
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Add/Complete Goal'
      ImageIndex = 12
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Add/Complete Goal: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        object lblGoalName: TLabel
          Left = 40
          Top = 56
          Width = 62
          Height = 15
          Caption = 'Goal Name:'
          StyleElements = []
        end
        object editGoalName: TEdit
          Left = 40
          Top = 76
          Width = 257
          Height = 23
          HideSelection = False
          PopupMenu = MemoPopup
          TabOrder = 0
          StyleElements = []
          OnKeyPress = AllowFNameInput
        end
        object rbGoalCompleted: TRadioButton
          Left = 56
          Top = 336
          Width = 113
          Height = 17
          Cursor = crHandPoint
          Caption = 'Goal Completed'
          TabOrder = 2
          StyleElements = []
          OnClick = rbGoalCompletedClick
        end
        object grpGoalControls: TGroupBox
          Left = 40
          Top = 112
          Width = 465
          Height = 202
          TabOrder = 3
          StyleElements = []
          object chkPrimaryGoal: TCheckBox
            Left = 16
            Top = 174
            Width = 97
            Height = 17
            Cursor = crHandPoint
            Caption = 'Primary Goal'
            TabOrder = 0
            StyleElements = []
          end
          object memoGoalText: TMemo
            Left = 16
            Top = 16
            Width = 433
            Height = 152
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = MemoPopup
            TabOrder = 1
            StyleElements = []
          end
        end
        object rbAddGoal: TRadioButton
          Left = 56
          Top = 110
          Width = 81
          Height = 17
          Cursor = crHandPoint
          Caption = 'Add Goal:'
          Checked = True
          TabOrder = 1
          TabStop = True
          StyleElements = []
          OnClick = rbAddGoalClick
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Add Note'
      ImageIndex = 13
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Add Note: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label27: TLabel
          Left = 16
          Top = 29
          Width = 106
          Height = 22
          AutoSize = False
          Caption = 'Note Text:'
          Layout = tlCenter
          StyleElements = []
        end
        object memoNoteText: TMemo
          Left = 16
          Top = 48
          Width = 519
          Height = 312
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MemoPopup
          ScrollBars = ssVertical
          TabOrder = 0
          StyleElements = []
        end
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Add Skill Points'
      ImageIndex = 14
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Add Skill Points: '
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label28: TLabel
          Left = 16
          Top = 93
          Width = 313
          Height = 22
          AutoSize = False
          Caption = 'Optional Skill Point Award Message:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label29: TLabel
          Left = 16
          Top = 35
          Width = 313
          Height = 22
          AutoSize = False
          Caption = 'Number of Skill Points to Add:'
          Layout = tlCenter
          StyleElements = []
        end
        object memoSkillPointMessage: TMemo
          Left = 16
          Top = 114
          Width = 519
          Height = 246
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MemoPopup
          ScrollBars = ssVertical
          TabOrder = 0
          StyleElements = []
        end
        object editSkillPointsAmount: TSpinEdit
          Left = 16
          Top = 55
          Width = 239
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          EditorEnabled = False
          MaxValue = 0
          MinValue = 0
          StyleElements = []
          TabOrder = 1
          Value = -1
          OnChange = editConditionValueChange
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Add Credits'
      ImageIndex = 15
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Add Credits: '
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label30: TLabel
          Left = 16
          Top = 35
          Width = 313
          Height = 22
          AutoSize = False
          Caption = 'Number of Credits to Add:'
          Layout = tlCenter
          StyleElements = []
        end
        object Label31: TLabel
          Left = 16
          Top = 75
          Width = 313
          Height = 22
          AutoSize = False
          Caption = '(can be negative, if you want to subtract), e.g. -252'
          Layout = tlCenter
          StyleElements = []
        end
        object seAddCredits: TSpinEdit
          Left = 16
          Top = 55
          Width = 239
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          EditorEnabled = False
          MaxValue = 0
          MinValue = 0
          StyleElements = []
          TabOrder = 0
          Value = 0
        end
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Check Persona'
      ImageIndex = 16
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Check Persona: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        object Label32: TLabel
          Left = 40
          Top = 124
          Width = 56
          Height = 15
          Caption = 'Condition:'
          Color = 13226708
          ParentColor = False
          StyleElements = []
        end
        object Label33: TLabel
          Left = 40
          Top = 180
          Width = 31
          Height = 15
          Caption = 'Value:'
          Color = 13226964
          ParentColor = False
          StyleElements = []
        end
        object Label34: TLabel
          Left = 40
          Top = 252
          Width = 92
          Height = 15
          Caption = 'Label to Jump To:'
          Color = 13226964
          ParentColor = False
          StyleElements = []
        end
        object Label24: TLabel
          Left = 247
          Top = 200
          Width = 286
          Height = 89
          AutoSize = False
          Caption = 
            'Use mouse wheel to increase/decrease value by 1.'#13#10'Hold Ctrl to i' +
            'ncrease/decrease value by 10.'#13#10'Hold Shift to increase/decrease v' +
            'alue by 100.'
          WordWrap = True
        end
        object GB_AttrToCheck: TGroupBox
          Left = 40
          Top = 48
          Width = 337
          Height = 57
          Caption = 'Attribute To Check: '
          TabOrder = 0
          StyleName = 'Windows'
          object rbCreditsCheck: TRadioButton
            Left = 16
            Top = 24
            Width = 113
            Height = 17
            Cursor = crHandPoint
            Caption = 'Credits'
            Checked = True
            TabOrder = 0
            TabStop = True
            StyleElements = []
          end
          object rbHealthCheck: TRadioButton
            Left = 135
            Top = 24
            Width = 113
            Height = 17
            Cursor = crHandPoint
            Caption = 'Health'
            TabOrder = 1
            StyleElements = []
          end
          object rbSkillPointsCheck: TRadioButton
            Left = 248
            Top = 24
            Width = 86
            Height = 17
            Cursor = crHandPoint
            Caption = 'Skill Points'
            TabOrder = 2
            StyleElements = []
          end
        end
        object cmbCheckCondition: TComboBox
          Left = 40
          Top = 144
          Width = 201
          Height = 23
          Style = csDropDownList
          TabOrder = 1
          StyleName = 'Windows'
          Items.Strings = (
            ' < (Less Than)'
            ' <= (Less Than or Equal To)'
            ' = (Equal To)'
            ' >= (Greate than or equal to)'
            ' > (Greater than)')
        end
        object cmbCheckLabelJump: TComboBox
          Left = 40
          Top = 272
          Width = 201
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          StyleName = 'Windows'
          OnKeyPress = AllowFNameInput
        end
        object editConditionValue: TSpinEdit
          Left = 40
          Top = 200
          Width = 201
          Height = 24
          AutoSelect = False
          AutoSize = False
          MaxValue = 0
          MinValue = 0
          StyleName = 'Windows'
          TabOrder = 3
          Value = 0
          OnChange = editConditionValueChange
        end
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'Comment'
      ImageIndex = 17
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' Comment: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          548
          377)
        object Label35: TLabel
          Left = 16
          Top = 29
          Width = 106
          Height = 22
          AutoSize = False
          Caption = 'Comment Text:'
          Layout = tlCenter
          StyleElements = []
        end
        object memoCommentText: TMemo
          Left = 16
          Top = 48
          Width = 519
          Height = 312
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MemoPopup
          ScrollBars = ssVertical
          TabOrder = 0
          StyleElements = []
        end
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'End'
      ImageIndex = 18
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 548
        Height = 377
        Align = alClient
        Caption = ' End: '
        Color = 13226452
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        StyleElements = []
        object Label3: TLabel
          Left = 2
          Top = 17
          Width = 544
          Height = 358
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'End Conversation'
          Layout = tlCenter
          StyleElements = []
          ExplicitLeft = 144
          ExplicitTop = 120
          ExplicitWidth = 95
          ExplicitHeight = 14
        end
      end
    end
  end
  object btnClose: TButton
    Left = 445
    Top = 565
    Width = 111
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 2
    StyleName = 'Windows'
    OnClick = btnCloseClick
  end
  object btnPrevEvent: TButton
    Left = 128
    Top = 534
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Previous Event'
    TabOrder = 3
    StyleName = 'Windows'
    OnClick = btnPrevEventClick
  end
  object btnNextEvent: TButton
    Left = 128
    Top = 565
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Next Event'
    TabOrder = 4
    StyleName = 'Windows'
    OnClick = btnNextEventClick
  end
  object btnAddEvent: TButton
    Left = 8
    Top = 534
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Add Event'
    TabOrder = 5
    StyleName = 'Windows'
    OnClick = btnAddEventClick
  end
  object btnInsertEvent: TButton
    Left = 8
    Top = 565
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Insert Event'
    TabOrder = 6
    StyleName = 'Windows'
  end
  object chAlphaBlend: TCheckBox
    Left = 296
    Top = 565
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = 'Alpha Blend?'
    TabOrder = 7
    WordWrap = True
    StyleName = 'Windows'
    OnClick = chAlphaBlendClick
  end
  object btnUpdate: TBitBtn
    Left = 445
    Top = 530
    Width = 111
    Height = 29
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = '&Update '
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 8
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnUpdateClick
  end
  object btnHelp: TBitBtn
    Left = 248
    Top = 565
    Width = 25
    Height = 25
    Cursor = crHelp
    Hint = 'Click here to get help about current event'
    Anchors = [akRight, akBottom]
    Caption = '?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
    StyleName = 'Windows'
    OnClick = btnHelpClick
  end
  object mp1: TMediaPlayer
    Left = 192
    Top = 477
    Width = 57
    Height = 30
    VisibleButtons = [btPlay, btPause]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 10
    OnNotify = mp1Notify
  end
  object mp3VolumeControl: TTrackBar
    Left = 248
    Top = 539
    Width = 153
    Height = 23
    Cursor = crSizeWE
    Hint = 'Speech volume control'
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Anchors = [akRight, akBottom]
    DoubleBuffered = True
    Max = 65535
    ParentDoubleBuffered = False
    PageSize = 1
    Position = 65535
    PositionToolTip = ptLeft
    ShowSelRange = False
    TabOrder = 11
    TickMarks = tmBoth
    TickStyle = tsNone
    StyleName = 'Windows'
    OnChange = mp3VolumeControlChange
  end
  object mp3Pos_pb: TProgressBar
    Left = 8
    Top = 110
    Width = 548
    Height = 8
    Anchors = [akLeft, akTop, akRight]
    DoubleBuffered = True
    ParentDoubleBuffered = False
    Smooth = True
    BarColor = 12615680
    BackgroundColor = clCream
    Step = 1
    TabOrder = 12
    StyleName = 'Windows'
  end
  object MemoPopup: TPopupMenu
    OnPopup = MemoPopupPopup
    Left = 272
    Top = 344
    object Cut1: TMenuItem
      Action = EditCut1
    end
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Paste1: TMenuItem
      Action = EditPaste1
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Action = EditDelete1
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SelectAll1: TMenuItem
      Action = EditSelectAll1
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Undo1: TMenuItem
      Action = EditUndo1
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ChangeMemoFont: TMenuItem
      Caption = 'Font...'
      OnClick = ChangeMemoFontClick
    end
    object QFont: TMenuItem
      Caption = 'Quick Font'
      object Tahoma10: TMenuItem
        Caption = 'Tahoma, 10'
        OnClick = Tahoma10Click
      end
      object Consolas10: TMenuItem
        Caption = 'Consolas, 10'
        OnClick = Consolas10Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object DefaultTahoma91: TMenuItem
        Caption = 'Default (Tahoma, 9)'
        OnClick = DefaultTahoma91Click
      end
    end
  end
  object ActionList1: TActionList
    Left = 80
    Top = 240
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
  end
  object FontDlgMemo: TFontDialog
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 512
    Top = 264
  end
  object ilSpecial: TImageList
    Height = 20
    Width = 20
    Left = 146
    Top = 434
    Bitmap = {
      494C010101002000040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBBBCBC007D7D7D007D7D7D007E7E7E007E7E
      7E00BEBEBE00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7D7D7D000101010001010100010101000000
      00007E7E7E00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7D7D7D000101010001010100010101000101
      01007E7E7E00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7E7E7E000101010001010100010101000101
      01007D7D7D00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7E7E7E000000000001010100010101000101
      01007D7D7D00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBEBEBE007E7E7E007E7E7E007D7D7D007D7D
      7D00BBBCBC00000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF00FFFFF0000000000000000000FFFFF000
      0000000000000000FFFFF0000000000000000000FFFFF0000000000000000000
      FFFFF0000000000000000000FFFFF0000000000000000000FFFFF00000000000
      00000000FE07F0000000000000000000FE07F0000000000000000000FE07F000
      0000000000000000FE07F0000000000000000000FE07F0000000000000000000
      FE07F0000000000000000000FFFFF0000000000000000000FFFFF00000000000
      00000000FFFFF0000000000000000000FFFFF0000000000000000000FFFFF000
      0000000000000000FFFFF0000000000000000000FFFFF0000000000000000000
      00000000000000000000000000000000000000000000}
  end
  object mp3posUpdateTimer: TTimer
    Enabled = False
    Interval = 35
    OnTimer = mp3posUpdateTimerTimer
    Left = 168
    Top = 246
  end
end
