object frmHelp: TfrmHelp
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Help window'
  ClientHeight = 264
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  StyleElements = []
  DesignSize = (
    815
    264)
  TextHeight = 14
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 220
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'pnl1'
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    ExplicitWidth = 632
    ExplicitHeight = 409
    DesignSize = (
      815
      220)
    object redtHelpContents: TRichEdit
      Left = 7
      Top = 8
      Width = 800
      Height = 203
      Cursor = crIBeam
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'redtHelpContents')
      ParentFont = False
      ScrollBars = ssVertical
      ShowURLHint = True
      TabOrder = 0
      StyleElements = []
    end
  end
  object btnClose: TButton
    Left = 732
    Top = 231
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    StyleElements = []
    OnClick = btnCloseClick
    ExplicitLeft = 498
    ExplicitTop = 468
  end
  object btnZoom100: TButton
    Tag = 100
    Left = 89
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 100%'
    TabOrder = 2
    StyleElements = []
    OnClick = btnZoom100Click
  end
  object btnZoom125: TButton
    Tag = 125
    Left = 170
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 125%'
    TabOrder = 3
    StyleElements = []
    OnClick = btnZoom100Click
  end
  object btnZoom150: TButton
    Tag = 150
    Left = 251
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 150%'
    TabOrder = 4
    StyleElements = []
    OnClick = btnZoom100Click
  end
  object btnZoom175: TButton
    Tag = 175
    Left = 332
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 175%'
    TabOrder = 5
    StyleElements = []
    OnClick = btnZoom100Click
  end
  object btnZoom200: TButton
    Tag = 200
    Left = 413
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 200%'
    TabOrder = 6
    StyleElements = []
    OnClick = btnZoom100Click
  end
  object btnZoom75: TButton
    Tag = 75
    Left = 8
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Scale 75%'
    TabOrder = 7
    StyleElements = []
    OnClick = btnZoom100Click
  end
end
