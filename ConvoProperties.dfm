object frmConvoProperties: TfrmConvoProperties
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Conversation Properties'
  ClientHeight = 471
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  TextHeight = 15
  object lblTypeName: TLabel
    Left = 8
    Top = 4
    Width = 323
    Height = 15
    Caption = 'Type in conversation name and select conversation owner.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCancel: TButton
    Left = 333
    Top = 440
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    TabOrder = 1
    StyleElements = []
    OnClick = btnCancelClick
  end
  object btnOk: TButton
    Left = 240
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    TabOrder = 0
    StyleElements = []
    OnClick = btnOkClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 24
    Width = 400
    Height = 410
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    Caption = 'Panel1'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    StyleElements = []
    object pgcConvoPropertiesTabs: TPageControl
      Left = 3
      Top = 3
      Width = 394
      Height = 404
      ActivePage = TabSheet1
      Align = alClient
      DoubleBuffered = False
      ParentDoubleBuffered = False
      Style = tsFlatButtons
      TabOrder = 0
      TabWidth = 65
      OnChange = pgcConvoPropertiesTabsChange
      object TabSheet1: TTabSheet
        Caption = 'General'
        DesignSize = (
          386
          371)
        object Label3: TLabel
          Left = 12
          Top = 60
          Width = 108
          Height = 15
          Caption = 'Conversation Name:'
        end
        object Label4: TLabel
          Left = 12
          Top = 116
          Width = 146
          Height = 15
          Caption = 'Description (seen by Player)'
        end
        object Label5: TLabel
          Left = 12
          Top = 172
          Width = 111
          Height = 15
          Caption = 'Conversation Owner:'
        end
        object Label11: TLabel
          Left = 12
          Top = 228
          Width = 34
          Height = 15
          Caption = 'Notes:'
        end
        object memoConversationNotes: TMemo
          Left = 12
          Top = 248
          Width = 360
          Height = 113
          BevelInner = bvSpace
          BevelKind = bkSoft
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          StyleElements = []
        end
        object cmbConvoOwner: TComboBox
          Left = 12
          Top = 193
          Width = 333
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 2
          OnChange = editConvoNameChange
        end
        object editConvoDescription: TEdit
          Left = 12
          Top = 136
          Width = 360
          Height = 23
          TabOrder = 1
        end
        object editConvoName: TEdit
          Left = 12
          Top = 80
          Width = 360
          Height = 23
          TabOrder = 0
          OnChange = editConvoNameChange
          OnKeyPress = editConvoNameKeyPress
        end
        object btnPickConvoOwner: TButton
          Left = 351
          Top = 193
          Width = 21
          Height = 22
          Hint = 'Edit NPC Table'
          Anchors = [akRight, akBottom]
          Caption = '...'
          TabOrder = 4
          StyleElements = []
          OnClick = btnPickConvoOwnerClick
        end
        object cmbAIBarksMode: TComboBox
          Left = 12
          Top = 24
          Width = 321
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 5
        end
        object chkAddAiBarksSuffix: TCheckBox
          Left = 13
          Top = 1
          Width = 145
          Height = 17
          Caption = 'AI Barks templates?'
          TabOrder = 6
          OnClick = chkAddAiBarksSuffixClick
        end
        object btnAddAiBarkTemplate: TButton
          Left = 336
          Top = 23
          Width = 36
          Height = 23
          Hint = 'Add to conversation name'
          Caption = 'Add'
          TabOrder = 7
          OnClick = btnAddAiBarkTemplateClick
        end
        object Button1: TButton
          Left = 225
          Top = 171
          Width = 147
          Height = 20
          Caption = 'Add JCDenton bindname'
          TabOrder = 8
          Visible = False
        end
      end
      object Flags: TTabSheet
        Caption = 'Flags'
        ImageIndex = 1
        object Label10: TLabel
          Left = 14
          Top = 12
          Width = 80
          Height = 15
          Caption = 'Flags Required:'
        end
        object Label12: TLabel
          Left = 146
          Top = 12
          Width = 223
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DoubleClick to change value (True/False)'
        end
        object lvConvoDependsOnFlags: TListView
          Left = 14
          Top = 33
          Width = 359
          Height = 305
          Columns = <
            item
              Caption = 'Flag'
              Width = 210
            end
            item
              Caption = 'Value'
              Width = 110
            end
            item
              Caption = 'Idx'
              Width = 30
            end>
          GridLines = True
          HideSelection = False
          RowSelect = True
          SmallImages = frmEventInsAdd.ilSpecial
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvConvoDependsOnFlagsDblClick
        end
        object btnAddFlag: TButton
          Left = 14
          Top = 343
          Width = 75
          Height = 25
          Caption = 'Add Flag'
          TabOrder = 1
          StyleElements = []
          OnClick = btnAddFlagClick
        end
        object btnDeleteFlag: TButton
          Left = 102
          Top = 343
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          StyleElements = []
          OnClick = btnDeleteFlagClick
        end
      end
      object Invoke: TTabSheet
        Caption = 'Invoke'
        ImageIndex = 2
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 109
          Height = 15
          Caption = 'Invocation Methods:'
          StyleElements = []
        end
        object lblDistFromPlayer: TLabel
          Left = 24
          Top = 186
          Width = 109
          Height = 14
          AutoSize = False
          Caption = 'DistanceFromPlayer:'
          Enabled = False
          StyleElements = []
        end
        object chkPCfrobsNPC: TCheckBox
          Left = 24
          Top = 45
          Width = 314
          Height = 17
          Caption = 'Player (PC) Frobs NPC'
          Checked = True
          State = cbChecked
          TabOrder = 0
          StyleElements = []
        end
        object chkPCbumpsNPC: TCheckBox
          Left = 24
          Top = 76
          Width = 314
          Height = 17
          Caption = 'Player (PC) Bumps NPC'
          Checked = True
          State = cbChecked
          TabOrder = 1
          StyleElements = []
          OnClick = chkDataLinkConvoClick
        end
        object chkNPCseesPlayer: TCheckBox
          Left = 24
          Top = 112
          Width = 314
          Height = 17
          Caption = 'NPC Sees Player'
          TabOrder = 2
          StyleElements = []
        end
        object chkNPCentersPCRadius: TCheckBox
          Left = 24
          Top = 149
          Width = 314
          Height = 17
          Caption = 'NPC Enters Player (PC) Radius'
          TabOrder = 3
          StyleElements = []
          OnClick = chkNPCentersPCRadiusClick
        end
        object editDistFromPlayer: TSpinEdit
          Left = 139
          Top = 183
          Width = 121
          Height = 24
          AutoSize = False
          Enabled = False
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
          OnChange = editDistFromPlayerChange
        end
      end
      object Options: TTabSheet
        Caption = 'Options'
        ImageIndex = 3
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 118
          Height = 15
          Caption = 'Conversation Options:'
          StyleElements = []
        end
        object chkDisplayConvoOnlyOnce: TCheckBox
          Left = 24
          Top = 56
          Width = 257
          Height = 17
          Caption = 'Display Conversation Only Once'
          Checked = True
          State = cbChecked
          TabOrder = 0
          StyleElements = []
          OnClick = chkDisplayConvoOnlyOnceClick
        end
        object chkNonInteractive: TCheckBox
          Left = 24
          Top = 173
          Width = 314
          Height = 17
          Hint = 'Use this option to hide speaker name(s).'
          Caption = 'Non-interactive Conversation'
          TabOrder = 2
          StyleElements = []
        end
        object chkDataLinkConvo: TCheckBox
          Left = 24
          Top = 134
          Width = 314
          Height = 17
          Hint = 
            'Special option for Infolink (DataLink) messages.'#13#10'Using "DL_" pr' +
            'efix is recommended, so it will be automatically added.'
          Caption = 'DataLink Conversation'
          TabOrder = 1
          StyleElements = []
          OnClick = chkDataLinkConvoClick
        end
        object chkFPMode: TCheckBox
          Left = 24
          Top = 212
          Width = 314
          Height = 17
          Hint = 'In this mode choices are not supported.'
          Caption = 'Remain in First-Person Mode'
          TabOrder = 3
          StyleElements = []
        end
        object chkRandomCameraPlacement: TCheckBox
          Left = 24
          Top = 251
          Width = 314
          Height = 17
          Caption = 'Random Camera Placement'
          TabOrder = 4
          StyleElements = []
        end
        object chkCanBeInterruptedByAnotherConvo: TCheckBox
          Left = 24
          Top = 290
          Width = 314
          Height = 17
          Caption = 'Can be Interrupded by Another Conversation'
          TabOrder = 5
          StyleElements = []
        end
        object chkAbsolutelyCannotInterrupt: TCheckBox
          Left = 24
          Top = 321
          Width = 314
          Height = 33
          Caption = 'Absolutely CANNOT be Interrupted by Another Conversation'
          TabOrder = 6
          WordWrap = True
          StyleElements = []
        end
        object chkAdd_PlayedFlag: TCheckBox
          Left = 65
          Top = 95
          Width = 169
          Height = 17
          Hint = 
            'Only for "Only Once" conversations. '#13#10'Adds "conversationName_Pla' +
            'yed" flag to list, so you can use it somewhere.'#13#10'Deus Ex will se' +
            't value of that flag to true once corresponding conversation is ' +
            'finished.'
          Caption = 'Add name_Played flag?'
          Enabled = False
          TabOrder = 7
          StyleElements = []
        end
      end
      object tsinfo: TTabSheet
        Caption = 'Info'
        ImageIndex = 4
        object Label6: TLabel
          Left = 16
          Top = 72
          Width = 63
          Height = 15
          Caption = 'Created On:'
        end
        object Label7: TLabel
          Left = 16
          Top = 136
          Width = 60
          Height = 15
          Caption = 'Created By:'
        end
        object Label8: TLabel
          Left = 16
          Top = 200
          Width = 94
          Height = 15
          Caption = 'Last Modified On:'
        end
        object Label9: TLabel
          Left = 16
          Top = 264
          Width = 91
          Height = 15
          Caption = 'Last Modified By:'
        end
        object editConvoLastModifiedOn: TEdit
          Left = 132
          Top = 197
          Width = 245
          Height = 23
          Color = 13160660
          ReadOnly = True
          TabOrder = 2
          Text = 'editConvoLastModifiedOn'
          StyleElements = []
        end
        object editConvoLastModifiedBy: TEdit
          Left = 132
          Top = 261
          Width = 245
          Height = 23
          Color = 13160660
          ReadOnly = True
          TabOrder = 3
          Text = 'Edit1'
          StyleElements = []
        end
        object editConvoCreatedOn: TEdit
          Left = 132
          Top = 69
          Width = 245
          Height = 23
          Color = 13160660
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = 'Edit1'
          StyleElements = []
        end
        object editConvoCreatedBy: TEdit
          Left = 132
          Top = 133
          Width = 245
          Height = 23
          Color = 13160660
          ReadOnly = True
          TabOrder = 1
          Text = 'Edit1'
          StyleElements = []
        end
      end
    end
  end
  object btnHelp: TBitBtn
    Left = 8
    Top = 440
    Width = 111
    Height = 25
    Hint = 'Click here to get help'
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 3
    StyleElements = []
    OnClick = btnHelpClick
  end
end
