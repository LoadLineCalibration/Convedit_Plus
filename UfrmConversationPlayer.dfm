object frmConversationPlayer: TfrmConversationPlayer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Conversation player'
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
  DesignSize = (
    735
    611)
  TextHeight = 15
  object txtSpeech: TEsImageLabel
    Left = 8
    Top = 8
    Width = 719
    Height = 297
    TextAlignment = taLeftJustify
    TextLayout = Top
    TextDistance = 10
    TextMultiline = True
    Caption = 'Not finished yet'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnClose: TButton
    Left = 8
    Top = 578
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object lbAnswer: TListBox
    Left = 8
    Top = 328
    Width = 719
    Height = 209
    Style = lbOwnerDrawFixed
    Color = -1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ItemHeight = 24
    Items.Strings = (
      '* Yes/No'
      '* Or what?'
      '* Go away'
      '* Please come back later')
    ParentFont = False
    TabOrder = 1
    OnDrawItem = lbAnswerDrawItem
    OnMouseMove = lbAnswerMouseMove
  end
  object mp1: TMediaPlayer
    Left = 400
    Top = 543
    Width = 57
    Height = 30
    VisibleButtons = [btPlay, btStop]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 2
    OnNotify = mp1Notify
  end
  object Button1: TButton
    Left = 152
    Top = 578
    Width = 75
    Height = 25
    Caption = 'Test'
    TabOrder = 3
  end
end
