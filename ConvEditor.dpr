{
    ConvEdit Plus project.
    Created in Delphi 11


    Author: Veronika Afanasyeva (Andrievskaya) aka LoadLine Calibration

    Open-source. Feel free to modify...
}

program ConvEditor;

uses
  Vcl.Forms,
  MainWindow in 'MainWindow.pas' {frmMain},
  Table in 'Table.pas' {frmTableEdit},
  ConvoProperties in 'ConvoProperties.pas' {frmConvoProperties},
  EditValueDialog in 'EditValueDialog.pas' {frmEditValue},
  ConFileProperties in 'ConFileProperties.pas' {frmConvoFileProperties},
  HelpWindow in 'HelpWindow.pas' {frmHelp},
  frmFlagList1 in 'frmFlagList1.pas' {frmFlagList},
  frmSettings1 in 'frmSettings1.pas' {frmSettings},
  ConvEditPlus.Consts in 'ConvEditPlus.Consts.pas',
  ConvEditPlus_Util in 'ConvEditPlus_Util.pas',
  frmFind1 in 'frmFind1.pas' {frmFind},
  AboutBox1 in 'AboutBox1.pas' {frmAbout},
  AddInsertEvent in 'AddInsertEvent.pas' {frmEventInsAdd},
  Conversation.Classes in 'Conversation.Classes.pas',
  ConXML.Reader in 'ConXML.Reader.pas',
  ConFile.Reader in 'ConFile.Reader.pas',
  ConvEdit.Configuration in 'ConvEdit.Configuration.pas',
  ConFile.Writer in 'ConFile.Writer.pas',
  ConXML.writer in 'ConXML.writer.pas',
  ConvEditPlus.Enums in 'ConvEditPlus.Enums.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

// Should run under Windows 2000
{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmEventInsAdd, frmEventInsAdd);
  Application.CreateForm(TfrmTableEdit, frmTableEdit);
  Application.CreateForm(TfrmConvoProperties, frmConvoProperties);
  Application.CreateForm(TfrmEditValue, frmEditValue);
  Application.CreateForm(TfrmConvoFileProperties, frmConvoFileProperties);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.CreateForm(TfrmFlagList, frmFlagList);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmFind, frmFind);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmEventInsAdd, frmEventInsAdd);
  Application.HintHidePause := 10000;
  Application.Run;
end.
