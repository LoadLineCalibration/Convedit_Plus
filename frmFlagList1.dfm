object frmFlagList: TfrmFlagList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Flag List'
  ClientHeight = 464
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  ShowHint = True
  StyleName = 'Windows'
  TextHeight = 15
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 129
    Height = 14
    AutoSize = False
    Caption = 'Select flag(s):'
  end
  object Label1: TLabel
    Left = 164
    Top = 16
    Width = 197
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Use Ctrl or Shift to select flags'
  end
  object lstFlags: TListBox
    Left = 8
    Top = 36
    Width = 353
    Height = 277
    ItemHeight = 15
    MultiSelect = True
    TabOrder = 0
  end
  object btnEditFlags: TButton
    Left = 279
    Top = 319
    Width = 82
    Height = 25
    Hint = 'Click to edit main list of flags.'
    Caption = 'Edit flags...'
    TabOrder = 1
    OnClick = btnEditFlagsClick
  end
  object grp1: TGroupBox
    Left = 8
    Top = 319
    Width = 257
    Height = 130
    Caption = 'Selected Flag(s) will have these values:'
    TabOrder = 2
    StyleElements = []
    object lblValue: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 15
      Caption = 'Value:'
    end
    object lblMissionExp: TLabel
      Left = 16
      Top = 72
      Width = 158
      Height = 15
      Caption = 'Mission Expiration (0 = none):'
    end
    object cbbFlagValue: TComboBox
      Left = 35
      Top = 44
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 0
      Text = 'True'
      StyleElements = []
      Items.Strings = (
        'True'
        'False')
    end
    object cbbFlagExp: TComboBox
      Left = 35
      Top = 92
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
      StyleElements = []
    end
  end
  object btnOk: TButton
    Left = 279
    Top = 372
    Width = 82
    Height = 37
    Caption = 'Ok'
    Default = True
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 279
    Top = 415
    Width = 82
    Height = 35
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = btnCancelClick
  end
end
