object frmEditValue: TfrmEditValue
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Value'
  ClientHeight = 115
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  StyleElements = []
  OnShow = FormShow
  TextHeight = 14
  object lblText: TLabel
    Left = 8
    Top = 8
    Width = 357
    Height = 36
    AutoSize = False
    Caption = 'lblText'
    Layout = tlBottom
    WordWrap = True
    StyleElements = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 78
    Width = 373
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      373
      37)
    object btnOk: TButton
      Left = 201
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      StyleElements = []
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 290
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      StyleElements = [seBorder]
    end
  end
  object editValue: TEdit
    Left = 8
    Top = 50
    Width = 357
    Height = 22
    AutoSize = False
    TabOrder = 1
    Text = 'editValue'
    StyleElements = []
    OnKeyPress = editValueKeyPress
  end
end
