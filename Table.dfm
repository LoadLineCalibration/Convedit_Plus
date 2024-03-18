object frmTableEdit: TfrmTableEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Table'
  ClientHeight = 366
  ClientWidth = 473
  Color = 13160660
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
  Position = poOwnerFormCenter
  ShowHint = True
  StyleName = 'Windows'
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    473
    366)
  TextHeight = 15
  object lstTableContents: TListBox
    Left = 7
    Top = 72
    Width = 350
    Height = 223
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    PopupMenu = ListContentsPopup
    TabOrder = 0
    StyleName = 'Windows'
    OnClick = lstTableContentsClick
    OnDblClick = lstTableContentsDblClick
    OnEnter = lstTableContentsEnter
    OnExit = lstTableContentsExit
    OnKeyPress = lstTableContentsKeyPress
  end
  object editTable: TEdit
    Left = 8
    Top = 11
    Width = 350
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    StyleName = 'Windows'
    OnChange = editTableChange
    OnKeyPress = editTableKeyPress
  end
  object btnAddItem: TButton
    Left = 363
    Top = 11
    Width = 102
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '&Add'
    Default = True
    Enabled = False
    TabOrder = 2
    StyleName = 'Windows'
    OnClick = btnAddItemClick
  end
  object btnEdit: TButton
    Left = 364
    Top = 75
    Width = 102
    Height = 24
    Anchors = [akTop, akRight]
    Caption = '&Edit'
    Enabled = False
    TabOrder = 3
    StyleName = 'Windows'
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 364
    Top = 105
    Width = 102
    Height = 26
    Anchors = [akTop, akRight]
    Caption = '&Delete'
    Enabled = False
    TabOrder = 4
    StyleName = 'Windows'
    OnClick = btnDeleteClick
  end
  object btnDeleteUnused: TButton
    Left = 363
    Top = 137
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Delete Unused'
    TabOrder = 5
    StyleName = 'Windows'
    OnClick = btnDeleteUnusedClick
  end
  object btnClose: TButton
    Left = 363
    Top = 183
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = '&Close'
    TabOrder = 6
    StyleName = 'Windows'
    OnClick = btnCloseClick
  end
  object chkClearAfterAdd: TCheckBox
    Left = 8
    Top = 49
    Width = 177
    Height = 17
    Caption = 'Clear input field after adding?'
    Checked = True
    State = cbChecked
    TabOrder = 7
    StyleName = 'Windows'
  end
  object chkDoubleClickEditItem: TCheckBox
    Left = 191
    Top = 49
    Width = 129
    Height = 17
    Hint = 'Otherwise close window, like in original ConEdit.'
    Caption = 'Double Click to edit?'
    Checked = True
    State = cbChecked
    TabOrder = 8
    StyleName = 'Windows'
  end
  object btnAddDefSkills: TButton
    Left = 300
    Top = 304
    Width = 120
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add Default skills'
    TabOrder = 9
    WordWrap = True
    OnClick = btnAddDefSkillsClick
  end
  object btnAddDef_LR_Weapons: TButton
    Left = 8
    Top = 334
    Width = 210
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add default long-range weapons'
    TabOrder = 10
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnAddDef_LR_WeaponsClick
  end
  object btnAddDef_CR_weapons: TButton
    Left = 224
    Top = 334
    Width = 231
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add default close-range weapons'
    TabOrder = 11
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnAddDef_CR_weaponsClick
  end
  object btnAddDefGrenades: TButton
    Left = 160
    Top = 304
    Width = 134
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add default grenades'
    TabOrder = 12
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnAddDefGrenadesClick
  end
  object btnAddDefMiscItems: TButton
    Left = 8
    Top = 304
    Width = 146
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add default misc items'
    TabOrder = 13
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btnAddDefMiscItemsClick
  end
  object btn_CustomClassList: TButton
    Left = 426
    Top = 303
    Width = 29
    Height = 25
    Hint = 'Click to use of custom items'
    Anchors = [akRight, akBottom]
    Caption = '...'
    TabOrder = 14
    WordWrap = True
    StyleName = 'Windows'
    OnClick = btn_CustomClassListClick
  end
  object btnAddDefInfolinkNames: TButton
    Left = 240
    Top = 304
    Width = 180
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Add default InfoLink names'
    TabOrder = 15
    WordWrap = True
    OnClick = btnAddDefInfolinkNamesClick
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 40
    Width = 457
    Height = 3
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 16
  end
  object CustomItemsPopup: TPopupMenu
    AutoHotkeys = maManual
    Left = 104
    Top = 104
    object CustomItem1: TMenuItem
      Caption = 'CustomItem'
      OnClick = CustomItem1Click
    end
  end
  object ListContentsPopup: TPopupMenu
    OnPopup = ListContentsPopupPopup
    Left = 168
    Top = 192
    object Copytoclipboard1: TMenuItem
      Caption = 'Copy to clipboard'
      Enabled = False
      OnClick = Copytoclipboard1Click
    end
  end
end
