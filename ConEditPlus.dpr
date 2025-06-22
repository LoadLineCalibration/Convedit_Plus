﻿{
    ConEditPlus project.

    Created by Veronika Afanasyeva (Andrievskaya) aka LoadLine Calibration.

    Built in Delphi 11.3

    Open-source. Feel free to modify...

    Primăvara va veni,
    Pietrele vor înflori,
    Voi cânta iubirea, pacea, fericirea,
    Viaţa voi cânta!
}

program ConEditPlus;

uses
  Vcl.Forms,
  AboutBox1 in 'AboutBox1.pas' {frmAbout},
  AddInsertEvent in 'AddInsertEvent.pas' {frmEventInsAdd},
  ConFile.Reader in 'ConFile.Reader.pas',
  ConFile.Writer in 'ConFile.Writer.pas',
  ConFileProperties in 'ConFileProperties.pas' {frmConvoFileProperties},
  ConEditPlus.Consts in 'ConEditPlus.Consts.pas',
  ConEditPlus.Enums in 'ConEditPlus.Enums.pas',
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
  uFrmLabelErrors in 'uFrmLabelErrors.pas' {frmLabelErrors},
  ConEditPlus.Clipboard.Helper in 'ConEditPlus.Clipboard.Helper.pas',
  ufrmAudioDirectories in 'ufrmAudioDirectories.pas' {frmAudioDirectories},
  UfrmConversationPlayer in 'UfrmConversationPlayer.pas' {frmConversationPlayer},
  uFrmFindRefs in 'uFrmFindRefs.pas' {frmFindRefs},
  ConEditPlus.Templates.Factory in 'ConEditPlus.Templates.Factory.pas',
  ConEditPlus.Colors in 'ConEditPlus.Colors.pas',
  ConEditPlus.IniExporter in 'ConEditPlus.IniExporter.pas',
  ConEditPlus.ConEventList.Utils in 'ConEditPlus.ConEventList.Utils.pas',
  Vcl.Themes,
  Vcl.Styles,
  ConEditPlus.ShellContextMenuHelper in 'ConEditPlus.ShellContextMenuHelper.pas';

{$R *.res}
{$SETPEOSVERSION 5.1} // Windows XP
{$SETPESUBSYSVERSION 5.1}

begin
  Randomize(); //
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
  Application.CreateForm(TfrmAudioDirectories, frmAudioDirectories);
  Application.CreateForm(TfrmConversationPlayer, frmConversationPlayer);
  Application.CreateForm(TfrmFindRefs, frmFindRefs);
  Application.HintHidePause := 30000; // hint delay
  Application.Run();
  ReportMemoryLeaksOnShutdown := True;

end.
