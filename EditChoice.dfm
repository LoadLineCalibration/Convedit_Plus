object frmEditChoice: TfrmEditChoice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Choice'
  ClientHeight = 352
  ClientWidth = 508
  Color = clBtnFace
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
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 492
    Height = 305
    Caption = 'Panel1'
    Color = 13160660
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    object pgc1: TPageControl
      Left = 1
      Top = 1
      Width = 490
      Height = 303
      ActivePage = Flags
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      StyleElements = []
      object TabSheet1: TTabSheet
        Caption = 'General'
        object Label3: TLabel
          Left = 16
          Top = -1
          Width = 161
          Height = 22
          AutoSize = False
          Caption = 'Choice Text:'
          Layout = tlBottom
        end
        object Label4: TLabel
          Left = 16
          Top = 198
          Width = 73
          Height = 22
          AutoSize = False
          Caption = 'Audio File:'
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 16
          Top = 246
          Width = 161
          Height = 22
          AutoSize = False
          Caption = 'Jump to Label:'
          Layout = tlCenter
        end
        object mmoChoiceText: TMemo
          Left = 16
          Top = 27
          Width = 449
          Height = 145
          HideSelection = False
          MaxLength = 256
          PopupMenu = frmEventInsAdd.MemoPopup
          ScrollBars = ssVertical
          TabOrder = 0
          WantReturns = False
          StyleElements = []
          OnChange = mmoChoiceTextChange
        end
        object cbbChoiceJumpToLabel: TComboBox
          Left = 112
          Top = 247
          Width = 105
          Height = 23
          TabOrder = 2
          StyleElements = []
          OnChange = mmoChoiceTextChange
        end
        object chkDisplayChoiceAsSpeech: TCheckBox
          Left = 223
          Top = 246
          Width = 242
          Height = 22
          Caption = 'Display Choice as speech when Selected'
          Checked = True
          State = cbChecked
          TabOrder = 3
          StyleElements = []
        end
        object editChoiceAudioFile: TEdit
          Left = 16
          Top = 218
          Width = 449
          Height = 23
          ReadOnly = True
          TabOrder = 1
          Text = 'editChoiceAudioFile'
          StyleElements = []
        end
      end
      object Flags: TTabSheet
        Caption = 'Flags'
        ImageIndex = 1
        object Label2: TLabel
          Left = 16
          Top = -1
          Width = 161
          Height = 22
          AutoSize = False
          Caption = 'Flags Required:'
          Layout = tlBottom
        end
        object lvChoiceFlagList: TListView
          Left = 16
          Top = 27
          Width = 449
          Height = 210
          Columns = <
            item
              Caption = 'Flag Name'
              Width = 300
            end
            item
              Caption = 'Value'
              Width = 100
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
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          SmallImages = frmEventInsAdd.ilSpecial
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvChoiceFlagListDblClick
        end
        object btnAddChoiceFlag: TButton
          Left = 16
          Top = 243
          Width = 75
          Height = 25
          Cancel = True
          Caption = 'Add Flag'
          TabOrder = 1
          StyleElements = []
          OnClick = btnAddChoiceFlagClick
        end
        object btnDeleteChoiceFlag: TButton
          Left = 113
          Top = 243
          Width = 75
          Height = 25
          Cancel = True
          Caption = 'Delete'
          TabOrder = 2
          StyleElements = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Skills'
        ImageIndex = 2
        object grpSkillGrp: TGroupBox
          Left = 16
          Top = 27
          Width = 449
          Height = 102
          TabOrder = 0
          StyleElements = []
          DesignSize = (
            449
            102)
          object lbl1: TLabel
            Left = 16
            Top = 24
            Width = 66
            Height = 22
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Skill: '
            Layout = tlCenter
          end
          object Label1: TLabel
            Left = 16
            Top = 64
            Width = 66
            Height = 22
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'At Level: '
            Layout = tlCenter
          end
          object cmbSkill: TComboBox
            Left = 88
            Top = 24
            Width = 257
            Height = 23
            Style = csDropDownList
            TabOrder = 0
            StyleElements = []
          end
          object cmbSkillAtLevel: TComboBox
            Left = 88
            Top = 64
            Width = 257
            Height = 23
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'Novice'
            StyleElements = []
            Items.Strings = (
              'Novice'
              'Intermedia'
              'Advanced '
              'Master')
          end
          object btnPickSkill: TButton
            Left = 351
            Top = 24
            Width = 21
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = '...'
            TabOrder = 2
            StyleElements = []
            OnClick = btnPickSkillClick
          end
        end
        object chkReqSkill: TCheckBox
          Left = 32
          Top = 28
          Width = 97
          Height = 17
          Caption = 'Requires Skill:'
          TabOrder = 1
          StyleElements = []
          OnClick = chkReqSkillClick
        end
      end
    end
  end
  object btnCancel: TButton
    Left = 425
    Top = 318
    Width = 75
    Height = 27
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 1
    StyleElements = []
    OnClick = btnCancelClick
  end
  object btnOk: TButton
    Left = 326
    Top = 318
    Width = 75
    Height = 27
    Caption = 'Ok'
    Default = True
    Enabled = False
    TabOrder = 2
    StyleElements = []
    OnClick = btnOkClick
  end
end
