object frmTableEdit: TfrmTableEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Table'
  ClientHeight = 416
  ClientWidth = 472
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
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    472
    416)
  TextHeight = 14
  object lstTableContents: TListBox
    Left = 8
    Top = 75
    Width = 349
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 14
    TabOrder = 0
    OnClick = lstTableContentsClick
    OnDblClick = lstTableContentsDblClick
    OnEnter = lstTableContentsEnter
    OnExit = lstTableContentsExit
    OnKeyPress = lstTableContentsKeyPress
  end
  object editTable: TEdit
    Left = 8
    Top = 11
    Width = 349
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    OnChange = editTableChange
    OnKeyPress = editTableKeyPress
  end
  object btnAddItem: TButton
    Left = 362
    Top = 11
    Width = 102
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '&Add'
    Default = True
    Enabled = False
    TabOrder = 2
    OnClick = btnAddItemClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 39
    Width = 456
    Height = 4
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvLowered
    DoubleBuffered = True
    FullRepaint = False
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object btnEdit: TButton
    Left = 363
    Top = 75
    Width = 102
    Height = 24
    Anchors = [akTop, akRight]
    Caption = '&Edit'
    Enabled = False
    TabOrder = 4
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 363
    Top = 105
    Width = 102
    Height = 26
    Anchors = [akTop, akRight]
    Caption = '&Delete'
    Enabled = False
    TabOrder = 5
    OnClick = btnDeleteClick
  end
  object btnDeleteUnused: TButton
    Left = 363
    Top = 137
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Delete Unused'
    TabOrder = 6
    OnClick = btnDeleteUnusedClick
  end
  object btnClose: TButton
    Left = 362
    Top = 183
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Close'
    TabOrder = 7
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
    TabOrder = 8
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
    TabOrder = 9
  end
  object btnImport: TButton
    Left = 362
    Top = 352
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Import...'
    TabOrder = 10
    OnClick = btnImportClick
  end
  object btnExport: TButton
    Left = 362
    Top = 383
    Width = 102
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Export...'
    TabOrder = 11
    OnClick = btnExportClick
  end
end
