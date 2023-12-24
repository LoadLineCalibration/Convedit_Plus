object frmConvoFileProperties: TfrmConvoFileProperties
  Left = 0
  Top = 0
  ActiveControl = btnOk
  BorderStyle = bsDialog
  Caption = 'Conversation File Properties'
  ClientHeight = 475
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  ShowHint = True
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object btnOk: TButton
    Left = 240
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    TabOrder = 0
    StyleElements = []
    OnClick = btnOkClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 16
    Width = 400
    Height = 418
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    StyleElements = []
    object PageControl1: TPageControl
      Left = 3
      Top = 3
      Width = 394
      Height = 412
      ActivePage = tsMissions
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      StyleElements = []
      OnChange = PageControl1Change
      object tsMissions: TTabSheet
        Caption = 'Missions'
        object Label5: TLabel
          Left = 248
          Top = 3
          Width = 100
          Height = 15
          Caption = 'Available Missions:'
        end
        object Label11: TLabel
          Left = 3
          Top = 3
          Width = 43
          Height = 15
          Caption = 'This file:'
        end
        object lstThisFileMissions: TListBox
          Left = 3
          Top = 24
          Width = 134
          Height = 354
          Style = lbOwnerDrawFixed
          ItemHeight = 15
          MultiSelect = True
          TabOrder = 0
          StyleName = 'Windows'
          OnDblClick = btnRemoveClick
          OnDrawItem = lstAllMissionsDrawItem
        end
        object lstAllMissions: TListBox
          Left = 248
          Top = 23
          Width = 135
          Height = 354
          Style = lbOwnerDrawFixed
          ItemHeight = 15
          MultiSelect = True
          TabOrder = 1
          StyleName = 'Windows'
          OnDblClick = btnAddToLeftClick
          OnDrawItem = lstAllMissionsDrawItem
        end
        object btnAddToLeft: TButton
          Left = 143
          Top = 32
          Width = 99
          Height = 25
          Hint = 
            'Use these buttons to add or remove missions for your game or mod' +
            '.'
          Caption = '<-- Add'
          TabOrder = 2
          StyleElements = []
          OnClick = btnAddToLeftClick
        end
        object btnAllAddToLeft: TButton
          Left = 143
          Top = 63
          Width = 99
          Height = 25
          Hint = 
            'Use these buttons to add or remove missions for your game or mod' +
            '.'
          Caption = '<-- Add All'
          TabOrder = 3
          StyleElements = []
        end
        object btnRemove: TButton
          Left = 143
          Top = 112
          Width = 99
          Height = 25
          Hint = 
            'Use these buttons to add or remove missions for your game or mod' +
            '.'
          Caption = '> Remove -->'
          TabOrder = 4
          StyleElements = []
          OnClick = btnRemoveClick
        end
        object btnRemoveAll: TButton
          Left = 143
          Top = 143
          Width = 99
          Height = 25
          Hint = 
            'Use these buttons to add or remove missions for your game or mod' +
            '.'
          Caption = '> Remove All -->'
          TabOrder = 5
          StyleElements = []
        end
      end
      object tsFlags: TTabSheet
        Caption = 'Audio &&&& Notes'
        ImageIndex = 1
        object Label10: TLabel
          Left = 24
          Top = 36
          Width = 82
          Height = 15
          Caption = 'Audio Package:'
        end
        object lbl1: TLabel
          Left = 24
          Top = 124
          Width = 34
          Height = 15
          Caption = 'Notes:'
        end
        object mmoConvFileNotes: TMemo
          Left = 24
          Top = 144
          Width = 337
          Height = 209
          HideSelection = False
          PopupMenu = frmEventInsAdd.MemoPopup
          TabOrder = 0
        end
        object edtConvoFileAudioPackage: TEdit
          Left = 24
          Top = 56
          Width = 337
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          PopupMenu = frmEventInsAdd.MemoPopup
          TabOrder = 1
          OnChange = edtConvoFileAudioPackageChange
        end
      end
      object tsStats: TTabSheet
        Caption = 'Stats'
        ImageIndex = 2
        object lbl2: TLabel
          Left = 3
          Top = 32
          Width = 93
          Height = 15
          Caption = 'Speaker Statistics:'
        end
        object lvStatistics: TListView
          Left = 3
          Top = 48
          Width = 382
          Height = 329
          Columns = <
            item
              Caption = 'Speaker'
              Width = 300
            end
            item
              Caption = 'Lines'
            end>
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
      object tsInfo: TTabSheet
        Caption = 'Info'
        ImageIndex = 3
        object Label6: TLabel
          Left = 8
          Top = 48
          Width = 62
          Height = 15
          Caption = 'File Version:'
        end
        object Label9: TLabel
          Left = 8
          Top = 312
          Width = 91
          Height = 15
          Caption = 'Last Modified By:'
        end
        object Label8: TLabel
          Left = 8
          Top = 248
          Width = 94
          Height = 15
          Caption = 'Last Modified On:'
        end
        object Label7: TLabel
          Left = 8
          Top = 184
          Width = 60
          Height = 15
          Caption = 'Created By:'
        end
        object Label1: TLabel
          Left = 8
          Top = 128
          Width = 63
          Height = 15
          Caption = 'Created On:'
        end
        object edtConFileVersion: TEdit
          Left = 117
          Top = 45
          Width = 260
          Height = 23
          Color = 13160660
          Ctl3D = True
          ParentCtl3D = False
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 0
          Text = 'Edit1'
          StyleElements = []
        end
        object edtConFileLastModifiedBy: TEdit
          Left = 117
          Top = 309
          Width = 260
          Height = 23
          Color = 13160660
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 1
          Text = 'Edit1'
          StyleElements = []
        end
        object edtConFileLastModifiedOn: TEdit
          Left = 117
          Top = 245
          Width = 260
          Height = 23
          Color = 13160660
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 2
          Text = 'edtConFileLastModifiedOn'
          StyleElements = []
        end
        object edtConFileCreatedBy: TEdit
          Left = 117
          Top = 181
          Width = 260
          Height = 23
          Color = 13160660
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 3
          Text = 'Edit1'
          StyleElements = []
        end
        object edtConFileCreatedOn: TEdit
          Left = 117
          Top = 125
          Width = 260
          Height = 23
          Color = 13160660
          Ctl3D = True
          ParentCtl3D = False
          PopupMenu = frmEventInsAdd.MemoPopup
          ReadOnly = True
          TabOrder = 4
          Text = 'edtConFileCreatedOn'
          StyleElements = []
        end
      end
    end
  end
  object btnCancel: TButton
    Left = 333
    Top = 440
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    TabOrder = 2
    StyleElements = []
    OnClick = btnCancelClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 437
    Width = 217
    Height = 36
    AutoSize = False
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077': 98 is Intro, 99 is EndGame'
    TabOrder = 3
    StyleName = 'Windows'
  end
end
