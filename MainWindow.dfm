object frmMain: TfrmMain
  Left = 0
  Top = 0
  AlphaBlendValue = 250
  Caption = 'ConvEdit+'
  ClientHeight = 681
  ClientWidth = 1020
  Color = clBtnFace
  CustomTitleBar.SystemColors = False
  CustomTitleBar.SystemButtons = False
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBtnText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MenuMain
  Position = poScreenCenter
  ShowHint = True
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 300
    Top = 38
    Width = 5
    Height = 623
    Cursor = crSizeWE
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    MinSize = 1
    StyleName = 'Windows'
    OnCanResize = Splitter1CanResize
    OnMoved = Splitter1Moved
  end
  object pnlConvoTree: TPanel
    Left = 0
    Top = 38
    Width = 300
    Height = 623
    Align = alLeft
    Caption = 'pnlConvoTree'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object ConvoTree: TTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 621
      Align = alClient
      BorderWidth = 4
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = []
      HideSelection = False
      Images = TreeImages
      Indent = 19
      MultiSelectStyle = []
      ParentFont = False
      PopupMenu = PopupTree
      RowSelect = True
      SortType = stText
      StateImages = TreeImages
      TabOrder = 0
      StyleName = 'Windows'
      OnChange = ConvoTreeChange
      OnEditing = ConvoTreeEditing
    end
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 38
    Align = alTop
    BevelEdges = [beTop, beBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object mainToolBar: TToolBar
      Left = 2
      Top = 2
      Width = 439
      Height = 34
      Align = alLeft
      ButtonHeight = 31
      ButtonWidth = 32
      Caption = 'mainToolBar'
      DoubleBuffered = True
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = False
      GradientEndColor = 10526880
      GradientStartColor = 13160660
      Images = ImageListToolbar
      Indent = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      Transparent = False
      StyleName = 'Windows'
      object tbNewConversationFile: TToolButton
        Left = 2
        Top = 0
        Action = FileNew
        ImageIndex = 0
      end
      object tbOpenFile: TToolButton
        Left = 34
        Top = 0
        Action = FileOpen
        ImageIndex = 1
      end
      object tbSaveFile: TToolButton
        Left = 66
        Top = 0
        Hint = 'Save current file'
        ImageIndex = 2
      end
      object tbPrint: TToolButton
        Left = 98
        Top = 0
        Hint = 'Print something?'
        ImageIndex = 3
      end
      object ToolButton5: TToolButton
        Left = 130
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tbCut: TToolButton
        Left = 138
        Top = 0
        Action = Event_Cut
        ImageIndex = 4
      end
      object tbCopy: TToolButton
        Left = 170
        Top = 0
        Action = Event_Copy
        ImageIndex = 5
      end
      object tbPaste: TToolButton
        Left = 202
        Top = 0
        Action = Event_Paste
        ImageIndex = 6
      end
      object tbSearch: TToolButton
        Left = 234
        Top = 0
        Hint = 'Search for text in the curent file'
        ImageIndex = 7
        OnClick = tbSearchClick
      end
      object ToolButton11: TToolButton
        Left = 266
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbProperties: TToolButton
        Left = 274
        Top = 0
        Action = Conversation_Properties
        ImageIndex = 8
      end
      object ToolButton1: TToolButton
        Left = 306
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object tbSettings: TToolButton
        Left = 314
        Top = 0
        Hint = 'Customize ConvEdit Plus!'
        Action = ShowOptions
        ImageIndex = 9
      end
      object ToolButton2: TToolButton
        Left = 346
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btnReorder: TToolButton
        Left = 354
        Top = 0
        Hint = 
          'Use to enable changing order of events. Hold Ctrl key to drag it' +
          'ems.'
        Caption = 'btnReorder'
        ImageIndex = 10
        Style = tbsCheck
        OnClick = btnReorderClick
      end
      object ToolButton3: TToolButton
        Left = 386
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btnStickyWindow: TToolButton
        Left = 394
        Top = 0
        Hint = 'ScreenSnap := btnStickyWindow.Down;'
        ImageIndex = 11
        Style = tbsCheck
        OnClick = btnStickyWindowClick
      end
    end
    object pnlSearchBox: TPanel
      Left = 441
      Top = 2
      Width = 577
      Height = 34
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = 13160660
      ParentBackground = False
      TabOrder = 1
      StyleName = 'Windows'
      object Label1: TLabel
        Left = 6
        Top = 9
        Width = 38
        Height = 15
        BiDiMode = bdLeftToRight
        Caption = 'Search:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object cmbSearch: TComboBox
        Left = 50
        Top = 7
        Width = 450
        Height = 23
        BevelKind = bkTile
        Ctl3D = True
        ExtendedUI = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        StyleElements = []
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 661
    Width = 1020
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Bevel = pbNone
        Text = 'Ready?'
        Width = 300
      end
      item
        Text = 'SampleText'
        Width = 3000
      end>
    SimpleText = #1045#1091#1095#1077
    UseSystemFont = False
    StyleName = 'Windows'
  end
  object EsPanel1: TEsPanel
    Left = 305
    Top = 38
    Width = 715
    Height = 623
    Align = alClient
    TabOrder = 3
    StyleElements = []
    CaptionVisible = False
    FrameStyle = Bump
    object ConEventList: TListBox
      Left = 2
      Top = 22
      Width = 711
      Height = 266
      Style = lbOwnerDrawVariable
      Align = alClient
      BorderStyle = bsNone
      ExtendedSelect = False
      ItemHeight = 14
      PopupMenu = PopupConvoEventList
      TabOrder = 0
      StyleElements = []
      OnClick = ConEventListClick
      OnDblClick = ConEventListDblClick
      OnDragDrop = ConEventListDragDrop
      OnDragOver = ConEventListDragOver
      OnDrawItem = ConEventListDrawItem
      OnMeasureItem = ConEventListMeasureItem
      OnMouseDown = ConEventListMouseDown
    end
    object HeaderControl1: THeaderControl
      Left = 2
      Top = 2
      Width = 711
      Height = 20
      FullDrag = False
      HotTrack = True
      Sections = <
        item
          ImageIndex = -1
          MaxWidth = 500
          MinWidth = 100
          Style = hsOwnerDraw
          Text = 'Label'
          Width = 150
        end
        item
          ImageIndex = -1
          MaxWidth = 500
          MinWidth = 100
          Style = hsOwnerDraw
          Text = 'Action'
          Width = 150
        end
        item
          ImageIndex = -1
          MaxWidth = 500
          MinWidth = 150
          Style = hsOwnerDraw
          Text = 'NPC'
          Width = 150
        end
        item
          ImageIndex = -1
          MaxWidth = 500
          MinWidth = 150
          Style = hsOwnerDraw
          Text = 'Description or Path to .mp3 file'
          Width = 500
        end
        item
          ImageIndex = -1
          MinWidth = 100
          Style = hsOwnerDraw
          Width = 500
        end>
      OnDrawSection = HeaderControl1DrawSection
      OnSectionResize = HeaderControl1SectionResize
      StyleElements = []
      StyleName = 'Windows'
    end
    object btnBackToPrevConvo: TButton
      Left = 6
      Top = 28
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '< Go Back'
      TabOrder = 2
      Visible = False
      OnClick = btnBackToPrevConvoClick
    end
    object mmoOutput: TMemo
      Left = 2
      Top = 288
      Width = 711
      Height = 333
      Align = alBottom
      BevelEdges = [beTop]
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clBlack
      EditMargins.Left = 5
      EditMargins.Right = 5
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clLime
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      PopupMenu = pmOutput
      ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
    end
  end
  object PopupTree: TPopupMenu
    OnPopup = PopupTreePopup
    Left = 148
    Top = 287
    object Add3: TMenuItem
      Action = AddConversation
    end
    object Delete2: TMenuItem
      Action = DeleteConversation
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object Cut4: TMenuItem
      Action = Conversation_Cut
    end
    object Copy4: TMenuItem
      Action = Conversation_Copy
    end
    object Paste4: TMenuItem
      Action = Conversation_Paste
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object menuConvoProperties: TMenuItem
      Action = Conversation_Properties
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object ExpandAll2: TMenuItem
      Action = ConTree_ExpandAll
    end
    object CollapseAll2: TMenuItem
      Action = ConTree_CollapseAll
    end
  end
  object MenuMain: TMainMenu
    Images = MenusImageList
    OnChange = MenuMainChange
    Left = 924
    Top = 7
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Action = FileNew
      end
      object Open1: TMenuItem
        Action = FileOpen
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Caption = 'Save'
        ImageIndex = 14
      end
      object SaveAs1: TMenuItem
        Action = FileSaveAs
      end
      object Exporttoconfile1: TMenuItem
        Caption = 'Export to .con file...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Generateaudiofilenames1: TMenuItem
        Caption = 'Generate audio filenames...'
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object ConvoProperties: TMenuItem
        Action = FileProperties
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mniRecent: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Recent files'
        object RecentFile0: TMenuItem
          ImageIndex = 17
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile1: TMenuItem
          ImageIndex = 18
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile2: TMenuItem
          ImageIndex = 19
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile3: TMenuItem
          ImageIndex = 20
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile4: TMenuItem
          ImageIndex = 21
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile5: TMenuItem
          ImageIndex = 22
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile6: TMenuItem
          ImageIndex = 23
          Visible = False
          OnClick = RecentFile0Click
        end
        object RecentFile7: TMenuItem
          ImageIndex = 24
          Visible = False
          OnClick = RecentFile0Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Conversation1: TMenuItem
      Caption = 'Conversation (Tree)'
      object AddConversation1: TMenuItem
        Caption = 'Add Conversation'
        ImageIndex = 3
      end
      object DeleteConversation1: TMenuItem
        Caption = 'Delete Conversation'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = 'Cut'
        ImageIndex = 1
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
        ImageIndex = 0
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
        ImageIndex = 2
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Checklabels1: TMenuItem
        Caption = 'Check labels'
      end
      object Properties3: TMenuItem
        Caption = 'Properties'
        OnClick = Properties3Click
      end
      object Find1: TMenuItem
        Caption = 'Find'
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Expandall1: TMenuItem
        Caption = 'Expand all'
      end
      object Collapseall1: TMenuItem
        Caption = 'Collapse all'
      end
    end
    object Events1: TMenuItem
      Caption = 'Events (List)'
      object Add1: TMenuItem
        Caption = 'Add'
        ImageIndex = 3
      end
      object Insert1: TMenuItem
        Caption = 'Insert'
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Cut2: TMenuItem
        Caption = 'Cut'
        ImageIndex = 1
      end
      object Copy2: TMenuItem
        Caption = 'Copy'
        ImageIndex = 0
      end
      object PasteEvent: TMenuItem
        Caption = 'Paste'
        ImageIndex = 2
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = 'Delete'
        ImageIndex = 4
      end
    end
    object Tables1: TMenuItem
      Caption = 'Tables'
      object ActorsPawns1: TMenuItem
        Caption = 'Actors/Pawns'
        ImageIndex = 15
        OnClick = ActorsPawns1Click
      end
      object Flags1: TMenuItem
        Caption = 'Flags'
        ImageIndex = 16
        OnClick = Flags1Click
      end
      object Skills1: TMenuItem
        Caption = 'Skills'
        OnClick = Skills1Click
      end
      object Objects1: TMenuItem
        Caption = 'Objects'
        OnClick = Objects1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object mnuToggleMainToolBar: TMenuItem
        AutoCheck = True
        Caption = 'Toolbar'
        OnClick = mnuToggleMainToolBarClick
      end
      object mnuStatusbar: TMenuItem
        AutoCheck = True
        Caption = 'Status bar'
        OnClick = mnuStatusbarClick
      end
      object mnuExpandedEventList1: TMenuItem
        AutoCheck = True
        Caption = 'Expanded event list (Always enabled for now)'
        Checked = True
        Enabled = False
        OnClick = mnuExpandedEventList1Click
      end
      object mnuShowAudioFiles1: TMenuItem
        AutoCheck = True
        Caption = 'Show audio files'
        OnClick = mnuShowAudioFiles1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object Darkmode1: TMenuItem
        Caption = 'Theme'
      end
      object Options1: TMenuItem
        Action = ShowOptions
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object ViewoutputTMemo1: TMenuItem
        AutoCheck = True
        Caption = 'View output TMemo'
        OnClick = ViewoutputTMemo1Click
      end
    end
    object mnuHelp: TMenuItem
      Caption = 'Help'
      object Placeholder1: TMenuItem
        Caption = 'Placeholder'
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = 'About...'
        OnClick = About1Click
      end
    end
  end
  object PopupConvoEventList: TPopupMenu
    Images = MenusImageList
    OnPopup = PopupConvoEventListPopup
    Left = 436
    Top = 279
    object Add2: TMenuItem
      Caption = 'Add'
      ImageIndex = 3
      object Speech1: TMenuItem
        Caption = 'Speech'
        ImageIndex = 7
        OnClick = Speech1Click
      end
      object Choice1: TMenuItem
        Tag = 1
        Caption = 'Choice'
        ImageIndex = 6
        OnClick = Choice1Click
      end
      object Setflag1: TMenuItem
        Tag = 2
        Caption = 'Set flags'
        OnClick = Setflag1Click
      end
      object Checkflag1: TMenuItem
        Tag = 3
        Caption = 'Check flags'
        ImageIndex = 10
        OnClick = Checkflag1Click
      end
      object CheckObject1: TMenuItem
        Tag = 4
        Caption = 'Check Object'
        OnClick = CheckObject1Click
      end
      object TransferObject1: TMenuItem
        Tag = 5
        Caption = 'Transfer Object'
        OnClick = TransferObject1Click
      end
      object MoveCamera1: TMenuItem
        Tag = 6
        Caption = 'Move Camera'
        ImageIndex = 5
        OnClick = MoveCamera1Click
      end
      object PlayAnimation1: TMenuItem
        Tag = 7
        Caption = 'Play Animation'
        ImageIndex = 11
        OnClick = PlayAnimation1Click
      end
      object BuySellTrade1: TMenuItem
        Tag = 8
        Caption = 'Buy/Sell/Trade'
        OnClick = BuySellTrade1Click
      end
      object Jump1: TMenuItem
        Tag = 9
        Caption = 'Jump'
        ImageIndex = 12
        OnClick = Jump1Click
      end
      object Random1: TMenuItem
        Tag = 10
        Caption = 'Random'
        OnClick = Random1Click
      end
      object Trigger1: TMenuItem
        Tag = 11
        Caption = 'Trigger'
        OnClick = Trigger1Click
      end
      object AddCompleteGoal1: TMenuItem
        Tag = 12
        Caption = 'Add/Complete Goal'
        OnClick = AddCompleteGoal1Click
      end
      object AddNote1: TMenuItem
        Tag = 13
        Caption = 'Add Note'
        ImageIndex = 8
        OnClick = AddNote1Click
      end
      object AddSkillPoints1: TMenuItem
        Tag = 14
        Caption = 'Add Skill Points'
        OnClick = AddSkillPoints1Click
      end
      object AddCredits1: TMenuItem
        Tag = 15
        Caption = 'Add Credits'
        ImageIndex = 9
        OnClick = AddCredits1Click
      end
      object CheckPersona1: TMenuItem
        Tag = 16
        Caption = 'Check Persona'
        OnClick = CheckPersona1Click
      end
      object Comment1: TMenuItem
        Tag = 17
        Caption = 'Comment'
        OnClick = Comment1Click
      end
      object End1: TMenuItem
        Tag = 18
        Caption = 'End'
        OnClick = End1Click
      end
    end
    object Insert2: TMenuItem
      Tag = 18
      Caption = 'Insert'
      Hint = 'Displays properties of selected conversation'
      object Speech2: TMenuItem
        Caption = 'Speech'
        ImageIndex = 7
        OnClick = Speech2Click
      end
      object Choice2: TMenuItem
        Tag = 1
        Caption = 'Choice'
        ImageIndex = 6
        OnClick = Choice2Click
      end
      object Setflag2: TMenuItem
        Tag = 2
        Caption = 'Set flags'
        OnClick = Setflag2Click
      end
      object Checkflag2: TMenuItem
        Tag = 3
        Caption = 'Check flags'
        ImageIndex = 10
        OnClick = Checkflag2Click
      end
      object CheckObject2: TMenuItem
        Tag = 4
        Caption = 'Check Object'
        OnClick = CheckObject2Click
      end
      object TransferObject2: TMenuItem
        Tag = 5
        Caption = 'Transfer Object'
        OnClick = TransferObject2Click
      end
      object MoveCamera2: TMenuItem
        Tag = 6
        Caption = 'Move Camera'
        ImageIndex = 5
        OnClick = MoveCamera2Click
      end
      object PlayAnimation2: TMenuItem
        Tag = 7
        Caption = 'Play Animation'
        ImageIndex = 11
        OnClick = PlayAnimation2Click
      end
      object BuySellTrade2: TMenuItem
        Tag = 8
        Caption = 'Buy/Sell/Trade'
        OnClick = BuySellTrade2Click
      end
      object Jump2: TMenuItem
        Tag = 9
        Caption = 'Jump'
        ImageIndex = 12
        OnClick = Jump2Click
      end
      object Random2: TMenuItem
        Tag = 10
        Caption = 'Random'
        OnClick = Random2Click
      end
      object Trigger2: TMenuItem
        Tag = 11
        Caption = 'Trigger'
        OnClick = Trigger2Click
      end
      object AddCompleteGoal2: TMenuItem
        Tag = 12
        Caption = 'Add/Complete Goal'
        OnClick = AddCompleteGoal2Click
      end
      object AddNote2: TMenuItem
        Tag = 13
        Caption = 'Add Note'
        ImageIndex = 8
        OnClick = AddNote2Click
      end
      object AddSkillPoints2: TMenuItem
        Tag = 14
        Caption = 'Add Skill Points'
        OnClick = AddSkillPoints2Click
      end
      object AddCredits2: TMenuItem
        Tag = 15
        Caption = 'Add Credits'
        ImageIndex = 9
        OnClick = AddCredits2Click
      end
      object CheckPersona2: TMenuItem
        Tag = 16
        Caption = 'Check Persona'
        OnClick = CheckPersona2Click
      end
      object Comment2: TMenuItem
        Tag = 17
        Caption = 'Comment'
        ImageIndex = 9
        OnClick = Comment2Click
      end
      object End2: TMenuItem
        Tag = 18
        Caption = 'End'
        OnClick = End2Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      Hint = 'Edit selected event'
      OnClick = ConEventListDblClick
    end
    object Delete1: TMenuItem
      Action = Event_Delete
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Cut3: TMenuItem
      Caption = 'Cut'
      ImageIndex = 1
    end
    object Copy3: TMenuItem
      Caption = 'Copy'
      ImageIndex = 0
    end
    object PasteConvoEvent: TMenuItem
      Caption = 'Paste'
      ImageIndex = 2
    end
  end
  object ImageListToolbar: TImageList
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 548
    Top = 207
    Bitmap = {
      494C01010C001800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009265
      4400926544009266440092664400926643009265440092664400926644009265
      4300926643009266430092654400926644009265430092664400926643009266
      4300926643000000000000000000000000000000000000000000000000008080
      8000C9C9C900000000000000000000000000000000000000000000000000A4A4
      A400A5A5A500000000000000000000000000000000000000000000000000C5C5
      C500808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC1C1C100C1C1C100000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009467
      4400E3CAAC00E4CAAC00E3CBAC00E3CBAC00E3CBAC00E4CAAD00E3CAAD00E4CA
      AD00E4CBAC00E4CAAD00E4CAAC00E4CBAC00E3CBAC00E3CBAC00E4CAAC00E3CA
      AC00936644000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      860086868600000000000000000000000000000000000000000000000000AEAE
      AE005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4141410041414100000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009568
      4500E5CCAF00E4CCAF00E4CCAF00E5CCAF00E5CCAF00E4CCAE00E4CCAF00E4CC
      AF00E4CCAF00E4CCAF00E4CCAF00E4CDAF00E4CDAF00E4CCAF00E4CCAF00E4CD
      AF00956745000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      860086868600000000000000000000000000000000000000000000000000AEAE
      AE005B5B5B000000000000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD9D9
      D9009F9F9F00000000FF000000FF000000FF3F3F3F003F3F3F00000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009769
      4500E5CFB200E5CEB200A9764F00A8744D00B1825D00DBBEA100B98D6A00A874
      4D00A8744D00A8744D00A8744D00A8744D00A8744D00A8744D00E5CEB200E5CE
      B200976945000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000004646
      460045454500000000000000000000000000000000000000000000000000AEAE
      AE005B5B5B000000000000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF9999
      99000000000072727200000000FF000000FF4848480048484800000000FF0000
      00FF000000FFA3A3A300DDDDDD00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000996A
      4600E6D1B600E6D1B500E6D1B600E6D0B600E6D0B600E6D1B600E6D0B600E6D0
      B600E6D0B500E6D0B600E6D0B600E6D0B600E6D1B600E6D1B600E6D0B500E6D1
      B500996A47000000000000000000000000000000000000000000000000005B5B
      5B00B1B1B10000000000000000000000000000000000DBDBDB001E1E1E007777
      77007575750021212100DEDEDE0000000000000000000000000000000000AEAE
      AE005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF6C6C6C000000000095959500000000FF000000FF000000FF000000FF0000
      00FF6D6D6D000000000016161600D5D5D500000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009A6C
      4700E7D3BA00E7D3BA00E7D3B900E7D3BA00E7D3BA00E7D3BA00E7D3B900E7D3
      BA00E7D4BA00E7D3B900E7D3BA00E7D3BA00E7D3B900E7D3B900E7D3BA00E7D3
      BA009B6C46000000000000000000000000000000000000000000000000005B5B
      5B00AEAEAE000000000000000000000000000000000072727200949494000000
      000000000000939393007777770000000000000000000000000000000000B1B1
      B1005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF93939300CBCBCB00000000FF000000FF000000FF000000FF6D6D
      6D000000000000000000000000006F6F6F00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009D6D
      4800E8D6BE00E8D6BE00A9764F00A8744D00A8744D00A8744D00A8744D00A874
      4D00A8744D00A8744D00A8744D00A8744D00A8744D00A8744D00E9D6BE00E8D6
      BE009C6C48000000000000000000000000000000000000000000000000005B5B
      5B00AEAEAE00000000000000000000000000000000006B6B6B00A1A1A1000000
      0000000000009F9F9F006C6C6C0000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      0400000000000000000057575700000000FFC2C2C200D8D8D800000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009F6E
      4900E9D9C300E9D9C200E9D9C300E9D9C300E9D9C300E9D9C300EAD9C300E9D8
      C300E9D8C200E9D8C300E9D9C200E9D8C200EAD8C300EAD9C300E9D9C300E9D9
      C3009F6E48000000000000000000000000000000000000000000000000005B5B
      5B00AEAEAE0000000000000000000000000000000000CACACA0023232300A8A8
      A800A7A7A70023232300CCCCCC0000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC1C1C100444444004343
      43004B4B4B00000000FF000000FF000000FF000000FF000000FF000000FFAAAA
      AA000404040054545400000000FFC2C2C2000B0B0B0016161600D4D4D4000000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000A170
      4A00EBDBC800EBDCC900EADBC800EADCC800EADAC800E8DAC500E7D8C500E7D8
      C400E7D9C400E7D9C500E8D9C500E9DAC700EADCC900EADCC900EBDCC800EBDC
      C900A16F49000000000000000000000000000000000000000000000000005B5B
      5B00AEAEAE000000000000000000000000000000000000000000C2C2C2003030
      300030303000C5C5C50000000000000000000000000000000000000000005757
      570026262600C1C1C10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFBEBEBE00434343004343
      430049494900000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC6C6C600000000FFC2C2C2000B0B0B00000000000000000016161600D4D4
      D400000000FF000000FF000000FF000000FF000000000000000000000000A372
      4A00EBDECD00EADDCC00A8754E00A5724C00A3714B00A16F4A00A16F4A00A06E
      4900A16F4A00A2704A00A4714B00DBC5B000BD987800A8744D00ECDECD00EBDE
      CD00A4714A000000000000000000000000000000000000000000000000005C5C
      5C00AEAEAE000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000000000000232323008585
      8500939393002A2A2A00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0D0D0D00000000000000000000000000000000001919
      1900DEDEDE00000000FF000000FF000000FF000000000000000000000000A673
      4B00E9DDCF00E6DBCB00E2D7C800E0D5C500DCD1C100D9CFBE00D7CCBC00D5CC
      BC00D6CCBC00D9CEBF00DED3C300E3D8C900E6DCCC00E9DECF00EBE0D000EDE2
      D100A6724C000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000099999900717171000000
      000000000000C5C5C50047474700000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF6D6D6D0004040400A8A8A800000000FF000000FF0000
      00FF000000FF000000FFA8A8A800030303000000000000000000000000000000
      00002F2F2F00000000FF000000FF000000FF000000000000000000000000A874
      4C00E4DBCD00DFD6C900D9D0C300D4CBBE00CFC5B900CBC2B500C4BDB300B5B1
      AF00B7B4B000C9C1B600D3CABD00DAD1C300E1D8CA00E6DECE00E9E0D200ECE2
      D400A8744D000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000099999900717171000000
      000000000000C4C4C40045454500000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF6C6C6C00000000000000000003030300C6C6C600000000FF0000
      00FF000000FF000000FF000000FFA8A8A8000303030000000000000000000000
      00000000000098989800000000FF000000FF000000000000000000000000A170
      4900DBD4C800D5CEC10090654400885F41007E5D4A00795B4A00705A5000265F
      9500265F9500755C5000885F410091644300976945009E6D4800E8E1D400EBE3
      D700A9764D000000000000000000000000000000000000000000000000005151
      5100A4A4A4000000000000000000000000000000000000000000000000008383
      8300868686000000000000000000000000000000000000000000222222008686
      86009393930029292900B4B4B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272720014141400191919007676
      760000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFA1A1A10000000000000000000000000057575700000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA7A7A70000000000000000000000
      0000000000003A3A3A00000000FF000000FF0000000000000000000000009E6D
      4700CDC9BE00B6B7B500A9AAAB00989DA300276196002D6299002D62990087B4
      E40087B4E40028619600999EA600B2B2B100C9C3BB00D9D3C900E5DED400E9E3
      D900AC764D000000000000000000000000000000000000000000363636001E1E
      1E001B1B1B007777770000000000000000000000000000000000000000008383
      8300838383000000000000000000000000000000000000000000000000005454
      540025252500BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171000000000000000000000000000000
      000077777700000000000000000000000000000000FF000000FF000000FF0000
      00FFDDDDDD00191919000000000057575700000000FFBEBEBE000E0E0E00A8A8
      A800000000FF000000FF000000FF000000FF000000FF57575700000000000000
      00000000000007070700000000FF000000FF0000000000000000000000009569
      4700A8ACB1002963980030659B0030659B0088B5E40088B5E40030659B008BB5
      E2008BB5E20035669D0031659B0029639800A6AAB000CECAC200E0DBD200E8E3
      D900AC774D0000000000000000000000000000000000646464008B8B8B000000
      0000000000003A3A3A00C1C1C100000000000000000000000000000000008383
      830083838300000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C200C1C1C1000000
      000019191900000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFD8D8D8006F6F6F00000000FFBEBEBE0009090900000000000303
      0300A9A9A900000000FF000000FF000000FF000000FF81818100000000000000
      00000000000000000000000000FF000000FF0000000000000000000000008A68
      4F002B669A008AB6E5008AB6E50033689D008DB7E3008DB7E30031679C007BA2
      D2007BA2D20033679D008AB6E5008AB6E5002B669A0083624C00DBD9D000E4E1
      D800AC764D000000000000000000000000000000000037373700DADADA000000
      000000000000828282008F8F8F00000000000000000000000000000000008383
      830083838300000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000003939
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400C2C2C2000000
      000019191900000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFC2C2C2000909090000000000000000000000
      000003030300A9A9A900000000FF000000FF000000FF31313100000000000000
      00000000000010101000000000FF000000FF0000000000000000000000008767
      5000336C9F0091B9E50091B9E500336B9F007FA4D4007FA4D400336B9F009EC3
      EB009EC3EB00336C9F0091B9E50091B9E500336C9F00B2B8B900D9D7CF00E3E0
      D900AB764D000000000000000000000000000000000071717100787878000000
      0000000000002E2E2E00C7C7C700000000000000000000000000000000008383
      830083838300000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171000000000000000000000000000000
      000076767600000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD8D8D8001919190000000000000000000000
      000000000000010101005C5C5C00838383003232320000000000000000000000
      00000000000051515100000000FF000000FF0000000000000000000000008666
      5000366EA10083A8D60083A8D600366EA100A5C9EE00A5C9EE00366FA100B1D3
      F500B1D3F500366EA10083A8D60083A8D600366EA100B1B7B900D7D6CF00E2E0
      D900AD774E0000000000000000000000000000000000000000004B4B4B000D0D
      0D00121212008E8E8E0000000000000000000000000000000000000000008686
      860083838300000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007171710012121200191919007676
      760000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD9D9D9001A1A1A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBE00000000FF000000FF0000000000000000000000008867
      51003873A400ACCFF000ACCFF0003873A400B8D8F800B8D8F8003873A400BBDA
      F900BBDAF9003873A400ACCFF000ACCFF0003873A400886751009F6E4800A773
      4B00AE784E000000000000000000000000000000000000000000000000005757
      5700AEAEAE000000000000000000000000000000000000000000000000008686
      860086868600000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD8D8D800191919000000
      0000000000000000000000000000000000000000000000000000000000000000
      000068686800000000FF000000FF000000FF000000000000000000000000E6ED
      F4003B76A600C1DFFB00C1DFFB003B76A600C3E0FC00C3E0FC003B76A600C4E1
      FC00C4E1FC003B76A600C1DFFB00C1DFFB003B76A6007BA2D20091B9E50091B9
      E5005483B5000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      860086868600000000000000000000000000000000000000000000000000B1B1
      B1005C5C5C000000000000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFDDDDDD002B2B
      2B00000000000000000000000000000000000000000000000000000000006767
      6700000000FF000000FF000000FF000000FF000000000000000000000000EAEF
      F6003574A300CBE5FF00CBE5FF003775A400CBE5FF00CBE5FF003775A400CBE5
      FF00CBE5FF003775A400CBE5FF00CBE5FF003574A3005483B5005483B5005483
      B500000000000000000000000000000000000000000000000000000000005C5C
      5C00B1B1B1000000000000000000000000000000000000000000000000008686
      860086868600000000000000000000000000000000000000000000000000AEAE
      AE005C5C5C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF909090003232320001010100000000000B0B0B004E4E4E00BEBEBE000000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000FBFC
      FD00DCE6F0003676A4003676A400CBDAE9003676A4003676A400CBDAE9003676
      A4003676A400CBDAE9003676A4003676A400DCE6F000FBFCFD00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00C9C9C900000000000000000000000000000000000000000000000000A4A4
      A400A4A4A400000000000000000000000000000000000000000000000000C6C6
      C6007F8080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FBFCFD00EAF0F600EAF0F600F8FAFC00EAF0F600EAF0F600F8FAFC00EAF0
      F600EAF0F600F8FAFC00EAF0F600EAF0F600FBFCFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC002E2E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D00717171000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A3A3A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A3A3A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B890
      B00088427A0087437900BA93B100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEAEAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000232323008585
      8500CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00858585002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F6995007C2E
      6C007C2E6C007C2E6C007C2E6C00BA93B1000000000000000000000000000000
      0000000000000000000000000000F1C4AF00E99C7A00ECAB8F00F8E3DB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F6995007C2E6C007F37
      70009D8693009B8192007C2E6C00874379000000000000000000000000000000
      00000000000000000000E1754800DA4A0C00D74E1400D7490C00D84E1200F0BC
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F6995007C2E6C007F3770009E89
      9500A59D9E009D8693007C2E6C00874379000000000000000000000000000000
      000000000000E99E7C00D7490C00F0BCA5000000000000000000E1794C00D950
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717006464
      640087878700C2C2C20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000067676700000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      00000000000000000000D0B6CB00A6729C008E4B80007D336F00833A74008C49
      7E00A9789E00D3BBCE00000000009F6995007C2E6C007F3770009E899500A59D
      9E009D8994007F3770007C2E6C00B991B1000000000000000000000000000000
      000000000000DE653000E4855900000000000000000000000000F8E6DE00DA4A
      0C00EEB69F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB0000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000D0B6CB008A467C007C2E6C007C2E6C007C2E6C007C2E6C007C2E6C007C2E
      6C007C2E6C007C2E6C007F336E007C2E6C007F3770009E899500A59D9E009D89
      94007F3770007C2E6C00A1699500000000000000000000000000000000000000
      000000000000DA592200E7916D0000000000000000000000000000000000D749
      0B00ECAC90000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400000000007070
      70000D0D0D000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E00CDCDCD00000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A600232323000000000000000000000000000000000000000000B083
      A7007C2E6C007C2E6C00864462009C774900AC9A3900B4AA3200B4AB3100AC9A
      39009C774900864362007C2E6C007C2E6C008B567F00A49C9D009D8994007F36
      70007C2E6C00A169950000000000000000000000000000000000000000000000
      000000000000DF835A00D9501700F5DACE000000000000000000EAA38400DA4A
      0C00F5D6CA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E00000000000000000023232300A6A6
      A600000000000000000000000000BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00DBDBDB00000000000000
      0000A6A6A6002323230000000000000000000000000000000000B083A7007C2E
      6C007D316A009E794900B6B02E00B7B12E00B7B12E00B7B12E00B7B12E00B7B1
      2E00B7B12E00B6B02E009D7949007D306B007C2E6C008B567E007F3670007C2E
      6C00A16995000000000000000000000000000000000000000000000000000000
      000000000000F2DED400D4480C00D6480D00E37F5600DF704100DA4A0C00E68E
      6700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010100000000000000000023232300A6A6
      A60000000000000000006D6D6D00101010001010100010101000101010001010
      1000101010001010100010101000101010001010100059595900000000000000
      0000A6A6A60023232300000000000000000000000000CFB4CA007C2E6C007D31
      6A00A88E3E00B7B12E00B7B12E00B7B12E00B7B12E00B7B12E00B7B12E00B7B1
      2E00B7B12E00B7B12E00B7B12E00A78E3F007D306B007C2E6C007C2E6C00A169
      9500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECBFAC00D44B0F00D74C1100E0704100EEB398000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A60023232300000000000000000000000000874079007C2E6C009E7A
      4800B7B12E00B7B12E00B7B12E00B7B12E00B7B12E00B7B12E00B7B12E00B7B1
      2E00B7B12E00B7B12E00B7B12E00B7B12E009D7949007C2E6C007F336E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFD0C100D6501600DD633000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A600232323000000000000000000CDB0C8007C2E6C0087456100B6B0
      2E00B7B12E00B9B23100C2BA4200C9C04E00CEC45800D0C55B00D0C55B00CEC3
      5700C8C04E00C2B94200B8B33000B7B12E00B6B02E00864362007C2E6C00D3BB
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFD0C100D6501600DD6330000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000B1B1B100767676007676760076767600767676007676
      76007676760076767600767676007676760076767600A5A5A500000000000000
      0000A6A6A600232323000000000000000000A16995007C2E6C009D784900B7B2
      2F00C3BB4400D0C55B00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D0C55B00C3BB4400B7B22F009D774A007C2E6C00A977
      9E00000000000000000000000000000000000000000000000000000000000000
      0000F0B9A100F0C6B300EFCAB900EECAB900EECAB900E7A98D00D34C1200DB5D
      2800F1C2AE00F3CDBC00F3CDBC00F3CDBC00F3CDBC00F3CDBC00F3CDBC00F3CD
      BC00F3CDBC00F3CDBC00F5D7CB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A60000000000000000009E9E9E00545454005454540054545400545454005454
      540054545400545454005454540054545400545454008F8F8F00000000000000
      0000A6A6A600232323000000000000000000854078007C2E6C00AE9D3A00CAC0
      5000D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00C9C04F00AD9B3B007C2E6C008E4B
      8000000000000000000000000000000000000000000000000000E6926E00D749
      0C00DA4A0C00DA4A0C00D9490C00D6490D00D6490D00D6490D00D6490D00D649
      0D00D9490C00DA4A0C00DA4A0C00DA4A0C00DA4A0C00DA4A0C00DA4A0C00DA4A
      0C00DA4A0C00DA4A0C00DA4A0C00F6DED2000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000007C2E6C007C2E6C00C3B64D00D1C6
      5D00E4E2C900E4E1C800D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00C3B64D007C2E6C008037
      71000000000000000000000000000000000000000000E6926E00D7490D00E99A
      7A00EDAA8E00E4855B00D74A0C00E27E5300EFCAB900EECAB900EECAB900EBBB
      A600EEC5B200F2CDBC00F3CDBC00F3CDBC00F3CDBC00F3CDBC00F3CDBC00F3CD
      BC00F3CDBC00F3CDBC00F5D7CB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000007C2E6C007C2E6C00CCBE5E00D1C6
      5D00E9E8E300EAEAEA00D2C86400D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00CCBE5E007C2E6C008034
      6F000000000000000000000000000000000000000000D7490C00E99A7A000000
      00000000000000000000E99B7900D7490C000000000000000000000000000000
      000000000000F1D5C700E3835900000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A60000000000000000007B7B7B00212121002121210021212100212121002121
      2100212121002121210021212100212121002121210068686800000000000000
      0000A6A6A600232323000000000000000000874079007C2E6C00C3AD6000D1C6
      5D00E4E2CC00EAEAEA00D9D28B00D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00C2AC60007C2E6C008F4D
      800000000000000000000000000000000000F6D9CC00DA4A0C00F2C7B5000000
      00000000000000000000F2C6B400DA4A0C00F6D9CC0000000000000000000000
      000000000000F1D6CA00D44D1400DD6734000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E0000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000D3D3D300A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900CCCCCC00000000000000
      0000A6A6A6002323230000000000000000009F6794007C2E6C00AC846400D1C6
      5D00DCD69A00EAEAEA00E7E6DA00D3C96700D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00D1C65D00AB8264007C2E6C00A773
      9D000000000000000000000000000000000000000000D7490C00E99A7A000000
      00000000000000000000E99A7A00D7490C000000000000000000000000000000
      00000000000000000000EFD0C100D6501600DD63300000000000000000000000
      000000000000000000000000000000000000CCCCCC002D2D2D00000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A600232323000000000000000000CAABC3007C2E6C008B496900D0C4
      5D00D1C76000E6E3D000EAEAEA00E7E6DA00D9D28B00D2C86400D1C65D00D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00D0C55D008A476A007C2E6C00D1B7
      CB000000000000000000000000000000000000000000E6926E00D84B0E00E99B
      7900F2C6B400E99A7A00D7490D00E6926E000000000000000000000000000000
      0000000000000000000000000000EFD0C100D6501600DD633000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000828282000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00000000000000
      0000A6A6A60023232300000000000000000000000000863E75007C2E6C00AF88
      6300D1C65D00D4CA6C00E6E3D000EAEAEA00EAEAEA00EAEAEA00E4E1C800D1C6
      5D00D1C65D00D1C65D00D1C65D00D1C65D00AD8564007C2E6C00884577000000
      0000000000000000000000000000000000000000000000000000E6926E00D749
      0B00DA4A0C00D7490C00E6926E00000000000000000000000000000000000000
      000000000000000000000000000000000000EFD0C100D6501600DD6330000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BA0076767600767676007676760096969600000000000000000023232300A6A6
      A600000000009696960000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000969696000000
      0000A6A6A60023232300000000000000000000000000CAACC4007C2E6C007F32
      6C00BCA06100D1C65D00D1C76000DCD69A00E5E3CC00E9E9E400E4E2C900D1C6
      5D00D1C65D00D1C65D00D1C65D00BB9F61007E326B007C2E6C00D1B7CB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6D9CC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFCCBD00D44D1400DE67
      3500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E0000000000000000001D1D1D00DCDCDC000000000000000000232323004242
      420065656500474747000D0D0D000D0D0D000D0D0D0007070700040404000404
      04000404040004040400070707000D0D0D000D0D0D000D0D0D00474747006565
      6500424242002323230000000000000000000000000000000000AA79A0007C2E
      6C007F326C00AE876300D0C45D00D1C65D00D1C65D00D1C65D00D1C65D00D1C6
      5D00D1C65D00D0C55D00AD8663007E326B007C2E6C00B084A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFCDBE00E184
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00000000001F1F1F00DEDEDE000000000000000000000000008E8E8E006565
      650065656500656565006565650065656500656565000B0B0B001B1B1B002828
      2800282828001B1B1B000B0B0B00656565006565650065656500656565006565
      6500656565008E8E8E000000000000000000000000000000000000000000AB7A
      A1007C2E6C007C2E6C008B496900AC846400C3AD5F00CDBF5E00CDBF5E00C3AD
      5F00AC8464008B4869007C2E6C007C2E6C00B086A70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E001F1F1F00DEDEDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E1E1E0089898900CBCB
      CB00CBCBCB00898989001E1E1E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAACC400853E75007C2E6C007C2E6C007C2E6C007C2E6C007C2E6C007C2E
      6C007C2E6C007C2E6C0086407800D0B5CA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6F000D0D0D000000000000000000000000000000000000000000000000009E9E
      9E00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CAACC4009F679400874079007C2E6C007C2E6C008740
      7900A1699500CDB0C80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFD6CA00BFAE9700C0AD9600C0AD
      9600C0AD9600C0AD9600C0AD9600C0AD9600C0AD9600C0AD9600C0AD9600C0AD
      9600C0AD9600BFAC9500BDAA9500BCAA9300D2C6B70000000000000000000000
      00000000000000000000000000000000000000000000D8F0F900B2E2F500B1E2
      F500B1E2F500B1E2F400B1E2F500B1E2F500B1E2F400B1E2F500B1E2F500B1E2
      F500B1E2F400B1E2F500B1E2F400B1E2F500B1E2F500B1E2F400B1E2F500B2E3
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F6F400F3EDE900F3EDE900F3EDE900F3EDE900F3EDE900F3ED
      E900F3EDE900F2ECE800EFE9E500EEE9E400EEE9E400EEE9E400F2EFEC000000
      000000000000000000000000000000000000B4997600EDD4B000EDD4B000EDD4
      B000EDD4B000EDD4B000EDD4B000EDD4B000EDD4B000EDD4B000EDD4B000EDD4
      B000EDD4B000EDD4B000ECD3AF00E9D0AD00BDA38000EAE6E200000000000000
      000000000000000000000000000000000000DDEFF60010AAE3000DA9E2000EAB
      E5000EABE5000DA9E2000EABE5000EABE5000DA9E2000EABE5000EABE5000EAB
      E5000DA9E2000EABE5000DA9E2000EABE5000EABE5000DA9E2000EABE5000EAB
      E5002BB4E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECE3DD00EADFD700EADED700EADED700EADED700EADED700EADE
      D700EADED700EADED700E9DDD600E6DAD300E5DAD300E5DAD300DFD3C800F6F4
      F30000000000000000000000000000000000BCAA9100F6EEE300F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F6EEE300CEBFAB00E4DED800000000000000
      000000000000000000000000000000000000C5DFF00011A7E20012AAE40012AA
      E40012AAE40012AAE40012AAE40012AAE40012AAE40012AAE40012AAE40012AA
      E40012AAE40012AAE40012AAE40012AAE40012AAE40012AAE40012AAE40012AA
      E40012AAE400BBE6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFAF900F0E7E200E5DBD400DAD0C700DAD0C700DAD0C700DAD0C700DAD0
      C700DCD0C800EFE5E100F0E7E200EFE6E100ECE3DE00EBE2DE00E3D8CE00F2F0
      EE0000000000000000000000000000000000BEAD9600F2EBE000F6EEE300F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400D2C4B100E4DFDA00000000000000
      000000000000000000000000000000000000B0D0E9001B9AD90018ACE50019AE
      E70019AEE70018ACE50019AEE70019AEE70018ACE50019AEE70019AEE70019AE
      E70018ACE50019AEE70018ACE50019AEE70019AEE70018ACE50019AEE70019AE
      E70018ACE50081D1F0000000000000000000000000000000000000000000E9D9
      C000BF8C3E00B9802900C7C3BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00B9802900BF8D
      3E00E9DAC2000000000000000000000000000000000000000000000000000000
      0000FBFAF900F0E7E200E5DBD400DAD0C700DAD0C700DAD0C700DAD0C700DAD0
      C700DCD0C800EFE5E100F0E7E200F0E7E200EFE6E100ECE3DE00E3D8CE00F2F0
      EE0000000000000000000000000000000000BEAD9600F2EAE000F2EBE000F6EE
      E300F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400ECE2
      D200F0DCC100F4E5D200F7EFE400F7EFE400D3C5B200E8E2DC00000000000000
      0000000000000000000000000000000000009DC6E50054A2D50020AFE60020B0
      E80020B0E8001FAEE60020B0E80020B0E8001FAEE60020B0E80020B0E80020B0
      E8001FAEE60020B0E8001FAEE60020B0E80020B0E8001FAEE60020B0E80020B0
      E8001FAEE6004BBEEA000000000000000000000000000000000000000000C68E
      3B00D7953200DB983400F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00DB983400D796
      3300C78F3C00000000000000000000000000E7E5E100A99E92008B7D6B008D7D
      6C009D908100F0E7E200E1D7CF00D3C8BD00D3C8BD00D3C8BD00D3C8BD00D3C8
      BD00D3C8BD00D3C8BD00D3C8BD00D3C8BD00D3C8BD00E0D6CE00E4D8CE00A296
      87008B7D6B008B7D6B0092837400DAD5D000BEAD9600F2EAE000F2EAE000EEE6
      D900EFE4D800F0E5D900F0E5D900F0E5D900F0E5D900F6EDE200F7EFE400CFBE
      A900A3957900C8B39000EFD8BA00F6ECDF00D3C5B200E8E2DC00000000000000
      00000000000000000000000000000000000089BADF005C9DCF005CC1E90026B0
      E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0
      E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0E70026B0
      E70026B0E70029B1E7000000000000000000000000000000000000000000D795
      3200DB983400DB983400F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00DB983400DB98
      3400D79633000000000000000000000000008C7E6C007C6B5600776650007766
      500087766300F0E7E200E9E0DA00E2D7D000E2D7D000E2D7D000E2D7D000E2D7
      D000E2D7D000E2D7D000E2D7D000E2D7D000E2D7D000EAE0DA00E7DBD1008877
      640076654F007766500076644F006F5A4700BEAD9700F2EAE000F2EAE000D8CA
      B800CCBCA800CFBEAA00D0BFAB00D0BFAB00D0BFAB00EEE4D600F7EFE400F0E5
      D9009BAB9C0093BFBA0097847700EAD0AF00D4C3AE00E8E2DC00000000000000
      00000000000000000000000000000000000077AFDB004491CC00B5DCEB002EB4
      EA002EB4EA002DB2E8002EB4EA002EB4EA002DB2E8002EB4EA002EB4EA002EB4
      EA002DB2E8002EB4EA002DB2E8002EB4EA002EB4EA002DB2E8002EB4EA002EB4
      EA002DB2E8002EB4EA00BCE5F60000000000000000000000000000000000DB98
      3400DB983400DB983400F1F0EC00F1F0EC00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00F1F0EC00F1F0EC00DB983400DB98
      3400DB9834000000000000000000000000007C6C56007C6B56007C6B56007C6B
      56008A7A6700EFE6E100DED4CC00D0C3B800D0C3B800D0C3B800D0C3B800D0C3
      B800D0C3B800D0C3B800D0C3B800D0C3B800D0C3B800DED4CC00E8DCD2008B79
      65007C6C56007C6B56007C6B56006E5A4400C1AE9800F2EBE000F2EAE000F2EA
      E000F2EAE000F2EBE000F6EEE300F7EFE400F7EFE400F7EFE400F7EFE400F7EF
      E400C9C0AD00958D80009487E40092788700C5AB8900E8E2DC00000000000000
      00000000000000000000000000000000000064A6D9002D87CC00EBECEC0053BF
      EB0038B8EC0034B4E90035B6EB0035B6EB0034B4E90035B6EB0035B6EB0035B6
      EB0034B4E90035B6EB0034B4E90035B6EB0035B6EB0034B4E90035B6EB0035B6
      EB0034B4E90035B6EB0089D3F20000000000000000000000000000000000DB98
      3400DB983400DB983400F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00DB983400DB98
      3400DB9834000000000000000000000000007D6C56007C6C56007C6B56007C6B
      56008A7A6700ECE3DE00ECE2DE00E9DFD900E9DFD900E9DFD900E9DFD900E9DF
      D900E9DFD900E9DFD900E9DFD900E9DFD900E9DFD900EDE4DE00E7DCD2008C7A
      66007D6C56007C6C56007C6B56006E5A4400C2AE9800F6EEE300F2EBE000CAB9
      A500BDA99200BDA99200BEA99300C0AB9400C1AC9500C1AC9500CBBAA300F7EF
      E400F7EFE400BFADA5009F8EC5009689EC008C748800D8CDC700000000000000
      00000000000000000000000000000000000055A1DA00177FCC00EBEBEC00A5D6
      EA0057C4EF003CB7EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6
      EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6EA003AB6
      EA003AB6EA003AB6EA005AC2ED0000000000000000000000000000000000DB98
      3400DB983400DB983400F1F0EC00F1F0EC00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00C7C3BD00C7C3BD00C7C3BD00C7C3BD00F1F0EC00F1F0EC00DB983400DB98
      3400DB9834000000000000000000000000007E6D57007D6C56007C6C56007C6B
      560084746100E3D7CE00E2D6CB00E5D9CE00E6DACF00E6DACF00E6DACF00E6DA
      CF00E6DACF00E6DACF00E6DACF00E6DACF00E6DACF00E6DACF00E4D6CA008C7A
      66007E6D57007D6C56007C6C56006E5A4400C2AE9800F7EFE400F6EEE300F2EB
      E000F2EAE000F2EAE000F2EAE000F2EBE000F6EEE300F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400C6B6AB009F8CBC00998BF1008A758F00E1D9D9000000
      000000000000000000000000000000000000469BDB001281D400DDE5EA00E9EC
      ED0078C4DB0070CBEC0071CEF10070CDF00070CCEF0072CFF20070CDF0006BCE
      F30063C9F10043BBEE0041B8EC0042BAEE0042BAEE0041B8EC0042BAEE0042BA
      EE0041B8EC0042BAEE0042B8EC0000000000000000000000000000000000DB98
      3400DB983400DB983400EFE7D800F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00EFE6D700DB983400DB98
      3400DB9834000000000000000000000000007E6D57007E6D57007D6C56005C49
      2F00463213004632130046321300463213004632120047321200473212004732
      1200473212004732120047321200473212004732120047321200473212004732
      12005D4A2F007E6D57007D6C56006E5A4400C2AE9800F7EFE400F7EFE400F6EE
      E300F2EBE000F2EAE000F2EAE000F2EAE000F2EBE000F6EEE300F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400CFBFB3009885A9009A8EF4008C78A200D8CF
      D100CFC3B6000000000000000000000000003597DE001487DA00C6DAE900EDED
      ED00DBC59A00CFBD9800DBD4CD00C2BFB500D9D1C900E0DBD600C4BEB400C0C3
      BF0081BFD50068CCF30048BAED0049BCEF0049BCEF0048BAED0049BCEF0049BC
      EF0048BAED0049BCEF0049BCEF00BEE6F700000000000000000000000000DB98
      3400DB983400DB983400E1B26900EEE7D900F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00EFE7D800E1B16900DB983400DB98
      3400DB9834000000000000000000000000007E6D57007E6D57007E6D5700614E
      34004E3A1C004E3A1D004E3A1D004E3A1D004E3A1C004E3A1C004F3A1C004F3A
      1C004F3A1C004F3A1C004F3A1C004F3A1C004F3A1C004F3A1C004F3A1C004F3A
      1C00624F34007E6D57007E6D57006F5A4400C2AE9800F7EFE400F7EEE300C4B1
      9A00C0AB9400BEA99300BDA99200BDA99200E5DBCC00D6C7B600C0AB9400C1AC
      9500C1AC9500C1AC9500D5C7B300F7EFE400BCAA98009D88A4009C90F5008975
      A300C3B5B400B9A7910000000000000000002F97E100188DE100AFD1E900EDED
      ED00EDEDED00EAEAEA00DED7D100D2CFC900D4CAC000DBD3CC00D0C5BA00D1C6
      BB00D7D0C90099CBDF0064C7F10050BEF00050BEF0004EBCEE0050BEF00050BE
      F0004EBCEE0050BEF00050BEF00094D6F400000000000000000000000000DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB9834000000000000000000000000007E6D57007E6D57007E6D57007E6D
      57007D6C56007C6C56007C6B56007C6B56007C6B56007C6C56007D6C56007E6D
      57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D5700705B4500C2AE9800F7EFE400F7EFE400F7EF
      E400F7EFE400F6EEE300F2EBE000F2EAE000F2EAE000F2EAE000F2EBE000F6EE
      E300F7EFE400F7EFE400F7EFE400F7EFE400D3C5B200D0C5BE009F8BA0009D8B
      C100A7876200CCBCA600BCAB9700000000006BB7ED003B9EE700A6CDEA00EBEB
      EB00EAEAEA00EAEAEA00E1DCD800DED7D100E2DEDA00E5E3E100E7E6E600DDD8
      D400D8D2CC00D8D5D10086CDEB006AC9F20055BEEF0055BEEF0055BEEF0055BE
      EF0055BEEF0055BEEF0055BEEF0078CEF200000000000000000000000000DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB9834000000000000000000000000007E6D57007E6D57007E6D57007E6D
      57007E6D57007D6C56007C6C56007C6B56007C6B56007C6B56007C6C56007D6C
      56007E6D57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D5700705B4500C2AE9800F7EFE400F7EEE300D2C1
      AD00D0BFAB00D0BFAB00CFBEAA00CCBCA800CCBBA800CCBBA800CCBBA800CCBC
      A800F4EBE000DCCEBC00DED0BF00F7EFE400D3C5B200E8E2DC00E8E3E000A68B
      6E00EACFA900BF9C7200C4B19800B7A48E0000000000C8E4F800D6E9F500F2F2
      F200EDEDED00EAEAEA00EDEDED00E9E8E600DBD3CC00DCD4CC00DED8D200E3E1
      DE00EBEBEB00EFEFEF00E5F0F50086D2F3007BD3F70078D0F40079D2F60079D2
      F60078D0F40079D2F6007AD3F70083D0F300000000000000000000000000DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB9834000000000000000000000000007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007D6C56007C6C56007C6B56007C6B56007C6B56007C6C
      56007D6C56007E6D57007E6D57007E6D57007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D5700705B4500C2AE9800F7EFE400F7EFE400F0E7
      DA00F0E5D900F0E5D900F0E5D900EFE4D800ECE1D500EBE0D500EBE0D500EAE1
      D600F2EBE000F1E9DC00F3EADE00F7EFE400D3C5B200E8E2DC00000000000000
      0000B69E7E00E9CDA700C3A37600AB9475000000000000000000000000000000
      0000F3F3F300EBEBEB00EAEAEA00EEEEEE00F2F2F200F6F6F600FAFAFA000000
      000000000000000000000000000000000000CAEAF900AFDFF700AEDFF700AEDF
      F700AEDFF700AEDFF700B5E1F70000000000000000000000000000000000DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB9834000000000000000000000000007E6D5700738464007A765B00708D
      690074624D0065533E0065533E0073614C007C6C56007C6B56007C6B56007C6B
      56007C6C56007D6C56007E6D57007E6D57007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D5700705B4500C2AE9800F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F6EEE300F2EBE000F2EAE000F2EA
      E000F2EAE000F2EBE000F6EEE300F7EFE400D3C5B200E8E2DC00000000000000
      000000000000B79E8000E5CBA500B29571000000000000000000000000000000
      000000000000F9F9F90000000000000000000000000000000000000000000000
      00004FC6880095DBB60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      3400DB983400DB983400D1913100BD832A00B9802900B9802900B9802900B980
      2900B9802900B9802900B9802900B9802900BD822A00D1913100DB983400DB98
      3400DB9834000000000000000000000000007C6B55007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D57007E6D57007D6C56007C6C56007C6B56007C6B
      56007C6B56007C6C56007D6C56007E6D57007E6D57007E6D57007E6D57007E6D
      57007E6D57007E6D57007E6D570074624C00C2AE9800F7EFE400F7EEE300C4B1
      9900C1AC9500CDBCA700EDE2D500C1AC9500C1AC9500C0AB9400BEA99300BDA9
      9200BDA99200BDA99200D1C3B000F6EEE300D2C4B200D4C8BB00E4DDD500E4DD
      D5000000000000000000C4B19B00EBE6DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000075DAAB0029C3780044C48300BAE7CF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      3400DB983400DB983400BD832A00C9A06100EBE4D600F1F0EC00F1F0EC00F1F0
      EC00F1F0EC00F1F0EC00F1F0EC00EBE4D600C9A06000BD822A00DB983400DB98
      3400DB9834000000000000000000000000009E92820081705A008F7C66008F7D
      67008F7D67008F7D67008F7D67008F7D67008F7D67008E7C66008D7B66008D7B
      66008D7B66008D7B66008D7B66008E7C66008F7D67008F7D67008F7D67008F7D
      67008F7D67008B7963007E6D57009E938200C2AE9800F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F6EEE300F2EB
      E000F2EAE000F2EAE000F2EAE000F2EBE000D0C2AF00A9865800C4A27500BA9A
      6F00DBD1C5000000000000000000000000000000000000000000000000000000
      000000000000E6FAF10000000000000000000000000000000000000000000000
      000067DDAD0021CB810024C67D0027C1780063CE970000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      3400DB983400DB983400B9802900EBE4D600B8B6AA00A6A59500A6A59500B8B7
      A900F1F0EC00F1F0EC00F1F0EC00F1F0EC00EBE4D600B9802900DB983400DB98
      3400DB98340000000000000000000000000000000000D6D1C900CAC1B7009D90
      830083736300CFC2BB00CFC2BB00CFC2BB00CFC2BB00CFC2BB00CEC1BB00CBC0
      B900CBBEB800CBBEB800CBBEB800CBC0B900CEC1BB00CFC2BB00D6C9BF008B7C
      6B009D908300CAC1B700DEDAD40000000000C2AE9800F7EFE400F7EFE400D9CB
      B900D0BFAB00D0BFAB00D0BFAB00D0BFAB00D0BFAB00D0BFAB00EBE1D300F6EE
      E300F2EBE000F2EAE000F2EAE000F2EAE000CDC0AD00B6926300DCBA8B00CFAE
      8200DBD1C5000000000000000000000000000000000000000000000000000000
      000000000000B7F2DC008EEBC900A5EFD40093ECCB0077E7BD004AE0A8001CD7
      92001BD58D001ED48C001FCF860022CD840028CA8000ACE9CB00000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      3400DB983400DB983400B9802900F1F0EC00A6A59500A6A59500A6A59500A6A5
      9500F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00B9802900DB983400DB98
      3400EAC69200000000000000000000000000000000000000000000000000BFB9
      B1006E5D4A00F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200EFE6
      E100ECE3DE00EBE2DE00EBE2DE00EBE2DE00ECE3DE00EFE6E100E8DCD2007C6C
      5A00BEB7AF00000000000000000000000000C2AE9800F7EFE400F7EFE400F1E9
      DC00F0E5D900F0E5D900F0E5D900F0E5D900F0E5D900F0E5D900F5EDE100F7EF
      E400F6EEE300F2EBE000F2EAE000F2EAE000CDBFAD00B4916300DBB98A00CFAE
      8200DBD1C5000000000000000000000000000000000000000000000000000000
      000000000000000000006EE6BA001BDB940018D891001ADB94001ADB94001ADB
      940019D891001AD992001BD58D001ED58C0051DBA10000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDA0
      4800DB983400DB983400B9802900F1F0EC00A6A59500A6A59500A6A59500A6A5
      9500F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00B9802900DB983400EBC9
      980000000000000000000000000000000000000000000000000000000000E0DE
      D9006E5D4A00F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7
      E200EFE6E100ECE3DE00EBE2DE00EBE2DE00EBE2DE00ECE3DE00E7DBD1007C6C
      5A00DEDBD700000000000000000000000000C1AE9900F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EF
      E400F7EFE400F6EEE300F2EBE000F2EAE000CDBFAD00B4916300D8B78900CEAD
      8100DBD1C5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000093EDCB002EDC9B0019D9920018D8910018D8
      910019D992001EDA940019D8910028DA9600C2F3DF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2DF
      C100DDA14700DB983400B9802900F1F0EC00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00B9802900EBC998000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080706100F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7
      E200F0E7E200EFE6E100ECE3DE00EBE2DE00EBE2DE00EBE2DE00E4D8CE008A7B
      6B0000000000000000000000000000000000C0AF9A00F7EFE500F7EFE400F7EF
      E400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EFE400F7EF
      E400F7EFE400F7EFE400F6EEE300F2EBE000D1C1AF00B28F6100D8B78900CAAA
      7F00DCD3C9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEF3DE00A6F0D300A9F0
      D400C3F4E1009FEED10019D992007DEABF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFAF900F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7
      E200F0E7E200F0E7E200EFE6E100ECE3DE00EBE2DE00EBE2DE00E7DDD600F4F2
      F00000000000000000000000000000000000C2B29F00DAD0C300F6F2EB00F7F3
      ED00F7F3ED00F7F3ED00F7F3ED00F7F3ED00F7F3ED00F7F3ED00F7F3ED00F7F3
      ED00F7F3ED00F7F3ED00F7F3ED00F6F2EC00EAE4DA00A48C6B00CEAC7E00B196
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000043E1A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDE4DF00F0E7E200F0E7E200F0E7E200F0E7E200F0E7E200F0E7
      E200F0E7E200F0E7E200F0E7E200EFE6E100ECE3DE00EBE2DE00E8DFDB000000
      00000000000000000000000000000000000000000000D9D0C500C1B29F00C0B0
      9D00C0B09D00C0B09D00C0B09D00C0B09D00C0B09D00C0B09D00C0B09D00C0B0
      9D00C0B09D00C0B09D00C0B09D00C0B09D00C0AF9C00B7A59100B49F8500EAE5
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF9F800F9F7F500F9F7F500F9F7F500F9F7F500F9F7F500F9F7
      F500F9F7F500F9F7F500F9F7F500F9F7F500F8F6F400F5F3F100F5F4F3000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE00007E7
      E7E7FFFFFFFF3FFFE00007E7E7E7FFFFFFFF3FFFE00007E7E7E7E007FFE73FFF
      E00007E7E7E7E007FFE339FFE00007E781E7FFFFFFF1F0FFE00007E799E7FFFF
      FFF9E0FFE00007E799E7E007FFFFE13FE00007E781E7E007FF87E21FE00007E7
      C3E3FFFFFF87F40FE00007E7E7C1FFFFFFFFFC07E00007E7E799E007FFFC7C07
      E00007E7E799E007FFF83E03E00007E7E7C1FFFF0FF07F03E00007C3E7E3FFFE
      07F08F83E0000799E7E7E00007F90783E0000799E7E7E00007FE0383E0000799
      E7E7FFFE07FE0003E00007C3E7E7FFFF0FFF0003E00007E7E7E7E007FFFF8007
      E00007E7E7E7E007FFFFC00FE0000FE7E7E7FFFFFFFFF01FE0003FE7E7E7FFFF
      FFFFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFF0007FFC00003FFFFE1FFFFFF00
      03FFC00003FFFFC0FE1FFF0003FFCFFFF3FFFF80FC0FFF0003FFCFFFF3FFFF00
      F8CFFF0003FFCC0033FC0200F9C7FF003FFFCE0073F00001F9E7FF002000CFFF
      F3E00003F8C7FF004000CE0033C00007F80FFF004000CC003380000FFC1FFF00
      4000CFFFF380001FFE3FFF004000CFFFF300000FFF1FFF004000CC003300000F
      F00001004000CC003300000FC00000004000CFFFF300000F800001004000CFFF
      F300000F9CF9FF004000CC003300000F1C78FF004000CC003300000F9CFC7F00
      4000CFFFF300000F80FE3FFFC01FCC003380001FC1FF1FFFC020C8001380001F
      F7FF8FFFC020C00003C0003FFFFFCFFFC021C00003E0007FFFFFFFFFC023FF81
      FFF000FFFFFFFFFFE027FF81FFFC03FF00007F80000FFFFFFFF8001F00003F00
      0007FFFFFFF8000F00003F000003FFFFFFF0000F00003F000003E00007F0000F
      00003F000003E0000700000000003F000003E0000700000000003F000001E000
      0700000000003F000001E0000700000000003F000001E0000700000000001F00
      0001E00007000000000007000000E00007000000000003000000E00007000000
      000001000000E00007000000000000800000E00007000000000030F01F01E000
      07000000000038FBF3FFE0000700000000000CFFF0FFE00007000000000007FB
      F07FE00007800001000007F8003FE00007E00007000007FC007FE0000FE00007
      000007FE007FE0001FF0000F000007FF80FFFFFFFFF0000F00000FFFFDFFFFFF
      FFF8001F80000FFFFFFFFFFFFFF8001F00000000000000000000000000000000
      000000000000}
  end
  object MenusImageList: TImageList
    Left = 572
    Top = 279
    Bitmap = {
      494C010119003000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF545454000D0D0D0000000000000000000D0D0D0052525200D9D9
      D900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD7D7
      D700111111000000000000000000000000000000000000000000000000001111
      1100D9D9D900000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF5050
      50000000000048484800000000FF000000FF000000FF000000FF474747000000
      000052525200000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0C0C
      0C0000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00000E0E0E00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0E0E
      0E0000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00000F0F0F00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF5252
      52000000000049494900000000FF000000FF000000FF000000FF484848000000
      000053535300000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFDADA
      DA00121212000000000000000000000000000000000000000000000000001313
      1300DBDBDB00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF686868000000000000000000000000000000000000000000000000006868
      6800000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD2D2
      D2000202020006060600AAAAAA00000000FF000000FFA9A9A900060606000202
      0200D2D2D200000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF8C8C
      8C000000000062626200000000FF000000FF000000FF000000FF616161000000
      00008D8D8D00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF8C8C
      8C000000000063636300000000FF000000FF000000FF000000FF616161000000
      00008D8D8D00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFCFCF
      CF000101010006060600ABABAB00000000FF000000FFAAAAAA00060606000101
      0100D1D1D100000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF737373000000000000000000000000000000000000000000000000007474
      7400000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF99999900242424000202020002020200252525008F8F8F000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3B3B003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      00008C8C8C002121210000000000000000000000000017171700666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B200414141000B0B0B000B0B0B0041414100B3B3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C003B3B3B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      8200000000000000000000000000000000000000000000000000000000002020
      2000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000029292900000000008B8B8B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      100000000000A3A3A300000000000000000000000000D0D0D000313131000000
      000066666600000000000000000000000000000000000000000000000000B2B2
      B200000000000505050087878700000000000000000084848400050505000000
      0000B3B3B3000000000000000000000000000000000000000000000000000000
      0000B9B9B900000000000C0C0C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2C2008787
      8700878787008787870087878700878787008787870087878700000000000000
      000087878700C0C0C00000000000000000000000000000000000000000009494
      9400939393000000000000000000000000000000000000000000D0D0D0000000
      0000171717000000000000000000000000000000000000000000000000004040
      4000000000008787870000000000000000000000000000000000848484000000
      0000414141000000000000000000000000000000000000000000000000000000
      0000000000004B4B4B0000000000626262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808000000000000000000000000000000000000000000000000000B0B
      0B00000000000000000000000000000000000000000000000000000000000000
      00000D0D0D000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB000606060001010100C8C8C80000000000000000000000
      0000000000000000000000000000000000000000000000000000565656000000
      0000252525007676760076767600767676007676760076767600000000000000
      000076767600A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000888888000000
      0000363636000000000000000000000000000000000000000000000000001313
      1300000000000000000000000000000000000000000000000000000000000000
      00000B0B0B000000000000000000000000000000000000000000000000000000
      0000000000000000000075757500000000003838380000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF000000
      00000A0A0A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00767676007676760076767600767676007474740047474700000000000000
      0000AEAEAE000000000000000000000000000000000000000000000000004545
      4500000000008787870000000000000000000000000000000000848484000000
      0000414141000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001919190000000000A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      4800000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A00000000000000000000000000000000000000000000000000060606008F8F
      8F0000000000000000000000000000000000000000000000000000000000C3C3
      C300000000000505050082828200DEDEDE00DDDDDD0080808000040404000000
      0000B4B4B4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0A0000000000017171700000000000000
      000000000000000000000000000000000000000000000000000000000000C1C1
      C100000000001111110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B2B
      2B0000000000666666008787870087878700878787009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000686868000000000000000000000000000000000000000000000000007C7C
      7C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3B0000000000777777000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B3B3B00000000008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005858
      5800000000009D9D9D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B3B3B0000000000000000000E0E0E0043434300B4B4B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCBCB000101010005050500D8D8
      D800000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400000000001A1A1A00000000000000000000000000393939003B3B
      3B00000000000000000000000000000000000000000000000000000000008585
      8500000000006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001E1E1E00000000005151510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000000000004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      00000000000031313100000000009A9A9A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B4
      B400000000004141410000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D4D4000F0F0F000000000076767600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      000000000000A7A7A70000000000262626000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B9B9B9000404040000000000B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      00002B2B2B000000000000000000000000000000000000000000000000000000
      00000000000000000000373737003B3B3B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343000000000000000000000000000000000000000000000000003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9E9E0012121200B4B4B4000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900000000000000000000000000000000000000000000000000000000000000
      00003F3F3F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C300C3C3C300878787000000
      000087878700878787000000000088888800C3C3C300C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C300C3C3C300888888000000
      000087878700878787000000000087878700C3C3C300C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B3B3B000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000004141
      4100000000000000000000000000000000000000000000000000000000000000
      00003C3C3C000000000000000000000000000000000000000000000000000000
      0000888888001F1F1F0000000000000000000000000018181800676767000000
      000000000000000000000000000000000000C3C3C300C3C3C300888888000000
      000087878700878787000000000087878700C0C1C100C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000393939000000000000000000000000000000000000000000000000003A3A
      3A00000000000000000000000000000000000000000000000000000000003636
      3600000000000000000000000000000000000000000000000000000000000000
      00003A3A3A000000000000000000000000000000000000000000000000008181
      8100000000000000000000000000000000000000000000000000000000002121
      210000000000000000000000000000000000C3C3C300C3C3C300888888000000
      0000888888008787870000000000646464007777770099999900CBCBCB00B3B3
      B300999999008989890091919100BEBEBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000035353500000000001D1D1D00DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      150000000000A2A2A200000000000000000000000000CFCFCF00303030000000
      000067676700000000000000000000000000C3C3C300C3C3C300888888000000
      00008888880088888800000000006161610000000000C0C1C100BBBBBB00D2D2
      D2000000000000000000000000007C7C7C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000393939000000000017171700D1D1D10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00969696000000000000000000000000000000000000000000CFCFCF000000
      000017171700000000000000000000000000C3C3C300C3C3C300888888000000
      00007C7C7C008888880000000000616161000000000000000000000000000000
      0000000000000000000000000000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444000000000011111100C9C9C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007070700000000000000000000000000C3C3C300C3C3C300888888000000
      0000555555006B6B6B0095959500616161000000000000000000000000000000
      0000000000000000000000000000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004E4E4E00000000000F0F0F00C5C5C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D8D8D000000
      000036363600000000000000000000000000C3C3C300C3C3C300888888000000
      0000626262000000000000000000626262000000000000000000000000000000
      0000000000000000000000000000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000053535300000000000E0E0E00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000858585007676760076767600767676004F4F4F00000000000000
      0000AEAEAE00000000000000000000000000AEAEAE008C8C8C00858585000000
      00006262620000000000000000006D6D6D0090909000C0C0C000C6C7C700B0B0
      B00097979700878787008E8E8E006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515100000000004848
      4800000000000000000000000000000000000000000000000000000000000000
      0000919191000000000000000000000000000000000000000000050505008E8E
      8E00000000000000000000000000000000009C9C9C008383830087878700BABA
      BA006262620000000000000000008C8C8C00AEAEAE00A1A1A100BEBEBE00CECE
      CE00ACACAC000000000000000000CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303000202
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000003131310000000000000000005B5B5B0095959500000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C00000000000000
      00005E5E5E000000000000000000DADADA009D9D9D0000000000000000000000
      0000878787000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000045454500000000000F0F0F00C2C2C200000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C00000000000000
      000070707000797979008F8F8F008C8C8C008989890089898900898989008787
      8700909090000000000000000000000000000000000000000000000000000000
      00003A3A3A002C2C2C00C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3B003232320000000000000000000000000000000000D3D3D300000000000909
      0900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000545454000000000009090900B3B3B3000000
      0000000000000000000000000000000000009C9C9C009C9C9C00000000000000
      00007F7F7F007F7F7F000000000000000000C8C8C800C8C8C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636000000000002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      3300000000001C1C1C00AEAEAE0000000000BBBBBB0023232300000000006565
      6500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660000000000020202009C9C
      9C00000000000000000000000000000000009E9E9E007E7E7E00000000000000
      0000DFDFDF00CBCBCB00C7C7C700C5C5C500ADADAD00C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007676760002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B3B3B0000000000000000000000000000000000000000002D2D2D000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500000000000000000000000000C0C1C100A3A3A300757575008989
      890090909000A8A8A800BFBFBF00C1C1C1009E9E9E00DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7C7002D2D2D003F3F3F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000888888002A2A2A0010101000252525007C7C7C00000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900000000000000000000000000000000000000000000000000000000000909
      0900B7B7B700000000000000000000000000E2E2E2007E7E7E00B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C1C100181818003232
      3200323232003232320032323200323232003232320032323200323232003232
      32003232320018181800C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9D9D900626262006060600060606000616161006161610063636300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDC00DADADA00D5D5
      D500B5B5B00000000000000000000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A8A80095959500939393009696
      9600E1E1E1006A6A6A00606060006060600060606000616161006A6A6A00E6E6
      E6009A9A9A009595950095959500AAAAAA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A98
      7F00A7A2750000000000000000000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000D3AC7500C186
      2D00CBBBA300CBBBA300CBBBA300CBBBA300CBBBA300CBBBA300CBBBA300CBBB
      A300C1862D00D4B0780000000000000000008D8D8D0061616100616161006060
      6000CCCCCC006A6A6A00606060006060600060606000606060006B6B6B00D0D0
      D0006161610061616100616161008D8D8D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADAB9900C2B6
      6300C8B96000C2BFB000000000000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000D6943200DB98
      3400F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0
      EC00DB983400D594330000000000000000008383830061616100616161006161
      61007A7A7A00C5C5C50060606000606060006060600060606000C8C8C8007B7B
      7B00616161006161610061616100838383000000000000000000000000000000
      00000000000000000000000000000000000000000000C1BFB300B5A95D00CCB9
      5B00CBB55400A89B6200000000000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400F1F0EC00DEDCD600D4D2CD00D4D2CD00D4D2CD00D4D2CD00DEDCD600F1F0
      EC00DB983400DB9834000000000000000000E7E7E70069696900616161006161
      61008B8B8B00ABABAB0060606000606060006060600060606000AAAAAA008989
      8900616161006161610069696900E7E7E7000000000000000000000000000000
      000000000000000000000000000000000000D5D4CE00AB9E5A00CBB55400C9B1
      4D00C8AD4600C4A53D00BEB8A5000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400F1F0EC00DEDCD600D4D2CD00D4D2CD00D4D2CD00D4D2CD00DEDCD600F1F0
      EC00DB983400DB9834000000000000000000DDDDDD0063636300616161006161
      61006B6B6B00DCDCDC0069696900606060006060600068686800D8D8D8006A6A
      6A00606060006161610063636300DDDDDD000000000000000000000000000000
      000000000000000000000000000000000000A2955D00CAB14D00C8AD4600C7A9
      3F00C6A43700C5A03000A48D4A000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400EDE2D000F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00F1F0EC00EDE1
      CE00DB983400DB9834000000000000000000000000009D9D9D00616161006161
      61009D9D9D000000000097979700606060006060600095959500000000009A9A
      9A0060606000606060009E9E9E00000000000000000000000000000000000000
      0000000000000000000000000000C0BDB300AEA47F00A5914C00C6A43800C5A0
      3000C49C2900C3982200C0921B00B9B0980000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400DDA04400E2B46F00E2B57200E2B57200E2B57200E2B57200E2B46F00DDA0
      4400DB983400DB983400000000000000000000000000DDDDDD00616161006161
      6100DEDEDE0000000000B6B6B6006161610060606000B5B5B50000000000D9D9
      D9006060600060606000DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F8A4B00C49C2900C398
      2200C2941B009F823600B8AF9500ACA38E0000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB98340000000000000000000000000000000000616161006161
      61000000000000000000C5C5C5006161610061616100C5C5C500000000000000
      0000606060006060600000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEA58E00C0962100C2941B00C193
      1A00BF911900A7946500000000000000000000000000B6B6B6007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00B6B6B600000000000000000000000000DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400000000000000000000000000ABABAB00616161006161
      6100ACACAC0000000000BCBCBC006161610061616100BDBDBD0000000000A8A8
      A8006060600060606000A8A8A800000000000000000000000000C6C2B300B5AE
      9600000000000000000000000000ADA18000B1892000C1931A00C0921900BE90
      1800AB831B00D1CCC500000000000000000000000000B6B6B6007D7D7D000000
      000000000000000000000000000000000000000000008F8F8F00878787008787
      87008787870045454500AFAFAF00000000000000000000000000DB983400DB98
      3400C7892E00C4944D00CBA56A00CBA56A00CBA56A00CBA56A00C3944D00C78A
      2E00DB983400DB98340000000000000000000000000069696900616161006161
      61006969690000000000A4A4A4006161610061616100A7A7A700000000006868
      68006060600060606000686868000000000000000000DEDDD800B7A25E00D4B9
      6800AA924B00AA915000B1924200C8A03500C0921900BF911800BD8F1700BC8E
      1600A08C5A0000000000000000000000000000000000B6B6B6007D7D7D000000
      000000000000000000000000000000000000CCCCCC0045454500A9A9A900A9A9
      A9007D7D7D0015151500CECECE00000000000000000000000000DB983400DB98
      3400C4944D00D9D8D000BFBEB200C9C8BD00F1F0EC00F1F0EC00F0EFEA00C394
      4D00DB983400DB98340000000000000000000000000083838300616161006161
      6100858585000000000077777700616161006161610077777700000000008383
      83006060600060606000838383000000000000000000A8966000DBC37C00DAC0
      7800D9BC7000D7B96B00D5B76700D4B46200CEAB4F00BF942200BB8D1500A17F
      2A00D6D2C90000000000000000000000000000000000B6B6B6007D7D7D000000
      000000000000000000000000000000000000CBCBCB006868680000000000D5D5
      D5002F2F2F00D5D5D50000000000000000000000000000000000D8963400DB98
      3400CBA56A00BFBEB200A6A59500A6A59500F1F0EC00F1F0EC00F1F0EC00CBA5
      6A00DB983400EBC9980000000000000000000000000000000000A4A4A400A4A4
      A400000000000000000074747400616161006161610076767600000000000000
      0000A4A4A400A4A4A4000000000000000000A2967300D7BC6E00DCC27B00DABF
      7600D8BC7200D7BA6E00D5B86A00D4B56600D1B26100CCAB53009E843D00DAD7
      CE000000000000000000000000000000000000000000B6B6B6007D7D7D000000
      000000000000000000000000000000000000CBCBCB0068686800CFCFCF003030
      3000DADADA000000000000000000000000000000000000000000E7BE8100D896
      3400CBA56A00D5D2CB00CCCAC300CCCAC300F1F0EC00F1F0EC00F1F0EC00CBA5
      6A00EBC998000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B7B7006161610061616100B7B7B700000000000000
      000000000000000000000000000000000000DAD7D000AC996B00BC9E4F00D7BA
      6F00D9BD7600D7BB7100D5B86B00CEAE5900AF924600A18E5D00000000000000
      00000000000000000000000000000000000000000000B6B6B6007D7D7D000000
      000000000000000000000000000000000000CBCBCB003C3C3C0030303000DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E0E0008787870087878700E0E0E000000000000000
      0000000000000000000000000000000000000000000000000000DAD7D000B1A3
      8100AFA07700AF9D7000A8946000B5AB91000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C1C100181818003232
      3200323232003232320032323200323232002C2C2C0014141400DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFAFAF00B0B0B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A8A8A00C7C7
      C700D5D5D500CFCFCF00D1D1D100D4D4D400D8D8D800DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEF5FB006AD9F4005DD6
      F4005DD6F4005DD6F4005DD6F4005DD6F4005DD6F4005DD6F40059CEF3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDCCCD00FDCCCD0000000000000000000000
      000000000000000000000000000000000000000000000000000030303000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069D8F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F10010B7F20019A5
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FD959700FD95970000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F10010B7F200129C
      F30018A4F100DEF2FB0000000000000000000000000000000000000000000000
      000000000000FDA6A800FD959700FD717400FD717400FD9C9E00FDC9CA000000
      00000000000000000000000000000000000000000000000000003F3F3F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000505050000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FBDF200129D
      F300129CF3001AA5F00000000000000000000000000000000000000000000000
      0000FD878800FD737600FD959700FD717400FD717400FD8D8E00FD636500FDB5
      B500000000000000000000000000000000000000000000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000076767600898989008D8D8D00000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F10010B2
      F20011AAF20011AAF20011AAF20011AAF2000FC4F1000FC4F1000FC4F1000FBC
      F20010B7F20010B7F20059CEF300000000000000000000000000000000000000
      0000FD797C00FDD6D70000000000FD959700FD95970000000000FDB0B100FD73
      7300000000000000000000000000000000000000000000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E0000000000D8D8D80070707000C8C8C80000000000000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4
      F1000FC4F1000FC4F1005DD6F400000000000000000000000000000000000000
      0000000000000000000000000000FD959700FD95970000000000FDB1B200FD71
      730000000000000000000000000000000000000000000000000049494900DDDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E00000000000000000000000000A2A2A20078787800000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F10010B2
      F20011AAF20011AAF20011AAF20011AAF20011AAF20011AAF20011AAF20011AA
      F20010B2F2000FC4F1005DD6F400000000000000000000000000000000000000
      000000000000FDC8C900FD9C9D00FD717400FD717400FD8E8E00FD636500FDB3
      B4000000000000000000000000000000000000000000000000003F4240003C8E
      580089E5A900A8DBBA00B5D0BC00D2E5D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E00000000000000000000000000000000000000000076767600AAAA
      AA0000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4
      F1000FC4F1000FC4F1005DD6F400000000000000000000000000000000000000
      0000FDB3B400FD636500FD8D8E00FD717400FD717400FD9C9D00FDC8C8000000
      0000000000000000000000000000000000000000000000000000434643002780
      42003FCA6B0042CD71003FC26C0035AA58003E9E500064B56F00A3DFAF00DEF4
      E400000000000000000000000000000000000000000000000000000000000000
      00007E7E7E00000000000000000000000000000000000000000076767600A1A1
      A10000000000000000000000000000000000000000005DD6F4000FC4F10010B2
      F20011AAF20011AAF20011AAF20011AAF20011AAF20011AAF20011AAF20011AA
      F20010B2F2000FC4F1005DD6F400000000000000000000000000000000000000
      0000FD717300FDB1B20000000000FD959700FD95970000000000000000000000
      000000000000000000000000000000000000000000000000000046494600247A
      39003BC160003EC4650042CE6F0047D97B0046D07A0038A65A00278D3A0046BA
      620082E1A200CBF6DD0000000000000000000000000000000000000000000000
      00007E7E7E00000000000000000000000000A2A2A20078787800000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4
      F1000FC4F1000FC4F1005DD6F400000000000000000000000000000000000000
      0000FD707100FDB1B20000000000FD959700FD95970000000000FDD7D700FD7B
      7D00000000000000000000000000000000000000000000000000484B49002073
      320034B6520038BD5A003BC1610040C86B0047D479004DE088004DD08400ABE9
      C300000000000000000000000000000000000000000000000000000000000000
      00007E7E7E0000000000D8D8D80070707000C8C8C80000000000000000000000
      000000000000000000000000000000000000000000005DD6F4000FC4F1000FC4
      F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4F1000FC4
      F1000FC4F1000FC4F1005DD6F400000000000000000000000000000000000000
      0000FDB2B300FD636500FD8E8E00FD717400FD717400FD959700FD737600FD87
      8800000000000000000000000000000000000000000000000000484B48001C6D
      290030AE470033B44F0037BB58003BC3620040CB6D0045D477004CE3870050E9
      91007EECAD00DCF8E70000000000000000000000000000000000000000000000
      000076767600898989008D8D8D00000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CC8F30010B7F20010B7
      F20010B7F20010B7F20010B7F20010B7F20010B7F20010B7F20010B7F20010B7
      F20010B7F20010B7F2004CC8F300000000000000000000000000000000000000
      000000000000FDC8C800FD9C9D00FD717400FD717400FD959700FDA6A8000000
      0000000000000000000000000000000000000000000000000000494C4900206D
      2C002CA83F003AB0500062C5780088D79D00A8E4B900BBEDCC00C9F2D800D0F6
      DF00C5F6D900CCF6DE0000000000000000000000000000000000000000000000
      0000505050000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055BBF500129CF300129C
      F300129CF300129CF300129CF300129CF300129CF300129CF300129CF300129C
      F300129CF300129CF30056BAF500000000000000000000000000000000000000
      0000000000000000000000000000FD959700FD95970000000000000000000000
      00000000000000000000000000000000000000000000000000004A4C4B006C99
      7400C4E8CA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEF0FB006BC0F6005FBB
      F5005FBBF5005FBBF5005FBBF5005FBBF5005FBBF5005FBBF5005FBBF5005FBB
      F5005FBBF5006BC0F600E0F1FB00000000000000000000000000000000000000
      0000000000000000000000000000FDCCCD00FDCCCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000767676000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A3A3A001E1E1E001E1E1E003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E0000000000000000001E1E
      1E000000000000000000979999005D5D5D005E5E5E005E5E5E005E5E5E005E5E
      5E005E5E5E005E5E5E005E5E5E00727272000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0E9F8007BDBF4000000000000000000535353000000
      0000000000009D9D9D0000000000CDCDCD00CECECE00000000009D9D9D000000
      00000000000053535300000000000000000000000000B9B9B900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900D6D6
      D600000000000000000000000000000000001E1E1E0000000000000000001E1E
      1E000000000000000000979999005D5D5D005D5D5D005E5E5E005E5E5E005E5E
      5E005E5E5E005E5E5E005E5E5E00727272000000000000000000000000008FE0
      F50072D6F00072D5EF0072D5EF0072D5EF0072D6F00073D9F30073DAF40073DA
      F4006FD9F4002FC8EE0019C4F0009DE4F7000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000B9B9B90069696900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A9004040
      40000000000000000000C9C9C900A2A2A2003A3A3A001E1E1E001E1E1E003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001FC3
      EE0019C3EF0019C1EC0019C0EB0019C0EB0019C0EB0019C1EC0019C3EF0019C4
      F00019C4F00019C4F0001FC3EE00000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000A9A9A900A9A9A900000000000000
      0000000000000000000000000000000000000000000000000000000000005151
      51009F9F9F004C4C4C007B7B7B00414141000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4BEFD0000000000000000001FC3
      EE0019C4F00019C3EF0019C1EC0019C0EB0019C0EB0019C0EB0019C1EC0019C3
      EF0019C4F00019C4F0002EC7F000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000A9A9A900A9A9A900000000004545
      4500454545000000000000000000AEAEAE00424242006C6C6C00000000003434
      3400A6A6A6000000000000000000545454000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABA1FD006856FD009E94FD0032A1
      F2002DA6F4002DA6F4002DA5F3002DA3F0002DA3EF002DA3EF002DA3EF002DA3
      F00027AEF20019C4F0002EC7F000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000A9A9A900A9A9A900B8B8B8008282
      820082828200B9B9B9000000000063636300D1D1D10042424200000000005454
      5400000000000000000000000000545454003A3A3A001E1E1E001E1E1E003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E4FD006352FD006453FF006453
      FF006453FF006453FF006453FF006352FE006352FA006352FA006352FA006352
      FA005F58F90019C3EF002EC7F000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000A9A9A900A9A9A900000000006666
      66002828280053535300545454004949490026262600AEAEAE00000000003232
      320059595900BBBBBB0000000000545454001E1E1E0000000000000000001E1E
      1E0000000000000000009A9A9A005E5E5E005E5E5E005D5D5D005D5D5D005D5D
      5D005D5D5D005D5D5D005E5E5E0072727200000000007062FD006453FF006453
      FF006453FF006453FF006453FF006453FF006352FE006352FA006352FA006352
      FA006056F90019C1EC002EC6EE00000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000A9A9A900A9A9A900000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400000000008989890048484800313131001E1E1E0000000000000000001E1E
      1E0000000000000000009A9A9A005E5E5E005E5E5E005E5E5E005D5D5D005D5D
      5D005D5D5D005D5D5D005D5D5D0072727200000000007264FD006453FF006453
      FF006453FF006453FF006453FF006453FF006453FF006352FE006352FA006352
      FA006056F90019C0EB002EC4EB00000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      000000000000535353000000000000000000ACACAC00A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F00000000000000000000000000000000003A3A3A001E1E1E001E1E1E003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007264FD00868BC000B4D4
      6F0095A2A7006453FF00A7C18400B2D37000756DE1007975D800B2D26F00A0B5
      8C006056F90019C0EB002EC4EB00000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000063636300545454005454
      5400545454005454540054545400212121005454540054545400212121008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007264FD007B79D5009CAF
      98008588C4006453FF00929EAB009CAE9A006E63ED00726AE6009DAE99008D97
      B1006155F80064D2EE0082DAF000000000000000000000000000535353000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      0000000000005353530000000000000000000000000000000000000000000000
      00000000000000000000000000004F4F4F000000000000000000545454000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007264FD006453FF006453
      FF006453FF006453FF006453FF006453FF006453FF006453FF006453FF006453
      FF006655FC000000000000000000000000000000000000000000535353000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005353530000000000000000006464640054545400545454005454
      54005454540054545400545454008C8C8C0000000000000000003F3F3F00A9A9
      A900404040005454540054545400505050003A3A3A001E1E1E001E1E1E003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007264FD006453FF006453
      FF006453FF006453FF006453FF006453FF006453FF006453FF006453FF006453
      FF006856FD0000000000000000000000000053535300535353002D2D2D001B1B
      1B00080808000808080008080800080808000808080008080800080808000808
      08001B1B1B002D2D2D0053535300535353000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D400A9A9
      A9003E3E3E0054545400545454004F4F4F001E1E1E0000000000000000001E1E
      1E0000000000000000009A9A9A005E5E5E005E5E5E005E5E5E005E5E5E005E5E
      5E005E5E5E005E5E5E005E5E5E0071717100000000007F72FD006453FF006453
      FF006453FF006453FF006453FF006453FF006453FF006453FF006453FF006453
      FF007566FD000000000000000000000000000000000000000000000000000000
      0000535353000000000000000000000000000000000000000000000000005353
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E0000000000000000001E1E
      1E0000000000000000009A9A9A005E5E5E005E5E5E005E5E5E005E5E5E005E5E
      5E005E5E5E005E5E5E005E5E5E00727272000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C005353530053535300535353005353530053535300535353008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3B001E1E1E001E1E1E003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B5001B1B1B00000000000000
      000000000000000000000000000000000000000000001C1C1C00B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8F3E200CFE6BF00CFE6BF00E8F3E200000000000000
      0000000000000000000000000000000000001B1B1B002C2C2C00878787008787
      870087878700878787008787870087878700878787002C2C2C001C1C1C000000
      0000000000000000000000000000000000000000000000000000F3D1C200E7A1
      8400ECBFAC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000CCE4BB0079BD470068BC2A006AC12C006AC12C0068BB2A0079BD4800CEE5
      BD0000000000000000000000000000000000000000007E7E7E00000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      00000000000000000000000000000000000000000000EEB39800DC612A00E9A0
      8300DB6E4000E28D680000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000000000000000000000000000A3D1
      83006BC12C0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CB2E006BC1
      2B00A5D18500000000000000000000000000000000007E7E7E00000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      00000000000000000000000000000000000000000000DB5C2500F7E2D8000000
      000000000000D7551E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF008000000080000000800000008000
      00008000000080000000FFFFFF00800000000000000000000000B7DA9C006EC7
      2D0071CC2E0071CC2E0071CC2E0069BF2A0069BF2A0071CC2E0071CC2E0071CC
      2E006EC62D00B8DB9F000000000000000000000000007E7E7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA582000000000000000
      000000000000DA592200F5E7E000000000000000000000000000000000000000
      00000000000000000000F4D0C000000000000000000000808000000000000080
      8000000000000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008000000000000000000000006CC02D0071CC
      2E0071CC2E0071CC2E0071CC2E00C3DEAC00C3DEAC0071CC2E0071CC2E0071CC
      2E0071CC2E006DC02E000000000000000000000000007E7E7E00000000000000
      000000000000B5B5B5001B1B1B00000000000000000000000000000000000000
      000000000000000000001C1C1C00B6B6B60000000000EBA38400DE632E00E999
      7800E37F5500E37F56000000000000000000000000000000000000000000F3DE
      D600E7967500DA551C00E5865E00000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF00800000008000000080000000FFFF
      FF008000000080000000800000008000000000000000B2DB950071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00C3DEAC00C3DEAC0071CC2E0071CC2E0071CC
      2E0071CC2E0071CB2E00B4DC980000000000000000007E7E7E00000000000000
      0000000000001B1B1B002C2C2C00878787008787870087878700878787008787
      870087878700878787002C2C2C001C1C1C000000000000000000E99B7900DA53
      1A00DA582100EDAF9300000000000000000000000000EECAB900DE7E5300D657
      2200E59A7B00F7E7E00000000000000000000000000000808000000000000080
      8000000000000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000088CC570071CC2E0071CC
      2E006BC22C006BC22C006BC22C00C3DDAB00C3DDAB006BC22C006BC22C006BC2
      2C0071CC2E0071CC2E0089CB590000000000000000007E7E7E00000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      0000F4D0C100E4855B00D9511900DF704200DB5D2900D96A3A00E9B29B000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000800000000000000000000000000000007EC9470071CC2E0071CC
      2E00C2DAAB00C2DAAB00C2DAAB00E2E9D600E2E9D600C2DAAB00C2DAAB00C2DA
      AB0071CC2E0071CC2E007FC8480000000000000000007E7E7E00000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      0000F6D9CC00E6906C00DA551C00E1724200F5DBCD00FBE9BC00F7E4B3000000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000084CC4F0071CC2E0071CC
      2E00C7E4AD00C7E4AD00C7E4AD00E2EAD600E2EAD600C7E4AD00C7E4AD00C7E4
      AD0071CC2E0071CC2E0085CC4F00000000001B1B1B002C2C2C00767676007676
      760000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000E99B7A00D955
      1B00DA582100EDAF9300000000000000000000000000FCEDC700FACC5500F5C0
      3600F6D98B00F8F2E20000000000000000000000000000000000008080000000
      0000008080000000000000808000000000000080800000000000008080000000
      00000080800000000000000000000000000000000000A1D97A0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00C3DEAC00C3DEAC0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E00A2D97C0000000000B4B4B4001A1A1A00000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E000000000000000000EBA48500DD622D00E999
      7800E37F5500E37F56000000000000000000000000000000000000000000FCF2
      D900F6D47D00F3BE2F00F5CF6A00000000000000000000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4F4D80071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00C3DEAC00C3DEAC0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E00E4F4D900000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E000000000000000000DA582000000000000000
      000000000000DB5A220000000000000000000000000000000000000000000000
      00000000000000000000F7E9C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000096D7650071CC
      2E0071CC2E0071CC2E0071CC2E00C6E2AD00C6E2AD0071CC2E0071CC2E0071CC
      2E0071CC2E0096D6660000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E000000000000000000DB5C2500F7E1D8000000
      000000000000DB561D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000080
      80000000000000FFFF00000000000000000000FFFF0000000000000000000080
      80000000000000000000000000000000000000000000000000000000000080D0
      470071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0080D048000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      000000000000000000007E7E7E000000000000000000EDB19800DD622D00EAA3
      8400E1724100E68E670000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009DDA6F0070C92D0071CC2E0071CC2E0071CC2E0071CC2E0070C92D009CD9
      7100000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B002C2C2C00767676007676760076767600767676007676
      760076767600767676002C2C2C001C1C1C000000000000000000F4D0C100EBA3
      8400F1C1AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6F5DC00BAE59A00A4DD7C00A4DD7C00BAE59A00E6F5DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4B4B4001A1A1A00000000000000000000000000000000000000
      000000000000000000001B1B1B00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F80F000000000000
      E007000000000000E3C7000000000000E7E7000000000000E7E7000000000000
      E3C7000000000000E007000000000000F00F000000000000E187000000000000
      E3C7000000000000E3C7000000000000E187000000000000F00F000000000000
      F81F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFCFF01FF81FF3FF
      FFCFE00FF00FF1FFFFCFE387E187F1FFC003E7C7E3C7F8FFC003FFE7E7E7F87F
      C003FFC7E7E7FC7FC7CFE007E3C7FE3FE3CFE00FE007FE3FE3CFE03FF00FFF1F
      F1CFE3FFF81FFF0FF1CFE3FFFC7FFF8FF8FFE3FFFC3FFFC7F8FFF00FFE1FE007
      FCFFF00FFF1FE007FFFFFFFFFFFFFFFF123FFFFFFFFFFFFF123FF00FE007F01F
      123FF00FE007E00F1200FE7FF0FFE387128EFE7FF87FE7C712FEFE7FFC3FFFE7
      10FEFE7FFE1FFFC716FEFE7FFF0FF8071600FE7FFF8FF00F0606FE7FFFCFF83F
      3677FE7FFFCFFC3F3007F07FE78FFE1F333FF07FE10FFF0F303FF87FF01FE007
      003FFC7FF83FE0071FFFFFFFFFFFFFFFFFFF8001FFFFF00FFF879FF9FFFF0000
      FFE79FF9C0030000FFC39FF9C0030000FF839FF9C0030000FF019FF9C0030000
      FF019FF9C0038421FE009FF9C0038421FF809FF9C003CC33FF039FF9C0038421
      CE039F81C003842180079F01C003842180079F23C003CC33000F9F07C007FC3F
      003F9F0FFFFFFC3FC0FF801FFFFFFE7FFFFFFFFFC03FFFFF801FFE7FCFFFFFFF
      800FFE7FDFFFFFFF8003F81FDFFFF7FF8003F00FDFFFF1FF8001F24FDFFFF47F
      8001FE4FCFFFF73F8001F80FC0FFF7CF8001F01FC00FF7CF8001F27FC003F73F
      8001F24FC00FF47F8001F00FC003F1FF8001F81FC003F7FF8001FE7FC7FFFFFF
      8001FE7FDFFFFFFFFFFFFFFFDFFFFFFFC003FFFF0FFFFFFFDFFBFFFF0C00FFFC
      DA5B800F0C00E000DA5B000C0FFFE001DA5B3FE0FFFF6001DA5B2626FFFF0001
      DA5B022E0FFF0001DA5B20220C008001DA5B3FE80C008001DA5B3FEF0FFF8001
      DA5B800FFFFF8001DBDBFEDFFFFF8007DFFB00C00FFF80070000FFC00C008007
      F7EFFFFF0C00FFFFF00FFFFF0FFFFFFF001FFFFFFFFFFC3F001FC7FFFC00F00F
      3F9F83FF8000E0073F9F9BFF0000C0033FFFB9FD0000C003380083E100008001
      3800C3830001800139FCF01F0003800139FCF01F0003800109FCC38300038001
      09FC83E100038001F9FCBBFD0FC3C003F9FC9BFF0003E007F9FC83FF8007F00F
      F800C7FFF87FF81FF800FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileName = 'D:\DL_2023\Icons_Toolbar'
    FileTypes = <
      item
        DisplayName = 'DeusEx Conversation .XML file'
        FileMask = '*.xml'
      end>
    OkButtonLabel = '&Open'
    Options = [fdoPathMustExist, fdoFileMustExist]
    Title = 'Open conversation XML file'
    Left = 440
    Top = 209
  end
  object TreeImages: TImageList
    DrawingStyle = dsTransparent
    Left = 172
    Top = 151
    Bitmap = {
      494C010104001400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818180032323200323232003232
      3200323232003232320032323200323232003232320032323200323232003232
      320032323200323232003232320018181800000000000000000000000000C2E0
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A8A800D5D5D500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFCAD9E5000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3333330000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003131310000000000000000000000000087CD
      54006DBB3600DBEBCE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400A0A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF74B6D6000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3434340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003535350000000000000000000000000084CB
      4F0071CC2E0068BD2C00C0DEAA00000000000000000000000000000000000000
      000000000000000000000000000000000000D3D3D3008B8B8B00E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF14ACDE000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF72727200B3B3B300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B1B1B100747474000000000000000000B1D6970071C3
      370071CC2E0071CC2E006CC32C0088C25D0093C76D0093C76D0093C76D0093C7
      6D0095C87100B2D797000000000000000000000000009D9D9D00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4E2C3008BD9B0000000000000000000000000FF000000FF00CCFF000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD9D9D9003D3D3D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B3B3B00DADADA00000000007CC04A006EC72D0071CB
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E006EC62C007BBF4B000000000000000000C9C9C9009D9D9D000000
      00000000000000000000000000000000000000000000000000009CE4C30037C7
      84002BC278002CBC7100DFEFE60000000000000000FF000000FF14CEFD000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000007A7A7A007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C7C7C007C7C7C0000000000CFE7BD0070CB2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0070CA2E00D5EAC70000000000ECECEC00A1A1A100D5D5
      D50000000000000000000000000000000000D8F1E60049D5990025CA810028C7
      7D002BC278002DBE720098DBB50000000000000000FF000000FF70E1FD000000
      00FF000000FF000000FF000000FF000000FF000000FFA6A6E7000000D3000000
      F2000F17FF004555FD00000000FF000000FF0000000000000000595959007575
      7500000000000000000000000000000000000000000000000000000000000000
      0000727272005B5B5B000000000000000000AADA880071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00B2DC93000000000000000000BFBFBF00B4B4
      B400000000000000000000000000BAEDD8002CD28D0023CE860025CA810028C7
      7D002BC278002DBE72004EC2810000000000000000FF000000FF022AFF00283E
      FF00DCE3FD00000000FF000000FFBDBDFC000000DF000000BE000000D5000000
      F6001019FF00253AFF003B5CFF00000000FF0000000000000000000000008B8B
      8B003131310092929200DCDCDC000000000000000000DCDCDC00919191003030
      30008C8C8C00000000000000000000000000A7D9820071CC2E0071CC2D0068BD
      2B0069BD2B0071CC2D0071CC2D0068BD2B0069BD2B0071CC2D0071CC2D0068BD
      2B0069BD2B0071CC2D0071CC2E00AEDB8D000000000000000000E1E1E100ACAC
      AC00E3E7E6000000000071E4B8001ED28B0021D1890023CE860025CA810028C7
      7D002BC278002DBE720031B96C00D4EADD00000000FF000000FF060AFF002B43
      FF005582FF00486FFF002235FF000203F9000000DB000000BE000000D8000000
      FA00121CFF00273DFF003E60FF00000000FF0000000000000000000000000000
      000000000000888888001F1F1F000A0A0A000A0A0A00202020008A8A8A000000
      000000000000000000000000000000000000A7D9820071CC2E0078C83D00DAE5
      CD00D9E5CC0077C83C0078C83D00DAE5CD00D9E5CC0077C83C0078C83D00DAE5
      CD00D9E5CC0077C83C0071CC2E00AEDB8D00000000000000000000000000B9B9
      B90090C1AF001FD792001DD790001FD48D0021D1890023CE860025CA810028C7
      7D002BC278002DBE720031B96C008ED5AA00000000FFDBE3EC00080EFF002E47
      FF005988FF004469FF002031FF000001F7000000D7000000BE000000DA000000
      FD00141EFF00293FFF004064FF00000000FF0000000000000000000000000000
      00000000000030303000B7B7B7000000000000000000B5B5B500303030000000
      000000000000000000000000000000000000A7D9820071CC2E0092D46100F1F0
      EC00F1F0EC0093D4610092D46100F1F0EC00F1F0EC0093D4610092D46100F1F0
      EC00F1F0EC0093D4610071CC2E00AEDB8D00000000000000000000000000DADA
      DA00B0B5B30029D695001DD790001FD48D0021D1890023CE860025CA810028C7
      7D002BC278002DBE720031B96D0054BF7F00000000FF91ABC7000B12FF00324D
      FF005B8CFF004164FF001D2DFF000000F4000000D4000000BF000000DD000001
      FF001621FF002B42FF004267FF00000000FF0000000000000000000000000000
      000062626200B8B8B80000000000000000000000000000000000B6B6B6006464
      640000000000000000000000000000000000A7D9820071CC2E0073CD3000B4DE
      9000B3DE8F0073CD300073CD3000B4DE9000B3DE8F0073CD300073CD3000B4DE
      9000B3DE8F0073CD300071CC2E00AEDB8D000000000000000000000000000000
      0000B9B9B90066C9A4001DD790001FD48D0021D1890023CE860025CA810028C7
      7D002EC47B0054CA8E00ACE2C40000000000000000FF3A8AB8000E17FF003754
      FF005B8CFF003E5FFF001825FF000000F2000000D2000000C3000000E1000203
      FF001826FF002D47FF004469FF00000000FF0000000000000000000000000000
      0000323232000000000000000000000000000000000000000000000000003535
      350000000000000000000000000000000000ABDA870071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00B2DD94000000000000000000000000000000
      0000D2D2D200A7BFB6001ED690001FD48D0021D1890023CE860025CA810033C9
      8500A6E5C700000000000000000000000000000000FF169FD200111BFF003B5B
      FF005B8DFF003C5BFF00141FFF000000EF000000CF000000C6000000E4000406
      FF001B29FF00304AFF00466CFF00000000FF0000000000000000000000000000
      0000323232000000000000000000000000000000000000000000000000003535
      350000000000000000000000000000000000CDEBB90071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E00D9EFCA000000000000000000000000000000
      0000E9E9E900C0C0C0004CD09D001FD48D0021D1890023CE86002CCD8700B3EA
      D20000000000000000000000000000000000000000FF06BCF1006169FF004063
      FF005C8EFF003957FF001018FF000000ED000000CD000000CB000000E9000609
      FF001E2EFF00334FFF00486FFF00000000FF0000000000000000000000000000
      00005D5D5D00BEBEBE0000000000000000000000000000000000BCBCBC005F5F
      5F00000000000000000000000000000000000000000080CE480071CC2E0071CC
      2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC2E0071CC
      2E0071CC2E0071CC2E0089D15200000000000000000000000000000000000000
      000000000000CBCBCB0090C7B2001FD48D0021D1890025CF870078DFB4000000
      000000000000000000000000000000000000000000FF2EAFFD007880FF00859D
      FF00749DFF003551FF000D14FF001A1AED001717CE000808CF000000EB00080C
      FF001F30FF003451FF004A72FF00000000FF0000000000000000000000000000
      0000000000002F2F2F00C3C3C3000000000000000000C1C1C1002F2F2F000000
      0000000000000000000000000000000000000000000000000000B6E495009FDB
      74009FDB73009FDB73009FDB73009FDB73009FDB73009FDB73009FDB73009FDB
      73009FDC7300BBE59C0000000000000000000000000000000000000000000000
      000000000000E3E3E300C1C3C20033D293002BD5920066DEAE00000000000000
      000000000000000000000000000000000000000000FF639AFF008790FF0098AD
      FF0092B1FF007486FF004C50FF003535ED009C9CE700000000FF000000FF0000
      00FFBFC4FD003653FF004C76FF00000000FF0000000000000000000000000000
      0000000000000000000057575700333333003333330058585800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D1D1009FE4CB00BAEEDA0000000000000000000000
      000000000000000000000000000000000000000000FF000000FFCBCFFD00A4B8
      FF009FB9FF007D8BFF009496FD00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFFF3FFFDFFF7FFEE3FF3FFFDFFF
      7FFEE1FF1FFFDFFF3FFCC0039FF3DFFF3FFC80019FC1DFFF9FF900008F01DF83
      CFF30000CE01C601E1870000C400C001F81F0000E0008001F99F0000E0008001
      F3CF0000F0018001F7EF0000F0078001F7EF0000F00F8001F3CF8001F81F8001
      F99FC003F83F8071FC3FFFFFFC7FC1FF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = MenusImageList
    Left = 783
    Top = 3
    object FileNew: TAction
      Category = 'File'
      Caption = 'New...'
      Hint = 'Create new conversation file'
      ImageIndex = 13
      OnExecute = FileNewExecute
    end
    object FileOpen: TAction
      Category = 'File'
      Caption = 'Open...'
      OnExecute = FileOpenExecute
    end
    object FileClose: TAction
      Category = 'File'
      Caption = 'Close'
    end
    object FileSave: TAction
      Category = 'File'
      Caption = 'Save'
      ImageIndex = 14
    end
    object FileSaveAs: TAction
      Category = 'File'
      Caption = 'Save As...'
      OnExecute = FileSaveAsExecute
    end
    object FileExportToCon: TAction
      Category = 'File'
      Caption = 'Export to .con file...'
    end
    object FileGenerateAudioNames: TAction
      Category = 'File'
      Caption = 'Generate Audio filenames...'
    end
    object FileProperties: TAction
      Category = 'File'
      Caption = 'Properties'
      OnExecute = FilePropertiesExecute
    end
    object AddConversation: TAction
      Category = 'Conversation'
      Caption = 'Add'
      ImageIndex = 3
      OnExecute = AddConversationExecute
    end
    object DeleteConversation: TAction
      Category = 'Conversation'
      Caption = 'Delete'
      Enabled = False
      ImageIndex = 4
      OnExecute = DeleteConversationExecute
    end
    object Conversation_Cut: TAction
      Category = 'Conversation'
      Caption = 'Cut'
      Enabled = False
      ImageIndex = 1
    end
    object Conversation_Copy: TAction
      Category = 'Conversation'
      Caption = 'Copy'
      Enabled = False
      ImageIndex = 0
    end
    object Conversation_Paste: TAction
      Category = 'Conversation'
      Caption = 'Paste'
      Enabled = False
      ImageIndex = 2
    end
    object Check_Labels: TAction
      Category = 'Conversation'
      Caption = 'Check Labels'
      Enabled = False
    end
    object Conversation_Properties: TAction
      Category = 'Conversation'
      Caption = 'Properties'
      Enabled = False
      Hint = 'Conversation properties'
    end
    object Conversation_Find: TAction
      Category = 'Conversation'
      Caption = 'Find...'
      Enabled = False
    end
    object ConTree_ExpandAll: TAction
      Category = 'Conversation'
      Caption = 'Expand All'
      Enabled = False
    end
    object ConTree_CollapseAll: TAction
      Category = 'Conversation'
      Caption = 'Collapse All'
      Enabled = False
    end
    object Event_Add: TAction
      Category = 'Events'
      Caption = 'Add Event'
      Hint = 'Add new event to selected conversation'
      ImageIndex = 3
    end
    object Event_Insert: TAction
      Category = 'Events'
      Caption = 'Insert Event'
      Hint = 'Insert new event into selected conversation'
    end
    object Event_Cut: TAction
      Category = 'Events'
      Caption = 'Cut Event'
      Hint = 'Cut selected event into Clipboard'
      ImageIndex = 1
    end
    object Event_Copy: TAction
      Category = 'Events'
      Caption = 'Copy Event'
      Hint = 'Copy selected event into Clipboard'
      ImageIndex = 0
    end
    object Event_Paste: TAction
      Category = 'Events'
      Caption = 'Paste Event'
      Hint = 'Paste selected event from Clipboard'
      ImageIndex = 2
    end
    object Event_Delete: TAction
      Category = 'Events'
      Caption = 'Delete'
      Hint = 'Delete selected event'
      ImageIndex = 4
      OnExecute = Event_DeleteExecute
    end
    object ShowOptions: TAction
      Caption = 'Options...'
      Hint = 'Program options'
      OnExecute = ShowOptionsExecute
    end
    object Action1: TAction
      Category = 'AddEvent'
      Caption = 'Action1'
    end
  end
  object FileSaveDialog: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'XML Conversation'
        FileMask = '*.xml'
      end>
    OkButtonLabel = '&Save'
    Options = [fdoStrictFileTypes, fdoForceFileSystem, fdoPathMustExist, fdoNoTestFileCreate]
    Left = 435
    Top = 115
  end
  object pmOutput: TPopupMenu
    Left = 721
    Top = 478
    object Clear1: TMenuItem
      Caption = 'Clear()'
      OnClick = Clear1Click
    end
    object ConFileParameters1: TMenuItem
      Caption = 'ConFileParameters'
      OnClick = ConFileParameters1Click
    end
    object ConversationsListCount1: TMenuItem
      Caption = 'ConversationsList.Count'
      OnClick = ConversationsListCount1Click
    end
    object MeasureItems1: TMenuItem
      Caption = 'MeasureItems'
      OnClick = MeasureItems1Click
    end
  end
end
