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
  OnShow = FormShow
  DesignSize = (
    815
    264)
  TextHeight = 15
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
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    object redtHelpContents: TRichEdit
      Left = 2
      Top = 2
      Width = 811
      Height = 216
      Cursor = crIBeam
      Align = alClient
      BorderStyle = bsNone
      BorderWidth = 6
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
  end
  object cmbHelpTextScale: TComboBox
    Left = 568
    Top = 233
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    Anchors = [akRight, akBottom]
    ItemIndex = 1
    TabOrder = 2
    Text = '100%'
    OnChange = cmbHelpTextScaleChange
    Items.Strings = (
      '75%'
      '100%'
      '125%'
      '150%')
  end
end
