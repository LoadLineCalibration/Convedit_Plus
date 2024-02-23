{
    ConEditPlus project.

    Created by Veronika Afanasyeva (Andrievskaya) aka LoadLine Calibration.

    Built in Delphi 11.3

    Open-source. Feel free to modify...

}

program ConEditPlus;

uses
  Vcl.Forms,
  AboutBox1 in 'AboutBox1.pas' {frmAbout},
  AddInsertEvent in 'AddInsertEvent.pas' {frmEventInsAdd},
  ConFile.Reader in 'ConFile.Reader.pas',
  ConFile.Writer in 'ConFile.Writer.pas',
  ConFileProperties in 'ConFileProperties.pas' {frmConvoFileProperties},
  ConvEditPlus.Consts in 'ConvEditPlus.Consts.pas',
  ConvEditPlus.Enums in 'ConvEditPlus.Enums.pas',
  ConEditPlus.Helpers in 'ConEditPlus.Helpers.pas',
  Conversation.Classes in 'Conversation.Classes.pas',
  ConvoProperties in 'ConvoProperties.pas' {frmConvoProperties},
  ConXML.Reader in 'ConXML.Reader.pas',
  ConXML.writer in 'ConXML.writer.pas',
  EditChoice in 'EditChoice.pas' {frmEditChoice},
  EditValueDialog in 'EditValueDialog.pas' {frmEditValue},
  frmFind1 in 'frmFind1.pas' {frmFind},
  frmFlagList1 in 'frmFlagList1.pas' {frmFlagList},
  frmSettings1 in 'frmSettings1.pas' {frmSettings},
  HelpWindow in 'HelpWindow.pas' {frmHelp},
  MainWindow in 'MainWindow.pas' {frmMain},
  Table in 'Table.pas' {frmTableEdit},
  uFrmLabelErrors in 'uFrmLabelErrors.pas' {frmLabelErrors};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmEventInsAdd, frmEventInsAdd);
  Application.CreateForm(TfrmConvoFileProperties, frmConvoFileProperties);
  Application.CreateForm(TfrmConvoProperties, frmConvoProperties);
  Application.CreateForm(TfrmEditChoice, frmEditChoice);
  Application.CreateForm(TfrmEditValue, frmEditValue);
  Application.CreateForm(TfrmFind, frmFind);
  Application.CreateForm(TfrmFlagList, frmFlagList);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.CreateForm(TfrmTableEdit, frmTableEdit);
  Application.CreateForm(TfrmLabelErrors, frmLabelErrors);
  Application.Run;
end.
