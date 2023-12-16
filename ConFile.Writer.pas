unit ConFile.Writer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Dialogs, winapi.ActiveX, ConvEditPlus_Const, Conversation.Classes, system.TypInfo,
  vcl.ComCtrls;

procedure SaveConFile(newFile: string);

procedure WriteString(cw: TBinaryWriter; str: String);
procedure WriteDouble(cw: TBinaryWriter; dbl: Double);
procedure WriteInteger(cw: TBinaryWriter; Int: Integer);



implementation

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
    WriteDouble(ConWrite, 45146.977847222224);
    WriteString(ConWrite, 'CreatedBy: Some String with some chars!');
    WriteDouble(ConWrite, 45146.977847222224);
    WriteString(ConWrite, 'LastModifBy: some string');
    WriteString(ConWrite, 'AudioPack');
    WriteString(ConWrite, 'Notes');

    WriteInteger(ConWrite, 1); // numMissions
        WriteInteger(ConWrite, 1); // mission1

    WriteInteger(ConWrite, 0); // tables data size

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
