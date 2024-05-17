object frmSpeechGenerator: TfrmSpeechGenerator
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'strSpeechGenTitle'
  ClientHeight = 611
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PopupMode = pmExplicit
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    735
    611)
  TextHeight = 15
  object EsLinkLabel1: TEsLinkLabel
    Left = 345
    Top = 578
    Width = 128
    Height = 25
    Alignment = taCenter
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Open ElevenLabs'
    Url = 'https://elevenlabs.io/app/speech-synthesis'
    Layout = tlCenter
    LinkStyle = Mixed
  end
  object mmoSpeechText: TMemo
    Left = 8
    Top = 37
    Width = 385
    Height = 261
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    HideSelection = False
    Lines.Strings = (
      'mmoSpeechText')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object edtAPIKey: TEdit
    Left = 8
    Top = 8
    Width = 385
    Height = 23
    PasswordChar = '*'
    PopupMenu = frmEventInsAdd.MemoPopup
    TabOrder = 1
    TextHint = 'Enter API key here'
  end
  object btnGenerateSpeech: TButton
    Left = 8
    Top = 311
    Width = 121
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Generate Speech'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnGenerateSpeechClick
  end
  object btnClose: TButton
    Left = 8
    Top = 578
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object btnGetStarted: TButton
    Left = 479
    Top = 577
    Width = 248
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Click here first: Get Started and fill data'
    TabOrder = 4
    OnClick = btnGetStartedClick
  end
  object edtCharsQuota: TEdit
    Left = 89
    Top = 581
    Width = 250
    Height = 22
    Anchors = [akLeft, akBottom]
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = '<Characters remaining>'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 342
    Width = 719
    Height = 233
    ActivePage = TabSheet1
    Anchors = [akLeft, akRight, akBottom]
    DoubleBuffered = False
    ParentDoubleBuffered = False
    Style = tsFlatButtons
    TabOrder = 6
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Voices'
      object lbVoices: TListBox
        Left = 0
        Top = 0
        Width = 711
        Height = 200
        Style = lbOwnerDrawFixed
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = lbVoicesClick
        OnDrawItem = lbVoicesDrawItem
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Output/Log'
      ImageIndex = 1
      object mmoLog: TMemo
        Left = 0
        Top = 0
        Width = 711
        Height = 200
        Align = alClient
        Color = 3947580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15329769
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        HideSelection = False
        Lines.Strings = (
          'mmoLog')
        ParentFont = False
        PopupMenu = frmEventInsAdd.MemoPopup
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object edtVoiceQSearch: TEdit
    Left = 399
    Top = 342
    Width = 328
    Height = 23
    Anchors = [akRight, akBottom]
    PopupMenu = frmEventInsAdd.MemoPopup
    TabOrder = 7
    TextHint = 'Search for voice'
    OnChange = edtVoiceQSearchChange
  end
  object btnPlayVoiceDemo: TButton
    Left = 276
    Top = 342
    Width = 117
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = 'Play Voice demo'
    TabOrder = 8
    OnClick = btnPlayVoiceDemoClick
  end
  object SGPlayer: TMediaPlayer
    Left = 26
    Top = 89
    Width = 57
    Height = 30
    VisibleButtons = [btPlay, btPause]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 9
    OnNotify = SGPlayerNotify
  end
  object pb_mp3: TProgressBar
    Left = 8
    Top = 298
    Width = 385
    Height = 8
    Anchors = [akLeft, akRight, akBottom]
    Smooth = True
    TabOrder = 10
  end
  object pgcVoiceOptions_History: TPageControl
    Left = 399
    Top = 8
    Width = 334
    Height = 328
    ActivePage = TabSheet3
    Anchors = [akTop, akRight, akBottom]
    Style = tsFlatButtons
    TabOrder = 11
    object TabSheet3: TTabSheet
      Caption = 'Voice parameters'
      DesignSize = (
        326
        295)
      object gbVoiceParameters: TGroupBox
        Left = 0
        Top = -1
        Width = 325
        Height = 295
        Anchors = [akTop, akRight]
        Caption = 'Parameters'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 29
          Width = 276
          Height = 15
          Caption = 'Stability. Lower - More variable, higher - more stable'
        end
        object Label2: TLabel
          Left = 16
          Top = 81
          Width = 142
          Height = 15
          Caption = 'Similarity (Similarity boost)'
        end
        object Label3: TLabel
          Left = 16
          Top = 136
          Width = 281
          Height = 15
          Caption = 'Style Exaggeration (more that 50 can lead to artifacts)'
        end
        object Label4: TLabel
          Left = 17
          Top = 240
          Width = 105
          Height = 22
          AutoSize = False
          Caption = 'Select Model:'
          Layout = tlCenter
        end
        object tbStyleExag: TTrackBar
          Left = 11
          Top = 157
          Width = 302
          Height = 21
          Max = 100
          PositionToolTip = ptLeft
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmBoth
          TickStyle = tsNone
        end
        object tbSimilarity: TTrackBar
          Left = 11
          Top = 102
          Width = 302
          Height = 21
          Max = 100
          Position = 70
          PositionToolTip = ptLeft
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmBoth
          TickStyle = tsNone
        end
        object tbStability: TTrackBar
          Left = 11
          Top = 50
          Width = 302
          Height = 21
          Max = 100
          Position = 50
          PositionToolTip = ptLeft
          ShowSelRange = False
          TabOrder = 2
          TickMarks = tmBoth
          TickStyle = tsNone
        end
        object chkSpeakerBoost: TCheckBox
          Left = 16
          Top = 200
          Width = 97
          Height = 17
          Hint = 
            'Boost the similarity of the synthesized speech and '#13#10'the voice a' +
            't the cost of some generation speed.'
          Caption = 'Speaker Boost'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object edtRandSeed: TLabeledEdit
          Left = 224
          Top = 197
          Width = 89
          Height = 23
          Hint = 
            'If specified, our system will make a best '#13#10'effort to sample det' +
            'erministically, '#13#10'such that repeated requests with the same '#13#10'se' +
            'ed and parameters should return the '#13#10'same result. Determinism i' +
            's not guaranteed.'
          EditLabel.Width = 58
          EditLabel.Height = 23
          EditLabel.Caption = 'RandSeed: '
          HideSelection = False
          LabelPosition = lpLeft
          NumbersOnly = True
          TabOrder = 4
          Text = '123'
        end
        object cmbModels: TComboBox
          Left = 104
          Top = 240
          Width = 209
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 5
          OnChange = cmbModelsChange
          OnDrawItem = cmbModelsDrawItem
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'History'
      ImageIndex = 1
      object lbHistory: TListBox
        Left = 0
        Top = 33
        Width = 326
        Height = 262
        Style = lbOwnerDrawFixed
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 40
        ParentFont = False
        TabOrder = 0
      end
      object EsPanel1: TEsPanel
        Left = 0
        Top = 0
        Width = 326
        Height = 33
        Align = alTop
        TabOrder = 1
        BevelInner = bvNone
        BevelOuter = bvNone
        FrameStyle = Down
        object btnLoadHistory: TButton
          Left = 5
          Top = 2
          Width = 90
          Height = 25
          Caption = 'Load History'
          TabOrder = 0
          OnClick = btnLoadHistoryClick
        end
        object btnPlayHistoryItem: TButton
          Left = 101
          Top = 2
          Width = 35
          Height = 25
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Marlett'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnDownloadHistoryItem: TButton
          Left = 231
          Top = 2
          Width = 90
          Height = 25
          Caption = 'Download'
          TabOrder = 2
        end
      end
    end
  end
  object btnDownloadGeneratedSpeech: TButton
    Left = 176
    Top = 311
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Download...'
    TabOrder = 12
  end
  object btnPlayGeneratedSpeech: TButton
    Left = 135
    Top = 311
    Width = 35
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Marlett'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 64
    Top = 160
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    OnAfterExecute = RESTRequest1AfterExecute
    SynchronizedEvents = False
    Left = 192
    Top = 160
  end
  object RESTResponse1: TRESTResponse
    Left = 296
    Top = 160
  end
  object PlayVoiceUpdateTimer: TTimer
    Enabled = False
    Interval = 35
    OnTimer = PlayVoiceUpdateTimerTimer
    Left = 168
    Top = 80
  end
  object SaveDlg: TSaveDialog
    Filter = 'mp3 files|*.mp3'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Save file as...'
    Left = 256
    Top = 240
  end
end
