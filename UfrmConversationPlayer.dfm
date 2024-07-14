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
end
