object frmSpeechGenerator: TfrmSpeechGenerator
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Speech generation [ElevenLabs API test]'
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
    Height = 268
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
    TabOrder = 1
    TextHint = 'Enter API key here'
  end
  object GroupBox1: TGroupBox
    Left = 399
    Top = 8
    Width = 328
    Height = 328
    Anchors = [akTop, akRight]
    Caption = 'Parameters'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 2
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
    object chkSpeakekBoost: TCheckBox
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
    object LabeledEdit1: TLabeledEdit
      Left = 224
      Top = 197
      Width = 89
      Height = 23
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
  object btnGenerate: TButton
    Left = 8
    Top = 311
    Width = 128
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Generate Speech'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnGenerateClick
  end
  object btnClose: TButton
    Left = 8
    Top = 578
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object btnGetStarted: TButton
    Left = 479
    Top = 578
    Width = 248
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Click here first: Get Started and fill data'
    TabOrder = 5
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
    TabOrder = 6
    TextHint = 'Characters remaining'
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
    TabOrder = 7
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Voices'
      DesignSize = (
        711
        200)
      object lbVoices: TListBox
        Left = 0
        Top = 5
        Width = 713
        Height = 196
        Style = lbOwnerDrawFixed
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 0
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
    TabOrder = 8
    TextHint = 'Search for voice'
  end
  object btnPlayVoiceDemo: TButton
    Left = 272
    Top = 342
    Width = 117
    Height = 23
    Caption = 'Play Voice demo'
    TabOrder = 9
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    OnHTTPProtocolError = RESTClient1HTTPProtocolError
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
end
