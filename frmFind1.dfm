object frmFind: TfrmFind
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Find'
  ClientHeight = 165
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  Scaled = False
  StyleElements = []
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 73
    Height = 14
    AutoSize = False
    Caption = 'Find What:'
    StyleElements = []
  end
  object Label2: TLabel
    Left = 8
    Top = 49
    Width = 73
    Height = 14
    AutoSize = False
    Caption = 'Events:'
    StyleElements = []
  end
  object cbbFindWhat: TComboBox
    Left = 87
    Top = 8
    Width = 178
    Height = 22
    TabOrder = 0
    StyleElements = []
  end
  object cbbFindInEvents: TComboBox
    Left = 87
    Top = 41
    Width = 178
    Height = 22
    Style = csDropDownList
    TabOrder = 1
    StyleElements = []
  end
  object btnFind: TButton
    Left = 283
    Top = 8
    Width = 91
    Height = 25
    Caption = 'Find Next'
    TabOrder = 2
    StyleElements = []
  end
  object btnClose: TButton
    Left = 283
    Top = 39
    Width = 91
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    StyleElements = []
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 85
    Width = 217
    Height = 73
    Caption = 'Search in:'
    TabOrder = 4
    StyleElements = []
    object rbAllConvos: TRadioButton
      Left = 16
      Top = 24
      Width = 185
      Height = 17
      Cursor = crHandPoint
      Caption = 'All Conversations'
      TabOrder = 0
      StyleElements = []
    end
    object rbCurrentConvo: TRadioButton
      Left = 16
      Top = 47
      Width = 185
      Height = 17
      Cursor = crHandPoint
      Caption = 'Current conversation only'
      Checked = True
      TabOrder = 1
      TabStop = True
      StyleElements = []
    end
  end
  object chkFindWholeWordOnly: TCheckBox
    Left = 231
    Top = 109
    Width = 151
    Height = 17
    Cursor = crHandPoint
    Caption = 'Find whole word only?'
    TabOrder = 5
  end
  object chkMatchCase: TCheckBox
    Left = 231
    Top = 132
    Width = 151
    Height = 17
    Cursor = crHandPoint
    Caption = 'Match case?'
    TabOrder = 6
  end
end
