unit ConEditPlus.Clipboard.Helper;

interface

uses
  Winapi.Windows, Vcl.Clipbrd, System.Classes, Conversation.Classes, ConEditPlus.Consts,
  System.SysUtils;


// To make things simpler
procedure WriteString(var bw: TBinaryWriter; str: String);
procedure WriteDouble(var bw: TBinaryWriter; dbl: Double);
procedure WriteInteger(var bw: TBinaryWriter; Int: Integer);
procedure WriteLongBool(var bw: TBinaryWriter; LBool: LongBool);

// to copy events into clipboard
procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter);
procedure WriteChoice(Choice: TConEventChoice; var bw: TBinaryWriter);

procedure WriteFirst4Fields(Event: TConEvent; var bw: TBinaryWriter);

implementation

procedure WriteString(var bw: TBinaryWriter; str: String);
begin
    var StrSize := Length(str);

    if StrSize = 0 then
    begin
        bw.Write(Integer(0));
        Exit();
    end;

    bw.Write(Integer(StrSize)); // write size of string...
    bw.Write(TEncoding.ANSI.GetBytes(str)); // and string
end;

procedure WriteDouble(var bw: TBinaryWriter; dbl: Double);
begin
    bw.Write(Double(dbl));
end;

procedure WriteInteger(var bw: TBinaryWriter; Int: Integer);
begin
    bw.Write(Integer(Int));
end;

procedure WriteLongBool(var bw: TBinaryWriter; LBool: LongBool);
begin
    bw.Write(Integer(LBool));
end;

procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Speech_Caption); // id for clipboard

    WriteFirst4Fields(Speech, bw);

    WriteInteger(bw, Speech.ActorIndex); // speaker id
    WriteString(bw, Speech.ActorValue); // speaker Name

    WriteInteger(bw, Speech.ActorToIndex); // speaking to id
    WriteString(bw, Speech.ActorToValue); // speaking to name

    WriteString(bw, Speech.TextLine); // speech text
    WriteString(bw, Speech.mp3File); // Sound

    WriteLongBool(bw, Speech.bContinued); // not implemented in game
    WriteLongBool(bw, Speech.bBold);      //
    WriteInteger(bw, Speech.SpeechFont);  //
end;

procedure WriteChoice(Choice: TConEventChoice; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Choice_Caption); // id for clipboard

    WriteFirst4Fields(Choice, bw);

    for var chi := 0 to Choice.NumChoices -1 do
    begin
        WriteInteger(bw, Choice.Choices[chi].Index); // unk0
        WriteString(bw, Choice.Choices[chi].textline); // choiceText
        WriteLongBool(bw, Choice.Choices[chi].bDisplayAsSpeech); // bDisplayAsSpeech

        if Choice.Choices[chi].bSkillNeeded = -1 then
        begin
            WriteInteger(bw, -1);  // skill is not required, so write skillName.id = -1
        end;

        if Choice.Choices[chi].bSkillNeeded >= 0 then
        begin
            WriteInteger(bw, Choice.Choices[chi].bSkillNeeded);  // skill required, so write skillName.id
            WriteString(bw, Choice.Choices[chi].Skill); // skillName
            WriteInteger(bw, Choice.Choices[chi].SkillLevel); // skilllevelNeeded
        end;

        WriteString(bw, Choice.Choices[chi].GoToLabel); // choiceLabel
        WriteString(bw, Choice.Choices[chi].mp3); // soundPath

        var numFlagRefListChi := Length(Choice.Choices[chi].RequiredFlags);
        WriteInteger(bw, numFlagRefListChi); // numFlagRefList

        for var NFRCh := 0 to numFlagRefListChi -1 do
        begin
            WriteInteger(bw, Choice.Choices[chi].RequiredFlags[NFRCh].flagIndex);
             WriteString(bw, Choice.Choices[chi].RequiredFlags[NFRCh].flagName);
           WriteLongBool(bw, Choice.Choices[chi].RequiredFlags[NFRCh].flagValue);
            WriteInteger(bw, Choice.Choices[chi].RequiredFlags[NFRCh].flagExpiration);
        end;
    end;
end;

procedure WriteFirst4Fields(Event: TConEvent; var bw: TBinaryWriter);
begin
    WriteInteger(bw, Event.EventIdx);
    WriteInteger(bw, Event.unknown1);
    WriteInteger(bw, Ord(Event.EventType));
    WriteString(bw, Event.EventLabel);
end;

end.
