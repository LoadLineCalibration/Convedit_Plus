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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 735
    Height = 313
    ActivePage = TabSheet1
    Align = alTop
    Style = tsFlatButtons
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Interactive Conversation Player'
      object txtSpeech: TEsImageLabel
        Left = 0
        Top = 0
        Width = 727
        Height = 280
        Align = alClient
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
        ExplicitLeft = 8
        ExplicitTop = -45
        ExplicitWidth = 719
        ExplicitHeight = 297
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'PlayerPawn Setup'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 65
        Width = 179
        Height = 15
        Caption = 'Currently set flags (like in game)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edyPlayerCredits: TLabeledEdit
        Left = 58
        Top = 7
        Width = 121
        Height = 23
        EditLabel.Width = 45
        EditLabel.Height = 23
        EditLabel.Caption = 'Credits: '
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 0
        Text = ''
      end
      object edtPlayerHealth: TLabeledEdit
        Left = 58
        Top = 36
        Width = 121
        Height = 23
        EditLabel.Width = 43
        EditLabel.Height = 23
        EditLabel.Caption = 'Health: '
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 1
        Text = ''
      end
      object lbGameFlags: TListBox
        Left = 3
        Top = 86
        Width = 302
        Height = 191
        ItemHeight = 15
        TabOrder = 2
      end
    end
  end
end
