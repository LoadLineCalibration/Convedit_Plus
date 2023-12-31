unit ConFile.Writer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Dialogs, winapi.ActiveX, ConvEditPlus.Consts, Conversation.Classes, system.TypInfo,
  vcl.ComCtrls, MainWindow;

procedure SaveConFile(newFile: string);

procedure WriteString(cw: TBinaryWriter; str: String);
procedure WriteDouble(cw: TBinaryWriter; dbl: Double);
procedure WriteInteger(cw: TBinaryWriter; Int: Integer);

function DTStrToDouble(str: string): Double;


implementation

function DTStrToDouble(str: string): Double;
begin
    Result := StrToDateTime(str);
end;

procedure SaveConFile(newFile: string);
var
  fileStr: TFileStream;
  ConWrite: TBinaryWriter;
  fileHdrBytes: TBytes;
begin
    fileStr := TFileStream.Create(newFile, fmOpenWrite or fmCreate);
    ConWrite := TBinaryWriter.Create(fileStr, TEncoding.ANSI, False);

    SetLength(fileHdrBytes, Length(conFileHeader));
    for var th := 0 to Length(conFileHeader) -1 do
        fileHdrBytes[th] := conFileHeader[th];

try
    ConWrite.Write(fileHdrBytes); // Header
    ConWrite.Write(Integer(CEP_CONXML_FILE_VERSION)); // version

    // temporary, for testing
    WriteDouble(ConWrite, DTStrToDouble(frmMain.conFileParameters.fpCreatedByDate));
    WriteString(ConWrite, frmMain.conFileParameters.fpCreatedByName);
    WriteDouble(ConWrite, DTStrToDouble(frmMain.conFileParameters.fpModifiedByDate));
    WriteString(ConWrite, frmMain.conFileParameters.fpModifiedByName);
    WriteString(ConWrite, frmMain.conFileParameters.fpAudioPackage);
    WriteString(ConWrite, frmMain.conFileParameters.fpNotes);

    WriteInteger(ConWrite, Length(frmMain.conFileParameters.fpMissions)); // numMissions

    for var i := 0 to High(frmMain.conFileParameters.fpMissions) do
    begin
        WriteInteger(ConWrite, frmMain.conFileParameters.fpMissions[i]);
    end;

    WriteInteger(ConWrite, 10); // tables data size? Also Unrecognized1 in .xml version

    // write tables here...

    // actors
    // numrecords (array length) then record Index, then record string size and string itself
    // same for other 3 tables.

    // flags

    // Skills

    // objects

    WriteInteger(ConWrite, 0); // unknown3

    WriteInteger(ConWrite, 0); // numConversations

    ConWrite.Close();
finally
    ConWrite.Free();
    fileStr.Free();
end;

end;


procedure WriteString(cw: TBinaryWriter; str: String);
begin
    var StrSize := Length(str);

    cw.Write(Integer(StrSize)); // write size of string...
    cw.Write(TEncoding.ANSI.GetBytes(str)); // and string
end;

procedure WriteDouble(cw: TBinaryWriter; dbl: Double);
begin
    cw.Write(Double(dbl));
end;

procedure WriteInteger(cw: TBinaryWriter; Int: Integer);
begin
    cw.Write(Integer(Int));
end;

end.
