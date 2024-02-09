object frmLabelErrors: TfrmLabelErrors
  Left = 0
  Top = 0
  Caption = 'Error -- Missing Labels!'
  ClientHeight = 402
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  StyleName = 'Windows'
  OnClose = FormClose
  DesignSize = (
    476
    402)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 460
    Height = 82
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'The labels listed above are referenced in conversations'#13#10'but are' +
      ' not defined in any events.'#13#10#13#10'You must correct these label refe' +
      'rences before the conversations'#13#10'will run properly in the game.'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitWidth = 546
  end
  object Label2: TLabel
    Left = 8
    Top = 369
    Width = 225
    Height = 25
    AutoSize = False
    Caption = 'DblClick on item to jump to it.'
    Layout = tlCenter
  end
  object lvLabelErrors: TListView
    Left = 8
    Top = 96
    Width = 460
    Height = 267
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Conversation/Event'
        MinWidth = 200
        Width = 300
      end
      item
        Caption = 'Label'
        MinWidth = 50
        Width = 100
      end>
    DoubleBuffered = True
    GridLines = True
    HideSelection = False
    StyleName = 'Windows'
    ReadOnly = True
    RowSelect = True
    ParentDoubleBuffered = False
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = lvLabelErrorsDblClick
  end
  object btnClose: TButton
    Left = 393
    Top = 369
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
