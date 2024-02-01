object frmLabelErrors: TfrmLabelErrors
  Left = 0
  Top = 0
  Caption = 'Error -- Missing Labels!'
  ClientHeight = 431
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  DesignSize = (
    441
    431)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 348
    Width = 339
    Height = 75
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    Caption = 
      'The labels listed above are referenced in conversations'#13#10'but are' +
      ' not defined in any events.'#13#10#13#10'You must correct these label refe' +
      'rences before the conversations'#13#10'will run properly in the game.'
    ExplicitTop = 360
  end
  object lvLabelErrors: TListView
    Left = 8
    Top = 8
    Width = 425
    Height = 327
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
    RowSelect = True
    ParentDoubleBuffered = False
    TabOrder = 0
    ViewStyle = vsReport
  end
  object btnClose: TButton
    Left = 353
    Top = 348
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
