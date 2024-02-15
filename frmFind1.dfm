object frmFind: TfrmFind
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Find'
  ClientHeight = 497
  ClientWidth = 484
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 486
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
  Position = poMainFormCenter
  StyleName = 'Windows'
  OnClose = FormClose
  DesignSize = (
    484
    497)
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 65
    Height = 23
    AutoSize = False
    Caption = 'Find What:'
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 8
    Top = 229
    Width = 189
    Height = 15
    Caption = 'Search results (DblClick to jump to):'
    Layout = tlCenter
  end
  object cbbFindWhat: TComboBox
    Left = 74
    Top = 8
    Width = 294
    Height = 23
    TabOrder = 0
    StyleName = 'Windows'
  end
  object btnFind: TButton
    Left = 374
    Top = 8
    Width = 100
    Height = 25
    Caption = 'Find All'
    Default = True
    TabOrder = 1
    StyleName = 'Windows'
    OnClick = btnFindClick
  end
  object btnClose: TButton
    Left = 374
    Top = 39
    Width = 100
    Height = 25
    Cancel = True
    Caption = 'Close [ESC]'
    TabOrder = 2
    StyleName = 'Windows'
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 37
    Width = 189
    Height = 76
    Caption = 'Search in:'
    TabOrder = 3
    StyleName = 'Windows'
    object rbAllConvos: TRadioButton
      Left = 16
      Top = 24
      Width = 166
      Height = 17
      Cursor = crHandPoint
      Caption = 'All Conversations'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbCurrentConvo: TRadioButton
      Left = 16
      Top = 47
      Width = 166
      Height = 17
      Cursor = crHandPoint
      Caption = 'Current conversation only'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 203
    Top = 37
    Width = 165
    Height = 76
    Caption = 'Options:'
    TabOrder = 4
    StyleName = 'Windows'
    object chkFindWholeWordOnly: TCheckBox
      Left = 16
      Top = 47
      Width = 151
      Height = 17
      Cursor = crHandPoint
      Caption = 'Find whole word only?'
      TabOrder = 0
    end
    object chkMatchCase: TCheckBox
      Left = 16
      Top = 24
      Width = 151
      Height = 17
      Cursor = crHandPoint
      Caption = 'Match case?'
      TabOrder = 1
    end
  end
  object lbSearchResults: TListBox
    Left = 8
    Top = 250
    Width = 469
    Height = 239
    Style = lbOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 20
    TabOrder = 5
    OnDblClick = lbSearchResultsDblClick
  end
  object edtSearchResults: TEdit
    Left = 219
    Top = 228
    Width = 257
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 6
  end
  object grpLookIn: TGroupBox
    Left = 8
    Top = 119
    Width = 469
    Height = 98
    Caption = 'Look in these events:'
    TabOrder = 7
    StyleName = 'Windows'
    object chkLookInSpeech: TCheckBox
      Left = 12
      Top = 24
      Width = 88
      Height = 17
      Cursor = crHandPoint
      Caption = 'Speech'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object chkLookInChoices: TCheckBox
      Left = 106
      Top = 24
      Width = 99
      Height = 17
      Cursor = crHandPoint
      Caption = 'Choice'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object chkLookInGoals: TCheckBox
      Left = 211
      Top = 24
      Width = 128
      Height = 17
      Cursor = crHandPoint
      Caption = 'Add/Complete goal'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object chkLookInComments: TCheckBox
      Left = 211
      Top = 47
      Width = 128
      Height = 17
      Cursor = crHandPoint
      Caption = 'Comment'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object chkLookInNotes: TCheckBox
      Left = 12
      Top = 47
      Width = 88
      Height = 17
      Cursor = crHandPoint
      Caption = 'Add Note'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object chkLookInAddSkillPts: TCheckBox
      Left = 106
      Top = 47
      Width = 99
      Height = 17
      Cursor = crHandPoint
      Caption = 'Add SkillPoints'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object btnCheckAll: TButton
      Left = 371
      Top = 15
      Width = 88
      Height = 25
      Caption = 'Check All'
      TabOrder = 6
      OnClick = btnCheckAllClick
    end
    object btnCheckSpeechOnly: TButton
      Left = 371
      Top = 39
      Width = 88
      Height = 25
      Caption = 'Only Speech'
      TabOrder = 7
      OnClick = btnCheckSpeechOnlyClick
    end
    object chkLookInCheckFlags: TCheckBox
      Left = 12
      Top = 70
      Width = 88
      Height = 17
      Cursor = crHandPoint
      Caption = 'CheckFlags'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object chkLookInSetFlags: TCheckBox
      Left = 106
      Top = 70
      Width = 88
      Height = 17
      Cursor = crHandPoint
      Caption = 'SetFlags'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
  end
end
