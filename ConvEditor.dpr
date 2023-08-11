program ConvEditor;

uses
  Vcl.Forms,
  MainWindow in 'MainWindow.pas' {frmMain},
  AddInsertEvent in 'AddInsertEvent.pas' {formEventInsAdd},
  Table in 'Table.pas' {frmTableEdit},
  ConvoProperties in 'ConvoProperties.pas' {frmConvoProperties},
  EditValueDialog in 'EditValueDialog.pas' {frmEditValue},
  ConversationFilePropertiesDialog in 'ConversationFilePropertiesDialog.pas' {frmConvoFileProperties},
  EditChoice in 'EditChoice.pas' {frmEditChoice},
  Vcl.Themes,
  Vcl.Styles,
  HelpWindow in 'HelpWindow.pas' {frmHelp},
  frmFlagList1 in 'frmFlagList1.pas' {frmFlagList},
  frmSettings1 in 'frmSettings1.pas' {frmSettings},
  ConvEditPlus_Const in 'ConvEditPlus_Const.pas',
  ConvEditPlus_Util in 'ConvEditPlus_Util.pas',
  frmFind1 in 'frmFind1.pas' {frmFind},
  AboutBox1 in 'AboutBox1.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TformEventInsAdd, formEventInsAdd);
  Application.CreateForm(TfrmTableEdit, frmTableEdit);
  Application.CreateForm(TfrmConvoProperties, frmConvoProperties);
  Application.CreateForm(TfrmEditValue, frmEditValue);
  Application.CreateForm(TfrmConvoFileProperties, frmConvoFileProperties);
  Application.CreateForm(TfrmEditChoice, frmEditChoice);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.CreateForm(TfrmFlagList, frmFlagList);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmFind, frmFind);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.HintHidePause := 10000;
  Application.Run;
end.
