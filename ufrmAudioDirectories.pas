unit ufrmAudioDirectories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Conversation.Classes, ConEditPlus.Consts,
  Winapi.ShellAPI, System.UITypes;

type
  TfrmAudioDirectories = class(TForm)
    Options: TGroupBox;
    mmoResults: TMemo;
    btnGenerate: TButton;
    btnClose: TButton;
    edtPath: TEdit;
    Label1: TLabel;
    chkAddPlaceholderMP3: TCheckBox;
    btnSelectDir: TButton;
    SelectDirDialog: TFileOpenDialog;

    // new procedures
    procedure CreateAudioDirectories(const InitialPath: string);
    procedure CopyFinalMp3(CopyTo, FileName: String);

    procedure btnCloseClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure btnSelectDirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAudioDirectories: TfrmAudioDirectories;

implementation

{$R *.dfm}

uses MainWindow;

procedure TfrmAudioDirectories.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmAudioDirectories.btnGenerateClick(Sender: TObject);
begin
    if (edtPath.Text = '') or (DirectoryExists(edtPath.text) = false) then
    begin
        MessageBox(0, PChar(strSelDirectoryWarning), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit();
    end;

    CreateAudioDirectories(edtPath.text);
end;

procedure TfrmAudioDirectories.btnSelectDirClick(Sender: TObject);
begin
    if SelectDirDialog.Execute() = True then
    begin
        edtPath.Text := SelectDirDialog.FileName  + '\';
    end;
end;

procedure TfrmAudioDirectories.CreateAudioDirectories(const InitialPath: string);
var
    DirStr: string;
begin
    var bTryToCreateDir: Boolean := false;

    mmoResults.Lines.Add(strGenAudioFileNames);
    frmMain.GenerateAudioFileNames(); // Generate filenames and paths first

    btnClose.Enabled := False;
    btnGenerate.Enabled := False;

    mmoResults.Lines.Add(strGenAudioFilenamesDirs);

    try
        for var con in frmMain.ConversationsList do
        begin
            var ConNameDirectory: string;

            if con.bInfoLink = True then
                ConNameDirectory := INFOLINK_CONVERSATION_DIRECTORY
            else
                ConNameDirectory := con.conOwnerName;

            for var event in con.Events do
            begin
                if event is TConEventSpeech then
                begin
                    var speech := TConEventSpeech(event);
                    DirStr := InitialPath + frmMain.conFileParameters.fpAudioPackage + '\' + ConNameDirectory + '\' + con.conName + '\';

                    if DirectoryExists(DirStr) = False then
                        bTryToCreateDir := ForceDirectories(DirStr); // create directory if required

                    if bTryToCreateDir = False then
                    begin
                        mmoResults.Lines.Add(Format(strAudioDirsError, [InitialPath, SysErrorMessage(GetLastError)]));
                        Break;
                    end;


                    if chkAddPlaceholderMP3.Checked = True then
                    begin
                        var mp3FileStr := ExtractFileName(InitialPath + speech.mp3File);

                        if not FileExists(mp3FileStr) then
                            CopyFinalMp3(DirStr, mp3FileStr); // Extract and copy placeholder .mp3 file, but only if there is no such file
                    end;
                end;

                if event is TConEventChoice then
                begin
                    var ChoiceObj := TconEventChoice(event);

                    for var choiceItem in ChoiceObj.Choices do
                    begin
                        if choiceItem.bDisplayAsSpeech = True then
                        begin
                            var choicemMP3 := choiceItem.mp3;
                            var cDirStr := InitialPath + frmMain.conFileParameters.fpAudioPackage + '\' + con.conOwnerName + '\' + con.conName + '\';

                            if DirectoryExists(cDirStr) = False then
                                bTryToCreateDir := ForceDirectories(cDirStr); // create directory if required

                            if bTryToCreateDir = False then
                            begin
                                mmoResults.Lines.Add(Format(strAudioDirsError, [InitialPath, SysErrorMessage(GetLastError())]));
                                Break;
                            end;


                            if chkAddPlaceholderMP3.Checked = True then
                            begin
                                var cMP3FileStr := ExtractFileName(InitialPath + choiceItem.mp3);

                                if not FileExists(cMP3FileStr) then
                                    CopyFinalMp3(cDirStr, cMP3FileStr); // Extract and copy placeholder .mp3 file, but only if there is no such file
                            end;
                        end;
                    end;
                end;
            end;
        end;

    except
        on E: Exception do
        begin
            btnClose.Enabled := True;
            btnGenerate.Enabled := True;
            mmoResults.Lines.Add(strGenAudioFileNamesDirsError);
            raise Exception.Create(Format(strAudioDirsError, [InitialPath, SysErrorMessage(GetLastError())]));
        end;
    end;

    mmoResults.Lines.Add(strGenAudioFileNamesDirsSuccess);
    btnClose.Enabled := True;
    btnGenerate.Enabled := True;

    if MessageBox(0, PChar(strAudioDirsSuccesful), PChar(strGenAudioFileNamesDirsSuccess),
    MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        ShellExecute(0, 'open', PChar(InitialPath), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmAudioDirectories.CopyFinalMp3(CopyTo, FileName: String);
var
    ResStream: TResourceStream;
    FileStream: TFileStream;
begin
    ResStream := TResourceStream.Create(HInstance, 'FINAL','MP3');
    try
        FileStream := TFileStream.Create(CopyTo + '\' + FileName, fmCreate);
        try
            FileStream.CopyFrom(ResStream, 0);
        finally
            FileStream.Free();
        end;
    finally
        ResStream.Free();
    end;
end;

end.
