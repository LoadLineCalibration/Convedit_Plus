object frmFindRefs: TfrmFindRefs
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'List of "Jump to conversation" events'
  ClientHeight = 422
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    433
    422)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 391
    Width = 160
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'DblClick on item to jump to it.'
    ExplicitTop = 342
  end
  object btnClose: TButton
    Left = 355
    Top = 391
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 427
    Height = 382
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'List of events'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 1
    object lvRefs: TListView
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 417
      Height = 357
      Align = alClient
      Columns = <
        item
          Caption = 'Conversation/Event'
          Width = 200
        end
        item
          Caption = 'Jump to label'
          Width = 200
        end>
      GridLines = True
      Items.ItemData = {}
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnCustomDrawItem = lvRefsCustomDrawItem
      OnDblClick = lvRefsDblClick
      OnEditing = lvRefsEditing
      ExplicitLeft = 7
      ExplicitTop = 22
    end
  end
  object btnReload: TButton
    Left = 274
    Top = 391
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Reload'
    TabOrder = 2
    OnClick = lstRefsClick
  end
end
