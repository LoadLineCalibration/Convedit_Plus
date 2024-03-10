unit ConEditPlus.Clipboard.Helper;

interface

uses
  Winapi.Windows, Vcl.Clipbrd, System.Classes, Conversation.Classes, ConEditPlus.Consts,
  System.SysUtils;


procedure WriteString(var bw: TBinaryWriter; str: String);
procedure WriteDouble(var bw: TBinaryWriter; dbl: Double);
procedure WriteInteger(var bw: TBinaryWriter; Int: Integer);
procedure WriteLongBool(var bw: TBinaryWriter; LBool: LongBool);



// to copy events into clipboard
procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter);

implementation

procedure WriteString(var bw: TBinaryWriter; str: String);
begin
//
end;

procedure WriteDouble(var bw: TBinaryWriter; dbl: Double);
begin
//
end;

procedure WriteInteger(var bw: TBinaryWriter; Int: Integer);
begin
//
end;

procedure WriteLongBool(var bw: TBinaryWriter; LBool: LongBool);
begin
//
end;

procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter);
begin
//
end;

end.
