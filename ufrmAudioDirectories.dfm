object frmAudioDirectories: TfrmAudioDirectories
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Create Audio directories'
  ClientHeight = 337
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Options: TGroupBox
    Left = 8
    Top = 8
    Width = 418
    Height = 161
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 377
      Height = 105
      Caption = 
        'This tool can create empty directories for voiceover files, so y' +
        'ou don'#39't have to create them manually.'#10#13#10'Optionally, this tool c' +
        'an add placeholder .mp3 files to these directories, so you can r' +
        'eplace them with real files with voiceover later.'#13#10#13#10'Point the p' +
        'ath and then click the "Generate" button.'
      WordWrap = True
    end
    object edtPath: TEdit
      Left = 16
      Top = 122
      Width = 369
      Height = 23
      ReadOnly = True
      TabOrder = 0
      TextHint = 'Click on "..." and choose suitable directory'
    end
    object btnSelectDir: TButton
      Left = 385
      Top = 121
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = btnSelectDirClick
    end
  end
  object mmoResults: TMemo
    Left = 8
    Top = 175
    Width = 418
    Height = 114
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnGenerate: TButton
    Left = 312
    Top = 304
    Width = 113
    Height = 25
    Caption = 'Generate'
    TabOrder = 2
    OnClick = btnGenerateClick
  end
  object btnClose: TButton
    Left = 231
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object chkAddPlaceholderMP3: TCheckBox
    Left = 8
    Top = 312
    Width = 185
    Height = 17
    Caption = 'Add placeholder .mp3 files'
    TabOrder = 4
  end
  object SelectDirDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    OkButtonLabel = 'Select this directory'
    Options = [fdoPickFolders, fdoForceFileSystem, fdoPathMustExist]
    Title = 'Select directory'
    Left = 253
    Top = 22
  end
end
