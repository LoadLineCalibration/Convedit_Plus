unit ConEditPlus.Clipboard.Helper;

interface

uses
  Winapi.Windows, Vcl.Clipbrd, System.Classes, Conversation.Classes, ConEditPlus.Consts,
  System.SysUtils, ConFile.Reader;


// To make things simpler
procedure WriteString(var bw: TBinaryWriter; str: String);
procedure WriteDouble(var bw: TBinaryWriter; dbl: Double);
procedure WriteInteger(var bw: TBinaryWriter; Int: Integer);
procedure WriteLongBool(var bw: TBinaryWriter; LBool: LongBool);

function ReadContentHeader(var br: TBinaryReader; var ms: TMemoryStream): string;
function GetEventTypeInClipboard(var BinReader: TBinaryReader; var mStream: TMemoryStream): string;

// to copy events to clipboard (see MainWindow.pas > procedure CopyEventToClipboard())
procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteChoice(Choice: TConEventChoice; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteSetFlag(SetFlag: TConEventSetFlag; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteCheckFlag(CheckFlag: TConEventCheckFlag; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteCheckObject(CheckObject: TConEventCheckObject; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteTransObject(TransObject: TConEventTransferObject; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteMoveCam(MoveCam: TConEventMoveCamera; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteAnim(Anim: TConEventAnimation; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteTrade(Trade: TConEventTrade; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteJump(Jump: TConEventJump; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteRandom(Rand: TConEventRandom; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteTrigger(Trigger: TConEventTrigger; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteAddGoal(AddGoal: TConEventAddGoal; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteAddNote(Note: TConEventAddNote; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteAddSkillPts(SkillPts: TConEventAddSkillPoints; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteAddCredits(Credits: TConEventAddCredits; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteCheckPersona(CheckPersona: TConEventCheckPersona; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
procedure WriteComment(Comment: TConEventComment; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteEnd(EventEnd: TConEventEnd; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);

procedure WriteFirst4Fields(Event: TConEvent; var bw: TBinaryWriter);

procedure SerializeConversation(const con: TConversation; var bw: TBinaryWriter); // to save conversation to clipboard

// to paste events from clipboard
procedure DeSerializeSpeech(var br: TBinaryReader; var Speech: TConEventSpeech; bSkipClipboardId: Boolean = False); // build event from binary data
procedure DeSerializeChoice(var br: TBinaryReader; var Choice: TConEventChoice; bSkipClipboardId: Boolean = False);
procedure DeSerializeSetFlag(var br: TBinaryReader; var SetFlag: TConEventSetFlag; bSkipClipboardId: Boolean = False);
procedure DeSerializeCheckFlag(var br: TBinaryReader; var CheckFlag: TConEventCheckFlag; bSkipClipboardId: Boolean = False);
procedure DeSerializeCheckObject(var br: TBinaryReader; var CheckObj: TConEventCheckObject; bSkipClipboardId: Boolean = False);
procedure DeSerializeTransferObject(var br: TBinaryReader; var TransObj: TConEventTransferObject; bSkipClipboardId: Boolean = False);
procedure DeSerializeMoveCamera(var br: TBinaryReader; var MoveCam: TConEventMoveCamera; bSkipClipboardId: Boolean = False);
procedure DeSerializeAnimation(var br: TBinaryReader; var NewAnim: TConEventAnimation; bSkipClipboardId: Boolean = False);
procedure DeSerializeTrade(var br: TBinaryReader; var NewTrade: TConEventTrade; bSkipClipboardId: Boolean = False);
procedure DeSerializeJump(var br: TBinaryReader; var NewJump: TConEventJump; bSkipClipboardId: Boolean = False);
procedure DeSerializeRandom(var br: TBinaryReader; var NewRandom: TConEventRandom; bSkipClipboardId: Boolean = False);
procedure DeSerializeTrigger(var br: TBinaryReader; var NewTrigger: TConEventTrigger; bSkipClipboardId: Boolean = False);
procedure DeSerializeAddGoal(var br: TBinaryReader; var NewAddGoal: TConEventAddGoal; bSkipClipboardId: Boolean = False);
procedure DeSerializeAddNote(var br: TBinaryReader; var NewAddNote: TConEventAddNote; bSkipClipboardId: Boolean = False);
procedure DeSerializeAddSkillPts(var br: TBinaryReader; var NewAddSkillPts: TConEventAddSkillPoints; bSkipClipboardId: Boolean = False);
procedure DeSerializeAddCredits(var br: TBinaryReader; var NewAddCredits: TConEventAddCredits; bSkipClipboardId: Boolean = False);
procedure DeSerializeCheckPersona(var br: TBinaryReader; var NewCheckPersona: TConEventCheckPersona; bSkipClipboardId: Boolean = False);
procedure DeSerializeComment(var br: TBinaryReader; var NewComment: TConEventComment; bSkipClipboardId: Boolean = False);
procedure DeSerializeEnd(var br: TBinaryReader; var NewEnd: TConEventEnd; bSkipClipboardId: Boolean = False);

// to paste conversation from clipboard
procedure DeSerializeConversation(var br: TBinaryReader; var NewConvo: TConversation);


implementation

uses ConFile.Writer, MainWindow;

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

function ReadContentHeader(var br: TBinaryReader; var ms: TMemoryStream): string;
var
    tempStr: string;
    tempBytes: TBytes;
begin
try
    var TempInt := br.ReadInteger();
    TempBytes := br.ReadBytes(tempInt);
    tempStr := TEncoding.ANSI.GetString(TempBytes);

    ms.Position := 0; // reset position here

    if tempStr <> '' then
        Result := tempStr;
except
    Result := '';
    raise Exception.Create(strClipboardReadError);
end;
end;

function GetEventTypeInClipboard(var BinReader: TBinaryReader; var mStream: TMemoryStream): string;
begin
    var EventToPaste: string;

    if ReadContentHeader(BinReader, mStream) = ET_Speech_Caption then
        EventToPaste := ET_Speech_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Choice_Caption then
        EventToPaste := ET_Choice_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_SetFlag_Caption then
        EventToPaste := ET_SetFlag_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_CheckFlag_Caption then
        EventToPaste := ET_CheckFlag_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_CheckObject_Caption then
        EventToPaste := ET_CheckObject_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_TransferObject_Caption then
        EventToPaste := ET_TransferObject_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_MoveCamera_Caption then
        EventToPaste := ET_MoveCamera_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Animation_Caption then
        EventToPaste := ET_Animation_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Trade_Caption then
        EventToPaste := ET_Trade_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Jump_Caption then
        EventToPaste := ET_Jump_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Random_Caption then
        EventToPaste := ET_Random_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Trigger_Caption then
        EventToPaste := ET_Trigger_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_AddGoal_Caption then
        EventToPaste := ET_AddGoal_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_AddNote_Caption then
        EventToPaste := ET_AddNote_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_AddSkillPoints_Caption then
        EventToPaste := ET_AddSkillPoints_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_AddCredits_Caption then
        EventToPaste := ET_AddCredits_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_CheckPersona_Caption then
        EventToPaste := ET_CheckPersona_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_Comment_Caption then
        EventToPaste := ET_Comment_Caption
    else if ReadContentHeader(BinReader, mStream) = ET_End_Caption then
        EventToPaste := ET_End_Caption;

    Result:= EventToPaste;
end;

procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
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

procedure WriteChoice(Choice: TConEventChoice; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Choice_Caption); // id for clipboard

    WriteFirst4Fields(Choice, bw);

    WriteInteger(bw, Choice.choice_unk0); // choice_unk0
    WriteLongBool(bw, Choice.bClearScreen); // bClearScreen
    WriteInteger(bw, Choice.NumChoices); // numChoiceList

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

procedure WriteSetFlag(SetFlag: TConEventSetFlag; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_SetFlag_Caption); // id for clipboard

    WriteFirst4Fields(SetFlag, bw);

    var numFlagRefListSF := Length(SetFlag.SetFlags);
    WriteInteger(bw, numFlagRefListSF); // numFlagRefList

    for var NFRSF := 0 to numFlagRefListSF -1 do
    begin
        WriteInteger(bw, SetFlag.SetFlags[NFRSF].flagIndex);
         WriteString(bw, SetFlag.SetFlags[NFRSF].flagName);
       WriteLongBool(bw, SetFlag.SetFlags[NFRSF].flagValue);
        WriteInteger(bw, SetFlag.SetFlags[NFRSF].flagExpiration);
    end;
end;

procedure WriteCheckFlag(CheckFlag: TConEventCheckFlag; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_CheckFlag_Caption); // id for clipboard

    WriteFirst4Fields(CheckFlag, bw);

    var numFlagRefListCHF := Length(CheckFlag.FlagsToCheck);
    WriteInteger(bw, numFlagRefListCHF); // numFlagRefList

    for var NFRCHF := 0 to numFlagRefListCHF -1 do
    begin
        WriteInteger(bw, CheckFlag.FlagsToCheck[NFRCHF].flagIndex);
         WriteString(bw, CheckFlag.FlagsToCheck[NFRCHF].flagName);
       WriteLongBool(bw, CheckFlag.FlagsToCheck[NFRCHF].flagValue);
        WriteInteger(bw, CheckFlag.FlagsToCheck[NFRCHF].flagExpiration);
    end;

    WriteString(bw, CheckFlag.GotoLabel); // setLabel
end;

procedure WriteCheckObject(CheckObject: TConEventCheckObject; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_CheckObject_Caption); // id for clipboard

    WriteFirst4Fields(CheckObject, bw);

    WriteInteger(bw, CheckObject.ObjectIndex); // objectName.id
    WriteString(bw, CheckObject.ObjectValue); // objectName.Name
    WriteString(bw, CheckObject.GoToLabel); // failLabel
end;

procedure WriteTransObject(TransObject: TConEventTransferObject; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_TransferObject_Caption); // id for clipboard

    WriteFirst4Fields(TransObject, bw);

    WriteInteger(bw, TransObject.ObjectIndex); // objectName.id
    WriteString(bw, TransObject.ObjectValue); // objectName.Name
    WriteInteger(bw, TransObject.Amount); // TransferCount

    WriteInteger(bw, TransObject.ActorFromIndex);
    WriteString(bw, TransObject.ActorFromValue);

    WriteInteger(bw, TransObject.ActorToIndex);
    WriteString(bw, TransObject.ActorToValue);

    WriteString(bw, TransObject.GotoLabel); // failLabel
end;

procedure WriteMoveCam(MoveCam: TConEventMoveCamera; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_MoveCamera_Caption); // id for clipboard

    WriteFirst4Fields(MoveCam, bw);

    WriteInteger(bw, Ord(MoveCam.CameraType)); // cameraType

    if MoveCam.CameraType = CT_Random then
        WriteInteger(bw, 0)
    else
        WriteInteger(bw, Ord(MoveCam.CameraAngle)); // cameraPosition

    WriteInteger(bw, -1); // cameraTransition was not implemented anyway, so just write -1
end;

procedure WriteAnim(Anim: TConEventAnimation; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Animation_Caption); // id for clipboard

    WriteFirst4Fields(Anim, bw);

    WriteInteger(bw, Anim.ActorIndex); // eventOwnerName.id
    WriteString(bw, Anim.ActorValue); // eventOwnerName.Name
    WriteString(bw, Anim.AnimSequence); // seqStr
    WriteLongBool(bw, Anim.bAnimPlayOnce); // playMode.
    WriteInteger(bw, Anim.AnimPlayForSeconds); // This field is missing in ConEventAnimation.uc (by default)
    WriteLongBool(bw, Anim.bAnimWaitToFinish); // bFinishAnim
end;

procedure WriteTrade(Trade: TConEventTrade; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    // not implemented...
end;

procedure WriteJump(Jump: TConEventJump; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Jump_Caption); // id for clipboard

    WriteFirst4Fields(Jump, bw);

    WriteString(bw, Jump.gotoLabel); // jumpLabel
    WriteInteger(bw, Jump.conversationId); // conId
end;

procedure WriteRandom(Rand: TConEventRandom; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Random_Caption); // id for clipboard

    WriteFirst4Fields(Rand, bw);

    var numRandomLabels := Length(Rand.GoToLabels);
    WriteInteger(bw, numRandomLabels);

    for var NRL := 0 to numRandomLabels -1 do
        WriteString(bw, Rand.GoToLabels[NRL]);

    WriteLongBool(bw, Rand.bCycle); // cycle events
    WriteLongBool(bw, Rand.bCycleOnce);
    WriteLongBool(bw, Rand.bCycleRandom);
end;

procedure WriteTrigger(Trigger: TConEventTrigger; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Trigger_Caption); // id for clipboard

    WriteFirst4Fields(Trigger, bw);

    WriteString(bw, Trigger.TriggerTag);
end;

procedure WriteAddGoal(AddGoal: TConEventAddGoal; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_AddGoal_Caption); // id for clipboard

    WriteFirst4Fields(AddGoal, bw);

    WriteString(bw, AddGoal.GoalName);
    var bGoalCompleted := AddGoal.bComplete;
    WriteLongBool(bw, bGoalCompleted);

    if (bGoalCompleted = False) then
    begin
        WriteString(bw, AddGoal.GoalText);
        WriteLongBool(bw, AddGoal.bPrimaryGoal);
    end;
end;

procedure WriteAddNote(Note: TConEventAddNote; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_AddNote_Caption); // id for clipboard

    WriteFirst4Fields(Note, bw);

    WriteString(bw, Note.TextLine); // noteText
end;

procedure WriteAddSkillPts(SkillPts: TConEventAddSkillPoints; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_AddSkillPoints_Caption); // id for clipboard

    WriteFirst4Fields(SkillPts, bw);

    WriteInteger(bw, SkillPts.Points); // pointsToAdd
    WriteString(bw, SkillPts.TextLine); // awardMessage
end;

procedure WriteAddCredits(Credits: TConEventAddCredits; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_AddCredits_Caption); // id for clipboard

    WriteFirst4Fields(Credits, bw);

    WriteInteger(bw, Credits.Credits);
end;

procedure WriteCheckPersona(CheckPersona: TConEventCheckPersona; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_CheckPersona_Caption); // id for clipboard

    WriteFirst4Fields(CheckPersona, bw);

    WriteInteger(bw, Ord(CheckPersona.AttrToCheck)); // personaType
    WriteInteger(bw, Ord(CheckPersona.Condition));
    WriteInteger(bw, CheckPersona.CheckValue);
    WriteString(bw, CheckPersona.CheckGoToLabel); // JumpLabel
end;

procedure WriteComment(Comment: TConEventComment; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_Comment_Caption); // id for clipboard

    WriteFirst4Fields(Comment, bw);

    WriteString(bw, Comment.TextLine); // comment
end;

procedure WriteEnd(EventEnd: TConEventEnd; var bw: TBinaryWriter; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
        WriteString(bw, ET_End_Caption); // id for clipboard

    WriteFirst4Fields(EventEnd, bw);
end;

procedure WriteFirst4Fields(Event: TConEvent; var bw: TBinaryWriter);
begin
    WriteInteger(bw, Event.EventIdx);
    WriteInteger(bw, Event.unknown1);
    WriteInteger(bw, Ord(Event.EventType));
    WriteString(bw, Event.EventLabel);
end;

procedure SerializeConversation(const con: TConversation; var bw: TBinaryWriter); // Write conversation to clipboard using TBinaryWriter
begin
    WriteString(bw, CLIPBOARD_CONVERSATION_ID); // write id first

    WriteInteger(bw, con.id); // unknown0
    WriteInteger(bw, con.id);
    WriteString(bw, con.conName);
    WriteString(bw, con.conDescription);

    WriteDouble(bw, DateTimeStrToDouble(con.conCreatedByDate)); // createdOn
    WriteString(bw, con.conCreatedByName); // createdBy

    WriteDouble(bw, DateTimeStrToDouble(con.conModifiedByDate)); // lastModifiedOn
    WriteString(bw, con.conModifiedByName); // lastModifiedBy

    WriteInteger(bw, con.conOwnerIndex); // OwnerName id
    WriteString(bw, con.conOwnerName); // OwnerName

    WriteLongBool(bw, con.bInfoLink);
    WriteString(bw, con.conNotes); // notes
    WriteLongBool(bw, con.bOnlyOnce); // bDisplayOnce
    WriteLongBool(bw, con.bFirstPerson);
    WriteLongBool(bw, con.bNonInteract);
    WriteLongBool(bw, con.bRandomCamera);
    WriteLongBool(bw, con.bCanInterrupt);
    WriteLongBool(bw, con.bCannotInterrupt);

    WriteLongBool(bw, con.bPCBumps);
    WriteLongBool(bw, con.bPCFrobs);
    WriteLongBool(bw, con.bNPCSees);
    WriteLongBool(bw, con.bNPCEnters);
    WriteInteger(bw, con.distance); // Radius

    var numFlagRefList := Length(con.conDependsOnFlags); // array size
    WriteInteger(bw, numFlagRefList);                             // write numFlagRefList

    for var nfr := 0 to numFlagRefList -1 do
    begin
        WriteInteger(bw, con.conDependsOnFlags[nfr].flagIndex);
        WriteString(bw, con.conDependsOnFlags[nfr].flagName);
        WriteLongBool(bw, con.conDependsOnFlags[nfr].flagValue);
        WriteInteger(bw, con.conDependsOnFlags[nfr].flagExpiration);
    end;

    var numEventList := Length(con.Events);  // array size
    WriteInteger(bw, numEventList);                   // write numEventList

    for var NEL := 0 to numEventList -1 do
    begin
        if con.Events[NEL].EventType = ET_Speech then // 00
        begin
            var eventSpeech := TConEventSpeech(con.Events[NEL]);
            WriteSpeech(EventSpeech, bw, true);
        end;

        if con.Events[NEL].EventType = ET_Choice then //01
        begin
            var eventChoice := TConEventChoice(con.Events[NEL]);
            WriteChoice(eventChoice, bw, true);
        end;

        if con.Events[NEL].EventType = ET_SetFlag then // 02
        begin
            var eventSetFlag := TConEventSetFlag(con.Events[NEL]);
            WriteSetFlag(eventSetFlag, bw, true);
        end;

        if con.Events[NEL].EventType = ET_CheckFlag then // 03
        begin
            var eventCheckFlag := TConEventCheckFlag(con.Events[NEL]);
            WriteCheckFlag(eventCheckFlag, bw, true);
        end;

        if con.Events[NEL].EventType = ET_CheckObject then // 04
        begin
            var eventCheckObject := TConEventCheckObject(con.Events[NEL]);
            WriteCheckObject(eventCheckObject, bw, true);
        end;

        if con.Events[NEL].EventType = ET_TransferObject then // 05
        begin
            var eventTransObject := TConEventTransferObject(con.Events[NEL]);
            WriteTransObject(eventTransObject, bw, true);
        end;

        if con.Events[NEL].EventType = ET_MoveCamera then // 06
        begin
            var eventMoveCam := TConEventMoveCamera(con.Events[NEL]);
            WriteMoveCam(eventMoveCam, bw, true);
        end;

        if con.Events[NEL].EventType = ET_Animation then // 07
        begin
            var eventAnim := TConEventAnimation(con.Events[NEL]);
            WriteAnim(eventAnim, bw, true);
        end;

        if con.Events[NEL].EventType = ET_Trade then // 08
        begin
            // not implemented (at least for now)
        end;

        if con.Events[NEL].EventType = ET_Jump then // 09
        begin
            var eventJump := TConEventJump(con.Events[NEL]);
            WriteJump(eventJump, bw, true);
        end;

        if con.Events[NEL].EventType = ET_Random then // 10
        begin
            var eventRandom := TConEventRandom(con.Events[NEL]);
            WriteRandom(eventRandom, bw, True);
        end;

        if con.Events[NEL].EventType = ET_Trigger then // 11
        begin
            var eventTrigger := TConEventTrigger(con.Events[NEL]);
            WriteTrigger(eventTrigger, bw, True);
        end;

        if con.Events[NEL].EventType = ET_AddGoal then // 12
        begin
            var eventAddGoal := TConEventAddGoal(con.Events[NEL]);
            WriteAddGoal(eventAddGoal, bw, True);
        end;

        if con.Events[NEL].EventType = ET_AddNote then // 13
        begin
            var eventAddNote := TConEventAddNote(con.Events[NEL]);
            WriteAddNote(eventAddNote, bw, True);
        end;

        if con.Events[NEL].EventType = ET_AddSkillPoints then // 14
        begin
            var eventAddSkillPoints := TConEventAddSkillPoints(con.Events[NEL]);
            WriteAddSkillPts(eventAddSkillPoints, bw, True);
        end;

        if con.Events[NEL].EventType = ET_AddCredits then // 15
        begin
            var eventAddCredits := TConEventAddCredits(con.Events[NEL]);
            WriteAddCredits(eventAddCredits, bw, True);
        end;

        if con.Events[NEL].EventType = ET_CheckPersona then // 16
        begin
            var eventCheckPersona := TConEventCheckPersona(con.Events[NEL]);
            WriteCheckPersona(eventCheckPersona, bw, True);
        end;

        if con.Events[NEL].EventType = ET_Comment then // 17
        begin
            var eventComment := TConEventComment(con.Events[NEL]);
            WriteComment(eventComment, bw, True);
        end;

        if con.Events[NEL].EventType = ET_End then // 18
        begin
            var eventEnd := TConEventEnd(con.Events[NEL]);
            WriteEnd(eventEnd, bw, True);
        end;
    end;
end;

procedure DeSerializeSpeech(var br: TBinaryReader; var Speech: TConEventSpeech; bSkipClipboardId: Boolean = False); // build event from binary data
begin
    if bSkipClipboardId = False then
    begin
        GetConString(br); // skip the header for clipboard

        // first 4
        Speech.EventIdx := br.ReadInteger();
        Speech.unknown1 := br.ReadInteger();
        Speech.EventType := TEventType(br.ReadInteger());
        Speech.EventLabel := GetConString(br);
    end;

    // ET_Speech
    Speech.ActorIndex := br.ReadInteger(); // speaker id
    Speech.ActorValue := GetConString(br);  // speaker Name

    Speech.ActorToIndex := br.ReadInteger();  // speaking to id
    Speech.ActorToValue := GetConString(br); // speaking to name

    Speech.TextLine := GetConString(br); // speech text
    Speech.mp3File := GetConString(br); // Sound

    Speech.bContinued := GetConLongBool(br); // not implemented in game
    Speech.bBold := GetConLongBool(br);
    Speech.SpeechFont := br.ReadInteger();
end;

procedure DeSerializeChoice(var br: TBinaryReader; var Choice: TConEventChoice; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        Choice.EventIdx := br.ReadInteger();
        Choice.unknown1 := br.ReadInteger();
        Choice.EventType := TEventType(br.ReadInteger());
        Choice.EventLabel := GetConString(br);
    end;

    // ET_Choice
    Choice.choice_unk0 := br.ReadInteger(); // choice_unk0
    Choice.bClearScreen := GetConLongBool(br);
    Choice.NumChoices := br.ReadInteger();
    Choice.NumFlagsRefs := Choice.NumChoices; // for event item height

    SetLength(Choice.Choices, Choice.NumChoices);

    for var cl := 0 to Choice.NumChoices -1 do
    begin
        Choice.Choices[cl] := TChoiceItemObject.Create(); // create choice item object
        Choice.Choices[cl].Index := br.ReadInteger();

        Choice.Choices[cl].textline := GetConString(br);

        Choice.Choices[cl].bDisplayAsSpeech := GetConLongBool(br);

        var skillNameId := br.ReadInteger();

        if skillNameId = -1 then  // Skill is NOT required
        begin
            Choice.Choices[cl].bSkillNeeded := skillNameId; // for XML version

            Choice.Choices[cl].GoToLabel := GetConString(br); //choice Label
            Choice.Choices[cl].mp3 := GetConString(br); // soundPath

            var numFlagRefList := br.ReadInteger(); // numFlagRefList
            SetLength(Choice.Choices[cl].RequiredFlags, numFlagRefList); // Set array size

            for var FLR := 0 to numFlagRefList -1 do // flags, required by this choice
            begin
                Choice.Choices[cl].RequiredFlags[FLR].flagIndex := br.ReadInteger();
                Choice.Choices[cl].RequiredFlags[FLR].flagName := GetConString(br);
                Choice.Choices[cl].RequiredFlags[FLR].flagValue := GetConLongBool(br);
                Choice.Choices[cl].RequiredFlags[FLR].flagExpiration := br.ReadInteger();
            end;
        end;

        if skillNameId >= 0 then // Requires skill. Did anyone ever used this feature?
        begin
            Choice.Choices[cl].Skill := GetConString(br);
            Choice.Choices[cl].SkillLevel := br.ReadInteger();
            Choice.Choices[cl].GoToLabel := GetConString(br);
            Choice.Choices[cl].mp3 := GetConString(br);

            var numFlagRefList1 := br.ReadInteger();
            SetLength(Choice.Choices[cl].RequiredFlags, numFlagRefList1);

            for var FLR1 := 0 to numFlagRefList1 -1 do // flags, required by this choice
            begin
                Choice.Choices[cl].RequiredFlags[FLR1].flagIndex := br.ReadInteger();
                Choice.Choices[cl].RequiredFlags[FLR1].flagName := GetConString(br);
                Choice.Choices[cl].RequiredFlags[FLR1].flagValue := GetConLongBool(br);
                Choice.Choices[cl].RequiredFlags[FLR1].flagExpiration := br.ReadInteger();
            end;
        end;
    end;
end;

procedure DeSerializeSetFlag(var br: TBinaryReader; var SetFlag: TConEventSetFlag; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        SetFlag.EventIdx := br.ReadInteger();
        SetFlag.unknown1 := br.ReadInteger();
        SetFlag.EventType := TEventType(br.ReadInteger());
        SetFlag.EventLabel := GetConString(br);
    end;

    var numFlags := br.ReadInteger();

    setFlag.numFlags := numFlags;
    SetLength(setFlag.SetFlags, numFlags);

    for var SF := 0 to numFlags -1 do
    begin
        setFlag.SetFlags[SF].flagIndex := br.ReadInteger();
        setFlag.SetFlags[SF].flagName := GetConString(br);
        setFlag.SetFlags[SF].flagValue := GetConLongBool(br);
        setFlag.SetFlags[SF].flagExpiration := br.ReadInteger();
    end;
end;

procedure DeSerializeCheckFlag(var br: TBinaryReader; var CheckFlag: TConEventCheckFlag; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        CheckFlag.EventIdx := br.ReadInteger();
        CheckFlag.unknown1 := br.ReadInteger();
        CheckFlag.EventType := TEventType(br.ReadInteger());
        CheckFlag.EventLabel := GetConString(br);
    end;

    var numFlags := br.ReadInteger();

    CheckFlag.numFlags := numFlags;
    SetLength(CheckFlag.FlagsToCheck, numFlags);

    for var CF := 0 to numFlags -1 do
    begin
        CheckFlag.FlagsToCheck[CF].flagIndex := br.ReadInteger();
        CheckFlag.FlagsToCheck[CF].flagName := GetConString(br);
        CheckFlag.FlagsToCheck[CF].flagValue := GetConLongBool(br);
        CheckFlag.FlagsToCheck[CF].flagExpiration := br.ReadInteger();
    end;

    CheckFlag.GotoLabel := GetConString(br);
end;

procedure DeSerializeCheckObject(var br: TBinaryReader; var CheckObj: TConEventCheckObject; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        CheckObj.EventIdx := br.ReadInteger();
        CheckObj.unknown1 := br.ReadInteger();
        CheckObj.EventType := TEventType(br.ReadInteger());
        CheckObj.EventLabel := GetConString(br);
    end;

    CheckObj.ObjectIndex := br.ReadInteger(); // id
    CheckObj.ObjectValue := GetConString(br); // string: size and data

    CheckObj.GoToLabel := GetConString(br); // failLabel
end;

procedure DeSerializeTransferObject(var br: TBinaryReader; var TransObj: TConEventTransferObject; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        TransObj.EventIdx := br.ReadInteger();
        TransObj.unknown1 := br.ReadInteger();
        TransObj.EventType := TEventType(br.ReadInteger());
        TransObj.EventLabel := GetConString(br);
    end;

    TransObj.ObjectIndex := br.ReadInteger(); //objectName/id
    TransObj.ObjectValue := GetConString(br); // objectName/name

    TransObj.Amount := br.ReadInteger(); // TransferCountOpt (?)

    TransObj.ActorFromIndex := br.ReadInteger(); // fromName/id
    TransObj.ActorFromValue := GetConString(br); // fromName/name

    TransObj.ActorToIndex := br.ReadInteger(); // toName/id
    TransObj.ActorToValue := GetConString(br); // toName/value

    TransObj.GotoLabel := GetConString(br);  // failLabel
end;

procedure DeSerializeMoveCamera(var br: TBinaryReader; var MoveCam: TConEventMoveCamera; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        MoveCam.EventIdx := br.ReadInteger();
        MoveCam.unknown1 := br.ReadInteger();
        MoveCam.EventType := TEventType(br.ReadInteger());
        MoveCam.EventLabel := GetConString(br);
    end;

    MoveCam.CameraType := TCameraTypes(br.ReadInteger());
    MoveCam.CameraAngle := TCameraPositions(br.ReadInteger());
    br.ReadInteger(); // stub
end;

procedure DeSerializeAnimation(var br: TBinaryReader; var NewAnim: TConEventAnimation; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewAnim.EventIdx := br.ReadInteger();
        NewAnim.unknown1 := br.ReadInteger();
        NewAnim.EventType := TEventType(br.ReadInteger());
        NewAnim.EventLabel := GetConString(br);
    end;

    NewAnim.ActorIndex := br.ReadInteger();
    NewAnim.ActorValue := GetConString(br);
    NewAnim.AnimSequence := GetConString(br);

    // loop = 0, Once = 1
    NewAnim.bAnimPlayOnce := GetConLongBool(br);
    NewAnim.AnimPlayForSeconds := br.ReadInteger();
    NewAnim.bAnimWaitToFinish := GetConLongBool(br);
end;

procedure DeSerializeTrade(var br: TBinaryReader; var NewTrade: TConEventTrade; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewTrade.EventIdx := br.ReadInteger();
        NewTrade.unknown1 := br.ReadInteger();
        NewTrade.EventType := TEventType(br.ReadInteger());
        NewTrade.EventLabel := GetConString(br);
    end;

    NewTrade.TradeActorIndex := br.ReadInteger();
    NewTrade.TradeActorValue := GetConString(br);
end;

procedure DeSerializeJump(var br: TBinaryReader; var NewJump: TConEventJump; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewJump.EventIdx := br.ReadInteger();
        NewJump.unknown1 := br.ReadInteger();
        NewJump.EventType := TEventType(br.ReadInteger());
        NewJump.EventLabel := GetConString(br);
    end;

    NewJump.gotoLabel := GetConString(br);
    NewJump.conversationId := br.ReadInteger();
end;

procedure DeSerializeRandom(var br: TBinaryReader; var NewRandom: TConEventRandom; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewRandom.EventIdx := br.ReadInteger();
        NewRandom.unknown1 := br.ReadInteger();
        NewRandom.EventType := TEventType(br.ReadInteger());
        NewRandom.EventLabel := GetConString(br);
    end;

    NewRandom.numLabels := br.ReadInteger();
    SetLength(NewRandom.GoToLabels, NewRandom.numLabels);

    for var RL := 0 to NewRandom.numLabels -1 do // labels
        NewRandom.GoToLabels[RL] := GetConString(br);

    NewRandom.bCycle := GetConLongBool(br);
    NewRandom.bCycleOnce := GetConLongBool(br);
    NewRandom.bCycleRandom := GetConLongBool(br);
end;

procedure DeSerializeTrigger(var br: TBinaryReader; var NewTrigger: TConEventTrigger; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewTrigger.EventIdx := br.ReadInteger();
        NewTrigger.unknown1 := br.ReadInteger();
        NewTrigger.EventType := TEventType(br.ReadInteger());
        NewTrigger.EventLabel := GetConString(br);
    end;

    NewTrigger.TriggerTag := GetConString(br);
end;

procedure DeSerializeAddGoal(var br: TBinaryReader; var NewAddGoal: TConEventAddGoal; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewAddGoal.EventIdx := br.ReadInteger();
        NewAddGoal.unknown1 := br.ReadInteger();
        NewAddGoal.EventType := TEventType(br.ReadInteger());
        NewAddGoal.EventLabel := GetConString(br);
    end;

    NewAddGoal.GoalName := GetConString(br); // goalNameString
    NewAddGoal.bComplete := GetConLongBool(br);

    if NewAddGoal.bComplete = False then // Если цель выполнена, то дальше данных уже нет, выходим
    begin
        NewAddGoal.GoalText := GetConString(br);
        NewAddGoal.bPrimaryGoal := GetConLongBool(br);
    end;
end;

procedure DeSerializeAddNote(var br: TBinaryReader; var NewAddNote: TConEventAddNote; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewAddNote.EventIdx := br.ReadInteger();
        NewAddNote.unknown1 := br.ReadInteger();
        NewAddNote.EventType := TEventType(br.ReadInteger());
        NewAddNote.EventLabel := GetConString(br);
    end;

    NewAddNote.TextLine := GetConString(br);
end;

procedure DeSerializeAddSkillPts(var br: TBinaryReader; var NewAddSkillPts: TConEventAddSkillPoints; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewAddSkillPts.EventIdx := br.ReadInteger();
        NewAddSkillPts.unknown1 := br.ReadInteger();
        NewAddSkillPts.EventType := TEventType(br.ReadInteger());
        NewAddSkillPts.EventLabel := GetConString(br);
    end;

    NewAddSkillPts.Points := br.ReadInteger(); // pointsToAdd
    NewAddSkillPts.TextLine := GetConString(br);
end;

procedure DeSerializeAddCredits(var br: TBinaryReader; var NewAddCredits: TConEventAddCredits; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewAddCredits.EventIdx := br.ReadInteger();
        NewAddCredits.unknown1 := br.ReadInteger();
        NewAddCredits.EventType := TEventType(br.ReadInteger());
        NewAddCredits.EventLabel := GetConString(br);
    end;

    NewAddCredits.Credits := br.ReadInteger(); // creditsToAdd
end;

procedure DeSerializeCheckPersona(var br: TBinaryReader; var NewCheckPersona: TConEventCheckPersona; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewCheckPersona.EventIdx := br.ReadInteger();
        NewCheckPersona.unknown1 := br.ReadInteger();
        NewCheckPersona.EventType := TEventType(br.ReadInteger());
        NewCheckPersona.EventLabel := GetConString(br);
    end;

    NewCheckPersona.AttrToCheck := TPersonaTypes(br.ReadInteger()); // personaType
    NewCheckPersona.Condition := TConditions(br.ReadInteger());
    NewCheckPersona.CheckValue := br.ReadInteger();
    NewCheckPersona.CheckGoToLabel := GetConString(br); // jumpLabel
end;

procedure DeSerializeComment(var br: TBinaryReader; var NewComment: TConEventComment; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewComment.EventIdx := br.ReadInteger();
        NewComment.unknown1 := br.ReadInteger();
        NewComment.EventType := TEventType(br.ReadInteger());
        NewComment.EventLabel := GetConString(br);
    end;

    NewComment.TextLine := GetConString(br);
end;

procedure DeSerializeEnd(var br: TBinaryReader; var NewEnd: TConEventEnd; bSkipClipboardId: Boolean = False);
begin
    if bSkipClipboardId = False then
    begin
        var Temp := GetConString(br); // skip the header for clipboard

        // first 4
        NewEnd.EventIdx := br.ReadInteger();
        NewEnd.unknown1 := br.ReadInteger();
        NewEnd.EventType := TEventType(br.ReadInteger());
        NewEnd.EventLabel := GetConString(br);
    end;
end;

procedure DeSerializeConversation(var br: TBinaryReader; var NewConvo: TConversation); // Read conversation from clipboard using BinaryReader
begin
    var tempId := GetConString(br); // Don't forget the clipboard id...

    NewConvo.unknown0 := br.ReadInteger();
    NewConvo.id := br.ReadInteger();

    NewConvo.conName := GetConString(br);

    NewConvo.conDescription := GetConString(br);
    frmMain.AddLog('Description: ' + NewConvo.conDescription);


    var conCreatedOnDouble := br.ReadDouble(); // createdOn
    NewConvo.conCreatedByDate := DateTimeToStr(DoubleToDateTime(conCreatedOnDouble));
    frmMain.AddLog('Conversation createdOn: ' + conCreatedOnDouble.ToString + ' converted to: ' + NewConvo.conCreatedByDate);

    NewConvo.conCreatedByName := GetConString(br); // createdBy
    frmMain.AddLog('Conversation createdBy: ' + NewConvo.conCreatedByName);


    var conLastModifOnDouble := br.ReadDouble(); //lastModifiedOn
    NewConvo.conModifiedByDate := DateTimeToStr(DoubleToDateTime(conLastModifOnDouble));
    frmMain.AddLog('Conversation lastModifiedOn: ' + conLastModifOnDouble.ToString + ' converted to: ' + NewConvo.conModifiedByDate);

    NewConvo.conModifiedByName := GetConString(br);  // lastModifiedBy
    frmMain.AddLog('Conversation lastModifiedBy: ' + NewConvo.conModifiedByName);

    var conOwnerIndexInt := br.ReadInteger(); // ownerName index(id)
    NewConvo.conOwnerIndex := conOwnerIndexInt;

    NewConvo.conOwnerName := GetConString(br); // ownerName
    frmMain.AddLog('Conversation Owner: ' + NewConvo.conOwnerName + ' index: ' + conOwnerIndexInt.ToString);


    var bDataLinkCon := br.ReadInteger(); // LongBool, 4 bytes
    NewConvo.bInfoLink := bDataLinkCon.ToBoolean;
    frmMain.AddLog('bDataLinkCon = ' + BoolToStr(NewConvo.bInfoLink, True));


    NewConvo.conNotes := GetConString(br);
    if NewConvo.conNotes = '' then
        frmMain.AddLog('Conversation Notes: ' + strEmptyValue)
        else frmMain.AddLog('Conversation Notes: ' + NewConvo.conNotes);

    var bDisplayOnce := br.ReadInteger();
    NewConvo.bOnlyOnce := bDisplayOnce.ToBoolean;
    frmMain.AddLog('bDisplayOnce = ' + BoolToStr(NewConvo.bOnlyOnce, True));

    var bFirstPerson := br.ReadInteger();
    NewConvo.bFirstPerson := bFirstPerson.ToBoolean;
    frmMain.AddLog('bFirstPerson = ' + BoolToStr(NewConvo.bFirstPerson, True));

    var bNonInteractive := br.ReadInteger();
    NewConvo.bNonInteract := bNonInteractive.ToBoolean;
    frmMain.AddLog('bNonInteractive = ' + BoolToStr(NewConvo.bNonInteract, True));

    var bRandomCam := br.ReadInteger();
    NewConvo.bRandomCamera := bRandomCam.ToBoolean;
    frmMain.AddLog('bRandomCamera = ' + BoolToStr(NewConvo.bRandomCamera, True));

    var bCanbeInterrupted := br.ReadInteger();
    NewConvo.bCanInterrupt := bCanbeInterrupted.ToBoolean;
    frmMain.AddLog('bCanBeInterrupted = ' + BoolToStr(NewConvo.bCanInterrupt, True));

    var bCannotBeInterrupted := br.ReadInteger();
    NewConvo.bCannotInterrupt := bCannotBeInterrupted.ToBoolean;
    frmMain.AddLog('bCannotBeInterrupted = ' + BoolToStr(NewConvo.bCannotInterrupt, True));

    var bInvokeBump := br.ReadInteger();
    NewConvo.bPCBumps := bInvokeBump.ToBoolean;
    frmMain.AddLog('bInvokeBump = ' + BoolToStr(NewConvo.bPCBumps, True));

    var bInvokeFrob := br.ReadInteger();
    NewConvo.bPCFrobs := bInvokeFrob.ToBoolean;
    frmMain.AddLog('bInvokeFrob = ' + BoolToStr(NewConvo.bPCFrobs, True));

    var bInvokeSight := br.ReadInteger();
    NewConvo.bNPCSees := bInvokeSight.ToBoolean;
    frmMain.AddLog('bInvokeSight = ' + BoolToStr(NewConvo.bNPCSees, True));

    var bInvokeRadius := br.ReadInteger();
    NewConvo.bNPCEnters := bInvokeRadius.ToBoolean;
    frmMain.AddLog('bInvokeRadius = ' + BoolToStr(NewConvo.bNPCEnters, True));

    var InvokeRadiusInt := br.ReadInteger();
    NewConvo.distance := InvokeRadiusInt;
    frmMain.AddLog('InvokeRadius = ' + InvokeRadiusInt.ToString);

    var numFlagRefList := br.ReadInteger();
    frmMain.AddLog('numFlagRefList = ' + numFlagRefList.ToString);

    SetLength(NewConvo.conDependsOnFlags, numFlagRefList); // set array length

    for var fr := 0 to numFlagRefList -1 do
    begin
        NewConvo.conDependsOnFlags[fr].flagIndex := br.ReadInteger();

        var cfRefNameSize := br.ReadInteger();
        var cfRefNameBytes := br.ReadBytes(cfRefNameSize);
        NewConvo.conDependsOnFlags[fr].flagName := TEncoding.ANSI.GetString(cfRefNameBytes);

        var cfRefValue := br.ReadInteger();
        NewConvo.conDependsOnFlags[fr].flagValue := cfRefValue.ToBoolean;

        var cfRefExpiration := br.ReadInteger();

        frmMain.AddLog(#9+'conFlagRef: index = ' + NewConvo.conDependsOnFlags[fr].flagIndex.ToString +
               ' Name = ' +  NewConvo.conDependsOnFlags[fr].flagName +
               ' Value = ' + BoolToStr(NewConvo.conDependsOnFlags[fr].flagValue, True) +
               ' Expiration = ' + cfRefExpiration.ToString);
    end;

    NewConvo.numEventList := br.ReadInteger(); // now events...
    frmMain.AddLog('numEventList = ' + NewConvo.numEventList.ToString);
    SetLength(NewConvo.Events, NewConvo.numEventList); // set array length
    frmMain.AddLog('Events:');

    for var NEL := 0 to NewConvo.numEventList -1 do
    begin
        var tempEvent: TConEvent;

        var EventIdx := br.ReadInteger();
        var Unknown1 := br.ReadInteger();
        var intEventType := br.ReadInteger();
        var eventLabel := GetConString(br);


        if intEventType = Ord(ET_Speech) then
        begin
            frmMain.AddLog('Reading event: ET_Speech, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventSpeech.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeSpeech(br, TConEventSpeech(tempEvent), true);
        end;

        if intEventType = Ord(ET_Choice) then
        begin
            frmMain.AddLog('Reading event: ET_Choice, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventChoice.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeChoice(br, TConEventChoice(tempEvent), true);
        end;

        if intEventType = Ord(ET_SetFlag) then
        begin
            frmMain.AddLog('Reading event: ET_SetFlag, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventSetFlag.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeSetFlag(br, TConEventSetFlag(tempEvent), true);
        end;

        if intEventType = Ord(ET_CheckFlag) then
        begin
            frmMain.AddLog('Reading event: ET_CheckFlag, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventCheckFlag.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeCheckFlag(br, TConEventCheckFlag(tempEvent), true);
        end;

        if intEventType = Ord(ET_CheckObject) then
        begin
            frmMain.AddLog('Reading event: ET_CheckObject, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventCheckObject.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeCheckObject(br, TConEventCheckObject(tempEvent), true);
        end;

        if intEventType = Ord(ET_TransferObject) then
        begin
            frmMain.AddLog('Reading event: ET_TransferObject, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventTransferObject.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeTransferObject(br, TConEventTransferObject(tempEvent), true);
        end;

        if intEventType = Ord(ET_MoveCamera) then
        begin
            frmMain.AddLog('Reading event: ET_MoveCamera, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventMoveCamera.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeMoveCamera(br, TConEventMoveCamera(tempEvent), true);
        end;

        if intEventType = Ord(ET_Animation) then
        begin
            frmMain.AddLog('Reading event: ET_Animation, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventAnimation.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeAnimation(br, TConEventAnimation(tempEvent), true);
        end;

        if intEventType = Ord(ET_Trade) then
        begin
            frmMain.AddLog('Reading event: ET_Trade, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventTrade.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeTrade(br, TConEventTrade(tempEvent), True);
        end;

        if intEventType = Ord(ET_Jump) then
        begin
            frmMain.AddLog('Reading event: ET_Jump, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventJump.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeJump(br, TConEventJump(tempEvent), True);
        end;

        if intEventType = Ord(ET_Random) then
        begin
            frmMain.AddLog('Reading event: ET_Random, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventRandom.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeRandom(br, TConEventRandom(tempEvent), True);
        end;

        if intEventType = Ord(ET_Trigger) then
        begin
            frmMain.AddLog('Reading event: ET_Trigger, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventTrigger.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeTrigger(br, TConEventTrigger(tempEvent), True);
        end;

        if intEventType = Ord(ET_AddGoal) then
        begin
            frmMain.AddLog('Reading event: ET_AddGoal, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventAddGoal.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeAddGoal(br, TConEventAddGoal(tempEvent), true);
        end;

        if intEventType = Ord(ET_AddNote) then
        begin
            frmMain.AddLog('Reading event: ET_AddNote, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventAddNote.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeAddNote(br, TConEventAddNote(tempEvent), True);
        end;

        if intEventType = Ord(ET_AddSkillPoints) then
        begin
            frmMain.AddLog('Reading event: ET_AddSkillPoints, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventAddSkillPoints.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeAddSkillPts(br, TConEventAddSkillPoints(tempEvent), True);
        end;

        if intEventType = Ord(ET_AddCredits) then
        begin
            frmMain.AddLog('Reading event: ET_AddCredits, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventAddCredits.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeAddCredits(br, TConEventAddCredits(tempEvent), True);
        end;

        if intEventType = Ord(ET_CheckPersona) then
        begin
            frmMain.AddLog('Reading event: ET_CheckPersona, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventCheckPersona.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeCheckPersona(br, TConEventCheckPersona(tempEvent), True);
        end;

        if intEventType = Ord(ET_Comment) then
        begin
            frmMain.AddLog('Reading event: ET_Comment, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventComment.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeComment(br, TConEventComment(tempEvent), True);
        end;

        if intEventType = Ord(ET_End) then
        begin
            frmMain.AddLog('Reading event: ET_End, position: 0x'+ br.BaseStream.Position.ToHexString(1));
            tempEvent := TConEventEnd.Create();

            TempEvent.EventIdx := EventIdx;
            TempEvent.unknown1 := Unknown1;
            TempEvent.EventType := TEventType(intEventType);
            TempEvent.EventLabel := eventLabel;

            DeSerializeEnd(br, TConEventEnd(tempEvent), True);
        end;

        NewConvo.Events[NEL] := tempEvent;
    end;
end;


end.
