object frmMain: TfrmMain
  Left = 0
  Top = 0
  AlphaBlendValue = 250
  BorderWidth = 1
  Caption = 'ConvEdit+'
  ClientHeight = 679
  ClientWidth = 1018
  Color = clAppWorkSpace
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
  DragMode = dmAutomatic
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
    Height = 621
    Cursor = crSizeWE
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Color = clBtnFace
    MinSize = 1
    ParentColor = False
    StyleName = 'Windows'
    OnCanResize = Splitter1CanResize
    OnMoved = Splitter1Moved
    ExplicitHeight = 623
  end
  object pnlConvoTree: TPanel
    Left = 0
    Top = 38
    Width = 300
    Height = 621
    Align = alLeft
    Color = 3947580
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object ConvoTree: TTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 619
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BorderWidth = 5
      DoubleBuffered = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = []
      HideSelection = False
      HotTrack = True
      Images = TreeImages
      Indent = 19
      MultiSelectStyle = []
      ParentDoubleBuffered = False
      ParentFont = False
      PopupMenu = PopupTree
      RowSelect = True
      StateImages = TreeImages
      TabOrder = 0
      StyleName = 'Windows'
      OnChange = ConvoTreeChange
      OnEdited = ConvoTreeEdited
      OnEditing = ConvoTreeEditing
    end
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1018
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
      Width = 527
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
      HideClippedButtons = True
      Images = ImageListToolbar
      Indent = 2
      List = True
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
        Action = FileSave
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
      object ToolButton6: TToolButton
        Left = 306
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object btnGenAudio: TToolButton
        Left = 314
        Top = 0
        Action = FileGenerateAudioNames
        ImageIndex = 13
      end
      object ToolButton1: TToolButton
        Left = 346
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object tbSettings: TToolButton
        Left = 354
        Top = 0
        Hint = 'Customize ConvEdit Plus!'
        Action = ShowOptions
        ImageIndex = 9
      end
      object ToolButton2: TToolButton
        Left = 386
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btnReorder: TToolButton
        Left = 394
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
        Left = 426
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btnStickyWindow: TToolButton
        Left = 434
        Top = 0
        Hint = 'ScreenSnap := btnStickyWindow.Down;'
        ImageIndex = 11
        Style = tbsCheck
        OnClick = btnStickyWindowClick
      end
      object ToolButton4: TToolButton
        Left = 466
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object btnViewLog: TToolButton
        Left = 474
        Top = 0
        Hint = 'View log'
        Caption = 'btnViewLog'
        ImageIndex = 12
        OnClick = ViewoutputTMemo1Click
      end
    end
    object pnlSearchBox: TPanel
      Left = 529
      Top = 2
      Width = 487
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
        Top = 7
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
        Layout = tlCenter
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
    Top = 659
    Width = 1018
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
  object pnlEventList: TEsPanel
    Left = 305
    Top = 38
    Width = 713
    Height = 621
    Align = alClient
    Color = 3947580
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    StyleElements = []
    CaptionVisible = False
    FrameStyle = Bump
    DesignSize = (
      713
      621)
    object ConEventList: TListBox
      Left = 2
      Top = 22
      Width = 709
      Height = 264
      Style = lbOwnerDrawVariable
      Align = alClient
      BorderStyle = bsNone
      ExtendedSelect = False
      ItemHeight = 14
      PopupMenu = PopupConvoEventList
      TabOrder = 0
      StyleName = 'Windows'
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
      Width = 709
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
    object mmoOutput: TMemo
      Left = 2
      Top = 286
      Width = 709
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
      HideSelection = False
      ParentFont = False
      PopupMenu = pmOutput
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
      Visible = False
      WordWrap = False
    end
    object btnCloseLog: TButton
      Left = 694
      Top = 444
      Width = 20
      Height = 20
      Hint = 'Close Log'
      Anchors = [akRight, akBottom]
      Caption = 'r'
      Constraints.MaxHeight = 20
      Constraints.MaxWidth = 20
      Constraints.MinHeight = 20
      Constraints.MinWidth = 20
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Marlett'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      StyleName = 'Windows'
      OnClick = ViewoutputTMemo1Click
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
      object N2: TMenuItem
        Caption = '-'
      end
      object GenAudioNames: TMenuItem
        Action = FileGenerateAudioNames
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
    object ConversationMenu: TMenuItem
      Caption = 'Conversation [Tree]'
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
    object EventsMenu: TMenuItem
      Caption = 'Events [List]'
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
    object TablesMenu: TMenuItem
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
        Caption = 'View Log'
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
      494C01010E001800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000D5D5D5000B0B
      0B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010100010101000101010001010100010101000000
      00000B0B0B00D5D5D5000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101000101010001010100010101000101
      010000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF9D9D9D008D8D8D00B7B7B700000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101000101
      010001010100B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8A8A
      8A00050505000000000000000000000000002C2C2C00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010100010101000101
      010001010100B2B2B2000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC6C6C6000000
      0000000000000000000000000000000000000000000041414100000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2000000
      00000000000007070700B6B6B600A1A1A1000000000000000000151515002121
      2100212121002121210021212100212121002121210021212100101010000101
      010001010100B2B2B2000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF8E8E8E000000
      0000000000000000000000000000000000000000000003030300000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2000101
      0100000000001C1C1C00000000000000000004040400000000007A7A7A009898
      9800989898009898980098989800989898009898980098989800666666000101
      010001010100B2B2B2000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC5C5C5000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2000101
      010001010100000000003A3A3A002D2D2D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010100B2B2B20000000000000000002C2C2C0000000000000000000000
      000000000000000000006D6D6D00000000FF000000FF000000FF000000FF8989
      8900050505000000000000000000000000001515150000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2000101
      0100010101000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2000000000000000000A8A8A80087878700878787008787
      87008787870087878700C6C6C600000000FF000000FF000000FF000000FF0000
      00FF000000FF9C9C9C008D8D8D00B6B6B6007D7D7D0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2000101
      01000101010001010100383838002C2C2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000101
      0100010101001B1B1B00000000000000000004040400000000007A7A7A009898
      9800989898009898980098989800989898009898980098989800666666000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      00000101010007070700B3B3B3009F9F9F000101010000000000151515002121
      2100212121002121210021212100212121002121210021212100111111000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000101010001010100010101000101010001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000001010100010101000101010001010100010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60000000000000000002C2C2C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006D6D6D00000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      00000000000011111100A3A3A3001F1F1F000101010001010100151515002121
      2100212121002121210021212100212121002121210021212100101010000000
      000000000000B6B6B6000000000000000000A8A8A80087878700878787008787
      8700878787008787870087878700878787008787870087878700878787008787
      8700C6C6C600000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      000000000000858585005F5F5F00C6C6C6001F1F1F0001010100797979009597
      9700959595009898980098989800989898009898980098989800666666000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000272727005656560001010100010101000101
      0100010101000101010000000000000000000000000000000000000000000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7E7E7E0000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000010101000101
      0100010101000101010001010100000000000000000000000000000000000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF6262620000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000025252500000000000000000000000000000000000101
      0100010101000101010001010100010101000000000000000000000000000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3E3E3E0000000000000000001818
      18004B4B4B007E7E7E00B1B1B100000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000005D5D5D00D9D9D9007E7E7E0000000000000000007A7A7A009898
      9800959595009597970095979700959797009595950098989800666666000000
      000000000000B6B6B60000000000000000002C2C2C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006D6D6D00000000FF000000FF000000FF3E3E3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000003A3A3A00040404008E8E8E006868680000000000151515002121
      2100212121002121210021212100212121002121210021212100111111000000
      000000000000B6B6B6000000000000000000A8A8A80087878700878787008787
      8700878787008787870087878700878787008787870087878700878787008787
      8700C6C6C600000000FF000000FF000000FF6060600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000C0C0C0000000000000000000000
      0000000000000000000001010100010101000101010001010100010101000000
      000000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFBBBBBB0002020200000000000000
      0000000000000000000000000000020202000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101000101010001010100010101000101
      010000000000B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D7D700999999006666
      6600323232000505050000000000555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101000101
      010001010100B6B6B6000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFDDDDDD00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D4000A0A
      0A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010100010101000101
      01000B0B0B00D2D2D2000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      00000000000000000000000000000000000091919100C3C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005B5B5B00010101003F3F3F00B0B0B000ADAD
      AD00080808007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C1C100C1C1C100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C001616
      16000808080042424200D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000959595000101010001010100010101000101
      0100010101004040400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004141410041414100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004545450056565600DDDD
      DD00000000009393930013131300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA00D3D3D30012121200040404006A6A6A00838383002222
      2200010101008787870000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D9009F9F9F000000000000000000000000003F3F3F003F3F3F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00027272700000000000000
      0000000000000000000078787800696969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCB00989898009898980000000000000000000000
      0000000000001E1E1E0000000000000000009191910000000000000000000000
      00000B0B0B002222220000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900000000007272720000000000000000004848480048484800000000000000
      000000000000A3A3A300DDDDDD00000000000000000000000000000000000000
      0000000000000000000000000000000000001111110011111100111111001111
      110011111100111111001111110011111100090909005D5D5D00000000000000
      00000000000000000000B8B8B800191919001111110011111100111111001111
      1100111111001111110011111100111111000000000000000000000000000000
      000000000000000000006D6D6D000000000000000000B0B0B000000000000000
      0000000000000B0B0B000000000000000000CFCFCF0000000000000000000000
      00002F30300001010100010101009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6C6C000000000095959500000000000000000000000000000000000000
      00006D6D6D000000000016161600D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F0037373700000000000000
      000000000000000000008D8D8D00575757000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAABAB003535
      3500D4D4D4009F9F9F0020202000000000000000000040404000BBBBBB00BABA
      BA002D2D2D00DADADA008686860000000000848484000000000000000000DDDD
      DD00080808000101010001010100BABABA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000093939300CBCBCB00000000000000000000000000000000006D6D
      6D000000000000000000000000006F6F6F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A00828282000000
      000000000000C5C5C50014141400C8C8C8000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE00040404000101
      0100010101000101010000000000000000000000000000000000000000000000
      0000000000001B1B1B00D0D0D000040404000101010058585800717171001616
      160000000000A0A0A00000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040000000000000000005757570000000000C2C2C200D8D8D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDC003A3A3A001010
      10002121210014141400ABABAB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D5000E0E0E000101
      0100010101000101010001010100000000000000000000000000000000000000
      0000000000002F2F2F008B8B8B00000000000000000000000000000000000000
      0000363636000000000000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C1C100444444004343
      43004B4B4B00000000000000000000000000000000000000000000000000AAAA
      AA00040404005454540000000000C2C2C2000B0B0B0016161600D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000434343000101
      01000101010018181800A2A2A20000000000DCDCDC0081818100060606000000
      00000000000086868600D3D3D300292929007B7B7B00D4D4D400969696000000
      00000A0A0A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00434343004343
      4300494949000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000C2C2C2000B0B0B00000000000000000016161600D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800010101000000
      00000A0A0A00D5D6D60000000000000000000000000000000000A1A1A1000000
      0000000000002222220000000000000000000000000000000000000000009090
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D00000000000000000000000000000000001919
      1900DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010100000000000000000000000
      0000636363000000000000000000000000000000000000000000000000002020
      2000000000000000000001010100515151000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D6D6D0004040400A8A8A80000000000000000000000
      00000000000000000000A8A8A800030303000000000000000000000000000000
      00002F2F2F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000898989000000000000000000000000000000000000000000000000004646
      4600000000000000000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6C00000000000000000003030300C6C6C600000000000000
      0000000000000000000000000000A8A8A8000303030000000000000000000000
      0000000000009898980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002222220009090900000000000000
      00005F5F5F000000000000000000000000000000000000000000000000001C1C
      1C000000000000000000111111005E5E5E000000000000000000808080005A5A
      5A00B9B9B9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272720014141400191919007676
      7600000000000000000000000000000000000000000000000000000000000000
      0000A1A1A1000000000000000000000000005757570000000000000000000000
      000000000000000000000000000000000000A7A7A70000000000000000000000
      0000000000003A3A3A000000000000000000000000000000000000000000CFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202000000
      000006060600D2D2D20000000000000000000000000000000000929292000101
      0100010101002828280000000000C1C1C10000000000000000002B2B2B000000
      0000979797000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171000000000000000000000000000000
      0000777777000000000000000000000000000000000000000000000000000000
      0000DDDDDD0019191900000000005757570000000000BEBEBE000E0E0E00A8A8
      A800000000000000000000000000000000000000000057575700000000000000
      00000000000007070700000000000000000000000000868686000B0B0B002424
      2400090909005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000474747000000
      0000000000001010100094949400D7D7D700CACACA0070707000020202000101
      01000101010086868600A1A1A100000000003939390007070700000000000000
      000017171700BABABA00B6B6B600D9D9D9000000000000000000000000003B3B
      3B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C200C1C1C1000000
      0000191919000000000000000000000000000000000000000000000000000000
      000000000000D8D8D8006F6F6F0000000000BEBEBE0009090900000000000303
      0300A9A9A9000000000000000000000000000000000081818100000000000000
      000000000000000000000000000000000000989898002C2C2C00DDDDDD000000
      0000000000005555550059595900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00090909000000
      0000000000000000000000000000000000000000000000000000010101000101
      010001010100252525007070700000000000000000001E1E1E00838383006F6F
      6F00050505000000000000000000636363000000000000000000000000003939
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400C2C2C2000000
      0000191919000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C2000909090000000000000000000000
      000003030300A9A9A90000000000000000000000000031313100000000000000
      00000000000010101000000000000000000029292900C2C2C200000000000000
      000000000000000000000D0D0D00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00090909000000
      0000030303000000000000000000000000000000000000000000000000000303
      03000101010024242400000000002A2A2A000505050000000000000000000000
      0000999999000000000006060600686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171000000000000000000000000000000
      0000767676000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D8D8001919190000000000000000000000
      000000000000010101005C5C5C00838383003232320000000000000000000000
      0000000000005151510000000000000000000808080000000000000000000000
      00000000000000000000222222000D0D0D001111110011111100111111001111
      1100111111001111110011111100111111001111110011111100111111001111
      1100111111001111110011111100111111000000000000000000BCBCBC004545
      450000000000B3B3B3002727270000000000000000004C4C4C00CECECE00C9C9
      C9003D3F3F00E0E0E000000000000E0E0E002929290000000000000000000000
      0000D8D8D800000000005F5F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007171710012121200191919007676
      7600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D9D9001A1A1A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBE00000000000000000034343400AEAEAE00000000000000
      000000000000000000000A0A0A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E6E6E000000000000000000B2B2B200000000000000
      000000000000DBDDDD00292A2A000101010005050500D4D4D400000000000000
      00008C8C8C000000000076767600000000000000000000000000000000009C9C
      9C007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009D9D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800191919000000
      0000000000000000000000000000000000000000000000000000000000000000
      000068686800000000000000000000000000B6B6B60018181800B2B2B2000000
      0000CDCDCD003535350078787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300A9A9A900A9A9A90000000000000000000000
      00000000000000000000202020000202020001010100151515006B6B6B005B5B
      5B00030303000000000007070700B1B1B1000000000000000000000000009B9B
      9B007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD002B2B
      2B00000000000000000000000000000000000000000000000000000000006767
      67000000000000000000000000000000000000000000B4B4B4002E2E2E000303
      03001F1F1F008A8A8A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4C4C400000000009698980008080800010101000101
      0100292929003737370016161600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000909090003232320001010100000000000B0B0B004E4E4E00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049494900010101007576
      76000000000000000000D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009696960064646400C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000545454000D0D0D000D0D0D00555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000323232003B3B3B0000000000000000000000000000000000D7D7D7001010
      1000000000000000000000000000000000001212120000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B2B
      2B000000000034343400000000000000000000000000000000004F4F4F000000
      0000484848000000000000000000474747000000000055555500000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717006464
      640087878700C2C2C20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000067676700000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000000000000000000000000000BBBBBB0065656500282828000B0B0B000B0B
      0B002828280065656500BCBCBC000000000000000000000000002C2C2C000000
      00002727270000000000000000000000000000000000000000000C0C0C000000
      000000000000000000000000000000000000000000000E0E0E00000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      00007E7E7E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB0000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      000000000000DADADA003F3F3F00000000000000000000000000000000000000
      000000000000000000000000000041414100C9C9C9002C2C2C00000000002727
      27000000000000000000000000000000000000000000000000000C0C0C000000
      000000000000000000000000000000000000000000000E0E0E00000000000000
      00000000000000000000000000007E7E7E000000000000000000000000007E7E
      7E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400000000007070
      70000D0D0D000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E00CDCDCD00000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000C0C0C00011111100000000001313130081818100CCCCCC00000000000000
      0000CBCBCB0080808000131313000000000002020200000000002B2B2B000000
      0000000000000000000000000000000000000000000000000000525252000000
      00004A4A4A000000000000000000484848000000000039393900000000000000
      000000000000000000007E7E7E000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E00000000000000000023232300A6A6
      A600000000000000000000000000BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00DBDBDB00000000000000
      0000A6A6A600232323000000000000000000000000000000000000000000D9D9
      D900111111000000000052525200000000000000000000000000000000000000
      0000000000000000000000000000393939000000000002020200C8C8C8000000
      0000000000000000000000000000000000000000000000000000000000001111
      11000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000007E7E7E000000000000000000000000007E7E7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010100000000000000000023232300A6A6
      A60000000000000000006D6D6D00101010001010100010101000101010001010
      1000101010001010100010101000101010001010100059595900000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000003E3E
      3E00000000005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939390000000000414141000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252000C0C0C000D0D0D00383838000000000000000000000000007E7E
      7E007E7E7E000000000000000000000000007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000BABABA000000
      0000141414000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001313130000000000BCBC
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      0000000000000000000000000000767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000646464000000
      0000818181000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00000000002C2C
      2C002C2C2C00000000007E7E7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000B1B1B100767676007676760076767600767676007676
      76007676760076767600767676007676760076767600A5A5A500000000000000
      0000A6A6A6002323230000000000000000000000000000000000262626000000
      0000CECECE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00000000002828
      2800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00000000002C2C
      2C002C2C2C007E7E7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A60000000000000000009E9E9E00545454005454540054545400545454005454
      540054545400545454005454540054545400545454008F8F8F00000000000000
      0000A6A6A60023232300000000000000000000000000000000000B0B0B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      00007E7E7E00000000007E7E7E007E7E7E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A60023232300000000000000000000000000000000000B0B0B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B00000000000000000000000000000000000000000000000000000000000000
      0000545454000D0D0D000D0D0D00383838000000000000000000000000007E7E
      7E00000000007E7E7E0000000000000000007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000262626000000
      0000CFCFCF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD00000000002727
      2700000000000000000000000000000000000000000000000000D7D7D7001010
      10000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000007E7E7E000000000000000000000000007E7E7E00000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A60000000000000000007B7B7B00212121002121210021212100212121002121
      2100212121002121210021212100212121002121210068686800000000000000
      0000A6A6A6002323230000000000000000000000000000000000636363000000
      0000828282000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000006565
      65000000000000000000000000000000000000000000000000004F4F4F000000
      0000484848000000000000000000474747000000000039393900000000000000
      000000000000000000007E7E7E000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000002E2E2E0000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000D3D3D300A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900CCCCCC00000000000000
      0000A6A6A6002323230000000000000000000000000000000000B9B9B9000000
      0000151515000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001414140000000000BBBB
      BB000000000000000000000000000000000000000000000000000C0C0C000000
      000000000000000000000000000000000000000000000E0E0E00000000000000
      00000000000000000000000000007E7E7E000000000000000000000000007E7E
      7E0000000000000000000000000000000000CCCCCC002D2D2D00000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6002323230000000000000000000000000000000000000000003C3C
      3C00000000005454540000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051515100000000003F3F3F000000
      00000000000000000000000000000000000000000000000000000C0C0C000000
      000000000000000000000000000000000000000000000D0D0D00000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      00007E7E7E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000828282000000
      000000000000000000000000000000000000000000000000000023232300A6A6
      A6000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00000000000000
      0000A6A6A600232323000000000000000000000000000000000000000000D7D7
      D7000F0F0F000000000054545400000000000000000000000000000000000000
      0000000000000000000000000000525252000000000011111100D9D9D9000000
      0000000000000000000000000000000000000000000000000000525252000000
      00004A4A4A000000000000000000484848000000000054545400000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BA0076767600767676007676760096969600000000000000000023232300A6A6
      A600000000009696960000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000969696000000
      0000A6A6A6002323230000000000000000000000000000000000000000000000
      0000BFBFBF0010101000000000001515150082828200CECECE00000000000000
      0000CDCDCD0082828200141414000000000010101000C1C1C100000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      1100000000000000000000000000000000001010100000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E0000000000000000001D1D1D00DCDCDC000000000000000000232323004242
      420065656500474747000D0D0D000D0D0D000D0D0D0007070700040404000404
      04000404040004040400070707000D0D0D000D0D0D000D0D0D00474747006565
      6500424242002323230000000000000000000000000000000000000000000000
      000000000000D8D8D8003C3C3C00000000000000000000000000000000000000
      00000000000000000000000000003E3E3E00D9D9D90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252000C0C0C000C0C0C004F4F4F00D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00000000001F1F1F00DEDEDE000000000000000000000000008E8E8E006565
      650065656500656565006565650065656500656565000B0B0B001B1B1B002828
      2800282828001B1B1B000B0B0B00656565006565650065656500656565006565
      6500656565008E8E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000B9B9B90063636300262626000A0A0A000A0A
      0A002727270064646400BABABA00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E00000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000D2D2D2004343
      4300434343004343430043434300434343004343430043434300434343004343
      4300434343004343430042424200424242004242420042424200424242004343
      430043434300D2D2D20000000000000000000000000000000000A6A6A6009898
      9800989898009898980098989800989898009898980098989800989898009898
      9800989898009898980095959500959797009597970095979700959595009898
      980098989800A6A6A60000000000000000000000000000000000000000000000
      0000000000000000000089898900383838002323230023232300232323002323
      2300232323002323230023232300232323003838380089898900000000000000
      000000000000000000000000000000000000000000002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E00000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000787878000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101000101010001010100010101000101
      0100000000007E7E7E0000000000000000000000000025252500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101000101010001010100010101000101
      0100000000000000000023232300000000000000000000000000000000000000
      0000000000008989890023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300898989000000
      000000000000000000000000000000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101000101
      010001010100363636000000000000000000B8B8B80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010001010100010101000101
      0100010101000000000000000000B5B5B5000000000000000000000000000000
      0000000000003838380023232300C9C9C9000000000000000000000000000000
      000000000000000000000000000000000000C8C8C80023232300383838000000
      000000000000000000000000000000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010100010101000101
      010001010100010101000000000000000000ACADAD0001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010100010101000101
      0100010101000101010000000000AAAAAA0000000000000000006B6B6B002D2D
      2D00232323002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323002323
      23002D2D2D006C6C6C000000000000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E00000000009C9C9C00010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101000101
      01000101010001010100A2A2A20000000000ACADAD0001010100010101000000
      0000000000001C1C1C0084848400878787008787870087878700878787008787
      87008787870087878700878787008787870087878700838383001A1A1A000101
      0100010101000101010001010100AAAAAA00DCDCDC0030303000232323002323
      2300232323002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323002323
      230023232300232323003030300000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000057575700010101000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010001010100010101005A5A5A0000000000ACADAD0001010100010101000101
      0100000000007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000767676000101
      0100010101000101010001010100A8A8A8006666660023232300606060000000
      0000000000002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323000000
      0000000000005E5E5E00232323006C6C6C00000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000014141400010101000101
      0100010101000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010100010101001313130000000000ADADAD0001010100010101000101
      0100010101007A7A7A000000000000000000B1B1B10098989800989898009898
      9800989898009898980098989800B3B3B30000000000000000007A7A7A000000
      0000010101000101010001010100A7A7A7002C2C2C0023232300000000000000
      0000000000002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323000000
      00000000000000000000232323002E2E2E00000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E00000000000000000000000000C6C6C60001010100010101000101
      0100010101000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010001010100C7C7C700B0B0B00001010100010101000101
      0100010101007979790000000000000000000000000000000000000000000000
      00000000000000000000000000000101010000000000000000007A7A7A000000
      0000000000000101010001010100A7A7A7002323230023232300000000000000
      0000555555002323230023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300232323005656
      560000000000000000002323230023232300000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000010101000101
      0100010101000101010001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010080808000B0B0B00000000000010101000101
      010001010100797979000000000000000000CECECE00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00D0D0D00000000000000000007A7A7A000000
      0000000000000000000001010100A7A7A7002323230023232300000000000000
      0000535353002323230023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300232323005555
      550000000000000000002323230023232300000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A0000000000000000000101
      0100010101000101010001010100010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000057575700B0B0B00000000000000000000101
      0100010101007979790000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7A000000
      0000000000000000000000000000A8A8A8002323230023232300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B00000000000000000000000
      0000010101007979790000000000000000001919190000000000000000000000
      00000000000000000000000000001B1B1B0000000000000000007A7A7A000000
      0000000000000000000000000000AAAAAA002323230023232300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      000000000000000000002D231E002D231E002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E00000000000000000000000000000000002D23
      1E002D231E00000000000000000000000000000000000000000000000000CBCB
      CB000000000000000000C7C7C700C7C7C700C7C7C700C8C8C800CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00000000000000
      0000CBCBCB00000000000000000000000000B0B0B00000000000000000000000
      0000000000007979790000000000000000006767670053535300545454005454
      54005454540054545400545454006A6A6A0000000000000000007A7A7A000000
      0000000000000000000000000000AAAAAA002323230023232300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      000000000000000000002D231E002D231E002D231E002D231E002D231E002D23
      1E002D231E002D231E002D231E00000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000001010100010101000101010001010100010101000000
      000000000000000000000000000000000000000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000007A7A7A0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7A000000
      0000000000000000000000000000AAAAAA002323230023232300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000000000000010101003838380063636300636363006363
      63006464640064646400646464003C3C3C00000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      00000000000043434300D9D9D900D9D9D900D8D8D800D8D8D800D8D8D800D9D9
      D900DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00D9D9D900434343000000
      0000000000000000000000000000AAAAAA002323230023232300000000000000
      0000555555002323230056565600000000000000000055555500232323005656
      5600000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E002D231E000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000000000000000000008888880000000000000000000000
      000000000000000000000000000098989800000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000000000000000000000000000000101010001010100010101000101
      0100010101000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA002323230023232300000000000000
      0000535353002323230055555500000000000000000053535300232323005555
      5500000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323230023232300000000002D231E002D231E000000
      000000000000000000002D231E002D231E002D231E002D231E00000000000000
      0000000000000000000000000000000000000000000000000000000000002D23
      1E00362C28000000000000000000000000000000000000000000989898000000
      0000BEBEBE00000000000000000000000000292929004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004B4B4B002D2D2D00000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000000000000000000000000000000000000001010100010101000101
      0100010101000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA002C2C2C0023232300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000232323002D2D2D00000000002D231E002D231E000000
      000000000000000000002D231E002D231E002D231E002D231E00000000000000
      0000000000000000000000000000000000000000000000000000A09C98002D23
      1E00645E59000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000000000000000000000000000000000000010101000101
      010001010100010101000101010000000000000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000000000000000000000000000000000000000000000010101000101
      0100010101000101010001010100000000000000000000000000000000000000
      0000000000000000000000000000B7B7B7006A6A6A0023232300626262000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000060606000232323006B6B6B00000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A09C9900322822002C22
      1D00CDCBCB000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000018181800181818001818180018181800181818001818
      180018181800181818001818180018181800181818001818180000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0100010101000101010001010100010101000000000000000000000000000000
      0000000000000000000026262600000000000000000032323200232323002323
      2300232323002323230023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300232323002323
      230023232300232323003030300000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D231E002D231E002D231E002D231E009E9A
      9800000000000000000000000000000000000000000000000000989898000000
      0000BEBEBE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B1B1
      B10000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000000606060087878700989898009898980098989800989898009898
      9800959595005C5C5C0001010100010101000101010000000000000000000000
      00000000000020202000000000000000000000000000000000006A6A6A002C2C
      2C00232323002323230023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300232323002323
      23002C2C2C0066666600DCDCDC0000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D231E002E242000645E5900C4C1C1000000
      0000000000000000000000000000000000000000000000000000989898000000
      00007E7E7E00A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A7A7A700A6A6A600A6A6A600A6A6A600A7A7A700A9A9A9007676
      760000000000A4A4A4000000000000000000B0B0B00000000000000000000000
      0000000000003A3A3A0000000000000000000000000000000000D7D7D700BABA
      BA00000000000000000001010100010101000101010001010100000000000000
      0000202020000000000000000000000000000000000000000000000000000000
      0000000000002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323000000
      000000000000000000000000000000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A09C98002D231E00645E590000000000000000000000
      0000000000000000000000000000000000000000000000000000989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010100010101000101010001010100010101000000
      000003030300BDBDBD000000000000000000B0B0B00000000000000000000000
      0000000000003C3C3C00000000000000000000000000000000004B4B4B000000
      00008A8A8A000000000001010100010101000101010001010100010101001D1D
      1D00DDDDDD000000000000000000000000000000000000000000000000000000
      0000000000002323230023232300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232300232323000000
      000000000000000000000000000000000000000000002D231E002D231E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A09C9900322822002D231E00C4C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000727272000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BABABA0000000000000000000000
      0000000000003C3C3C00000000000000000000000000000000004B4B4B000000
      000089898900000000000000000001010100010101000101010020202000DBDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000003838380023232300CBCBCB000000000000000000000000000000
      000000000000000000000000000000000000C9C9C90023232300383838000000
      000000000000000000000000000000000000000000002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E002D231E002D231E002D231E002D23
      1E002D231E002D231E002C221D009E9897000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989898000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024242400000000000000
      0000000000003C3C3C00000000000000000000000000000000004B4B4B000000
      0000898989000000000000000000000000000101010023232300DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008989890023232300232323002323230023232300232323002323
      2300232323002323230023232300232323002323230023232300898989000000
      000000000000000000000000000000000000000000002D231E002D231E002D23
      1E002D231E002D231E002D231E002D231E002D231E002D231E002D231E002D23
      1E00332A2600615B5600CCCBC900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD004646
      46004343430043434300434343004343430043434300434343006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6009898
      980098989800B0B0B00000000000000000000000000000000000BDBDBD009898
      9800D7D7D700000000009898980098989800A6A6A60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000087878700373737002323230023232300232323002323
      2300232323002323230023232300232323003838380089898900000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00C00003FFFFFF000000000000C00003FF
      F8FF000000000000C00003FFE07F000000000000C00003FFC03F000000000000
      C00003FFC03F000000000000C30003FFC03F000000000000C0000301E03F0000
      00000000C0000301F83F000000000000C00003FFFF3F000000000000C30003FF
      FF3F000000000000C00003FFFF3F000000000000C00003FFFF3F000000000000
      C0000300073F000000000000C0000300073F000000000000C00003FFFF3F0000
      00000000C00003FFFF3F000000000000C00003FFFF3F000000000000C00003FF
      FF01000000000000C00003000700000000000000C00003000700000000000000
      C00003FFFF00000000000000C00003FFFF80000000000000C00003FFFFFD0000
      00000000C00003FFFFFF000000000000FFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFF
      FE03FFFFFFFF3FFFFFC1FFFFFE03FFFFFFFF3FFFFF89FFFFF803E007FFE73FFF
      FF3CFFFC7873E007FFE339FF003C00FC3870FFFFFFF1F0FFFF3CFFC00060FFFF
      FFF9E0FFFF98FF800003E007FFFFE13FFF81FF800007E007FF87E21FFFF7FFC1
      0007FFFFFF87F40FFFFFFF83C3EFFFFFFFFFFC07FFFFFF07E0FFE007FFFC7C07
      FFFFFF07E0FFE007FFF83E03FFFFFF07E0C7FFFF0FF07F03EFFFFFC3C2C7FFFE
      07F08F8383FFFFC00000E00007F9078319FFFF800000E00007FE03833CFFFF80
      0270FFFE07FE00037C0000C80271FFFF0FFF00033DFFFFFC3831E007FFFF8007
      11FFFFFC7C00E007FFFFC00F83FFFFFFFD01FFFFFFFFF01FFFFFFFFFFF8DFFFF
      FFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFF0007FFC00003FFFFFFFFFFFF00
      03FFC00003FFFFFFF0FFFF0003FFCFFFF3FFFFF3C07FC30003FFCFFFF3FFFFE3
      C63F830003FFCC0033FE01C7CF3F07003FFFCE0073F8000FCF3E0F002000CFFF
      F3F0301FC63C1F004000CE0033E1FE1FE0183F004000CC0033E3FF1FF0007F00
      4000CFFFF3C7FF8FFF00FF004000CFFFF3C7FF8FFF81FF004000CC0033C7FF8F
      FF83FF004000CC0033CFFFCFFF04FF004000CFFFF3CFFFCFF0087F004000CFFF
      F3C7FF8FC0183F004000CC0033C7FF8FC63C1F004000CC0033C7FF8FCF3E0F00
      4000CFFFF3E3FF1FCF3F07FFC01FCC0033E1FE1FC63F83FFC020C80013F0303F
      E07FC3FFC020C00003F8007FF07FFFFFC021C00003FE01FFFFFFFFFFC023FF81
      FFFFFFFFFFFFFFFFE027FF81FFFFFFFF8001E7C00003C00003FC003F8001E7C0
      0003800001F8001F9FFFE7C00003000000F8FF1F9FFF00C00003000000C1FF83
      9FFF0080000100000001FF819FFFE780000103FFC019FF989FFFE78000010300
      C039FF9C9FFFE70000000300C030000C9FFFFF0000000300C030000C9FFFFF00
      000003FFC03FFFFC9FFFE7FFFFFF0300C03FFFFC9C01E7EC00370300C03FFFFC
      9C01E7C4002303FFC03FFFFC9FFFE7C40023000000318FFC9FFFE7C47E230000
      00318FFC9C3FE7C400230000003FFFFC9C3FC7C400230000001FFFF89FFF87C4
      00230000018000019FFE0FC7FFE3000003C000019FFE1FC0000303CC07F9FF9F
      9FFC7FC0000303C407F9FF9F9FF87FC007FF03C40FF8FF1F8000FFC00FFF83C4
      1FF8001F8001FFC01FFFC3C47FFC003F00000000000000000000000000000000
      000000000000}
  end
  object MenusImageList: TImageList
    Left = 572
    Top = 279
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileName = 'C:\LANG\DelphiProjects\ConvEditor'
    FileTypes = <
      item
        DisplayName = 'DeusEx Conversation .XML file'
        FileMask = '*.xml'
      end
      item
        DisplayName = 'DeusEx Conversation .CON file'
        FileMask = '*.con'
      end>
    OkButtonLabel = '&Open'
    Options = [fdoStrictFileTypes, fdoForceFileSystem, fdoPathMustExist, fdoFileMustExist]
    Title = 'Open conversation file'
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
    object FileSave: TAction
      Category = 'File'
      Caption = 'Save'
      ImageIndex = 14
      OnExecute = FileSaveExecute
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
      Hint = 'procedure TfrmMain.GenerateAudioFileNames();'
      ImageIndex = 25
      OnExecute = FileGenerateAudioNamesExecute
    end
    object FileClose: TAction
      Category = 'File'
      Caption = 'Close'
      OnExecute = FileCloseExecute
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
      OnExecute = Conversation_PropertiesExecute
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
        DisplayName = '.XML Conversation file'
        FileMask = '*.xml'
      end
      item
        DisplayName = '.CON Conversation file'
        FileMask = '*.con'
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
    object N19: TMenuItem
      Caption = '-'
    end
    object ClearForNewFile1: TMenuItem
      Caption = 'ClearForNewFile();'
      OnClick = ClearForNewFile1Click
    end
    object CreateTestFile1: TMenuItem
      Caption = 'CreateTestFile()'
      OnClick = CreateTestFile1Click
    end
  end
end
