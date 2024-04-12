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
procedure WriteSpeech(Speech: TConEventSpeech; var bw: TBinaryWriter);
procedure WriteChoice(Choice: TConEventChoice; var bw: TBinaryWriter);

procedure WriteSetFlag(SetFlag: TConEventSetFlag; var bw: TBinaryWriter);
procedure WriteCheckFlag(CheckFlag: TConEventCheckFlag; var bw: TBinaryWriter);

procedure WriteCheckObject(CheckObject: TConEventCheckObject; var bw: TBinaryWriter);
procedure WriteTransObject(TransObject: TConEventTransferObject; var bw: TBinaryWriter);

procedure WriteMoveCam(MoveCam: TConEventMoveCamera; var bw: TBinaryWriter);
procedure WriteAnim(Anim: TConEventAnimation; var bw: TBinaryWriter);

procedure WriteTrade(Trade: TConEventTrade; var bw: TBinaryWriter);
procedure WriteJump(Jump: TConEventJump; var bw: TBinaryWriter);

procedure WriteRandom(Rand: TConEventRandom; var bw: TBinaryWriter);
procedure WriteTrigger(Trigger: TConEventTrigger; var bw: TBinaryWriter);

procedure WriteAddGoal(AddGoal: TConEventAddGoal; var bw: TBinaryWriter);
procedure WriteAddNote(Note: TConEventAddNote; var bw: TBinaryWriter);

procedure WriteAddSkillPts(SkillPts: TConEventAddSkillPoints; var bw: TBinaryWriter);
procedure WriteAddCredits(Credits: TConEventAddCredits; var bw: TBinaryWriter);

procedure WriteCheckPersona(CheckPersona: TConEventCheckPersona; var bw: TBinaryWriter);
procedure WriteComment(Comment: TConEventComment; var bw: TBinaryWriter);

procedure WriteEnd(EventEnd: TConEventEnd; var bw: TBinaryWriter);

procedure WriteFirst4Fields(Event: TConEvent; var bw: TBinaryWriter);

// to paste events from clipboard
procedure BuildSpeech(var br: TBinaryReader; var Speech: TConEventSpeech); // build event from binary data
procedure BuildChoice(var br: TBinaryReader; var Choice: TConEventChoice);
procedure BuildSetFlag(var br: TBinaryReader; var SetFlag: TConEventSetFlag);
procedure BuildCheckFlag(var br: TBinaryReader; var CheckFlag: TConEventCheckFlag);
procedure BuildCheckObject(var br: TBinaryReader; var CheckObj: TConEventCheckObject);
procedure BuildTransferObject(var br: TBinaryReader; var TransObj: TConEventTransferObject);
procedure BuildMoveCamera(var br: TBinaryReader; var MoveCam: TConEventMoveCamera);
procedure BuildAnimation(var br: TBinaryReader; var NewAnim: TConEventAnimation);
procedure BuildTrade(var br: TBinaryReader; var NewTrade: TConEventTrade);
procedure BuildJump(var br: TBinaryReader; var NewJump: TConEventJump);
procedure BuildRandom(var br: TBinaryReader; var NewRandom: TConEventRandom);
procedure BuildTrigger(var br: TBinaryReader; var NewTrigger: TConEventTrigger);
procedure BuildAddGoal(var br: TBinaryReader; var NewAddGoal: TConEventAddGoal);
procedure BuildAddNote(var br: TBinaryReader; var NewAddNote: TConEventAddNote);
procedure BuildAddSkillPts(var br: TBinaryReader; var NewAddSkillPts: TConEventAddSkillPoints);
procedure BuildAddCredits(var br: TBinaryReader; var NewAddCredits: TConEventAddCredits);
procedure BuildCheckPersona(var br: TBinaryReader; var NewCheckPersona: TConEventCheckPersona);
procedure BuildComment(var br: TBinaryReader; var NewComment: TConEventComment);
procedure BuildEnd(var br: TBinaryReader; var NewEnd: TConEventEnd);


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

    WriteInteger(bw, Choice.unk0); // unk0
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

procedure WriteSetFlag(SetFlag: TConEventSetFlag; var bw: TBinaryWriter);
begin
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

procedure WriteCheckFlag(CheckFlag: TConEventCheckFlag; var bw: TBinaryWriter);
begin
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

procedure WriteCheckObject(CheckObject: TConEventCheckObject; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_CheckObject_Caption); // id for clipboard

    WriteFirst4Fields(CheckObject, bw);

    WriteInteger(bw, CheckObject.ObjectIndex); // objectName.id
    WriteString(bw, CheckObject.ObjectValue); // objectName.Name
    WriteString(bw, CheckObject.GoToLabel); // failLabel
end;

procedure WriteTransObject(TransObject: TConEventTransferObject; var bw: TBinaryWriter);
begin
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

procedure WriteMoveCam(MoveCam: TConEventMoveCamera; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_MoveCamera_Caption); // id for clipboard

    WriteFirst4Fields(MoveCam, bw);

    WriteInteger(bw, Ord(MoveCam.CameraType)); // cameraType

    if MoveCam.CameraType = CT_Random then
        WriteInteger(bw, 0)
    else
        WriteInteger(bw, Ord(MoveCam.CameraAngle)); // cameraPosition

    WriteInteger(bw, -1); // cameraTransition was not implemented anyway, so just write -1
end;

procedure WriteAnim(Anim: TConEventAnimation; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Animation_Caption); // id for clipboard

    WriteFirst4Fields(Anim, bw);

    WriteInteger(bw, Anim.ActorIndex); // eventOwnerName.id
    WriteString(bw, Anim.ActorValue); // eventOwnerName.Name
    WriteString(bw, Anim.AnimSequence); // seqStr
    WriteLongBool(bw, Anim.bAnimPlayOnce); // playMode.
    WriteInteger(bw, Anim.AnimPlayForSeconds); // This field is missing in ConEventAnimation.uc (by default)
    WriteLongBool(bw, Anim.bAnimWaitToFinish); // bFinishAnim
end;

procedure WriteTrade(Trade: TConEventTrade; var bw: TBinaryWriter);
begin
    // not implemented...
end;

procedure WriteJump(Jump: TConEventJump; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Jump_Caption); // id for clipboard

    WriteFirst4Fields(Jump, bw);

    WriteString(bw, Jump.gotoLabel); // jumpLabel
    WriteInteger(bw, Jump.conversationId); // conId
end;

procedure WriteRandom(Rand: TConEventRandom; var bw: TBinaryWriter);
begin
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

procedure WriteTrigger(Trigger: TConEventTrigger; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Trigger_Caption); // id for clipboard

    WriteFirst4Fields(Trigger, bw);

    WriteString(bw, Trigger.TriggerTag);
end;

procedure WriteAddGoal(AddGoal: TConEventAddGoal; var bw: TBinaryWriter);
begin
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

procedure WriteAddNote(Note: TConEventAddNote; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_AddNote_Caption); // id for clipboard

    WriteFirst4Fields(Note, bw);

    WriteString(bw, Note.TextLine); // noteText
end;

procedure WriteAddSkillPts(SkillPts: TConEventAddSkillPoints; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_AddSkillPoints_Caption); // id for clipboard

    WriteFirst4Fields(SkillPts, bw);

    WriteInteger(bw, SkillPts.Points); // pointsToAdd
    WriteString(bw, SkillPts.TextLine); // awardMessage
end;

procedure WriteAddCredits(Credits: TConEventAddCredits; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_AddCredits_Caption); // id for clipboard

    WriteFirst4Fields(Credits, bw);

    WriteInteger(bw, Credits.Credits);
end;

procedure WriteCheckPersona(CheckPersona: TConEventCheckPersona; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_CheckPersona_Caption); // id for clipboard

    WriteFirst4Fields(CheckPersona, bw);

    WriteInteger(bw, Ord(CheckPersona.AttrToCheck)); // personaType
    WriteInteger(bw, Ord(CheckPersona.Condition));
    WriteInteger(bw, CheckPersona.CheckValue);
    WriteString(bw, CheckPersona.CheckGoToLabel); // JumpLabel
end;

procedure WriteComment(Comment: TConEventComment; var bw: TBinaryWriter);
begin
    WriteString(bw, ET_Comment_Caption); // id for clipboard

    WriteFirst4Fields(Comment, bw);

    WriteString(bw, Comment.TextLine); // comment
end;

procedure WriteEnd(EventEnd: TConEventEnd; var bw: TBinaryWriter);
begin
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

procedure BuildSpeech(var br: TBinaryReader; var Speech: TConEventSpeech); // build event from binary data
begin
    GetConString(br); // skip the header for clipboard

    // first 4
    Speech.EventIdx := br.ReadInteger();
    Speech.unknown1 := br.ReadInteger();
    Speech.EventType := TEventType(br.ReadInteger());
    Speech.EventLabel := GetConString(br);

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

procedure BuildChoice(var br: TBinaryReader; var Choice: TConEventChoice);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    Choice.EventIdx := br.ReadInteger();
    Choice.unknown1 := br.ReadInteger();
    Choice.EventType := TEventType(br.ReadInteger());
    Choice.EventLabel := GetConString(br);

    // ET_Choice
    Choice.unk0 := br.ReadInteger(); // unk0
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

procedure BuildSetFlag(var br: TBinaryReader; var SetFlag: TConEventSetFlag);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    SetFlag.EventIdx := br.ReadInteger();
    SetFlag.unknown1 := br.ReadInteger();
    SetFlag.EventType := TEventType(br.ReadInteger());
    SetFlag.EventLabel := GetConString(br);

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

procedure BuildCheckFlag(var br: TBinaryReader; var CheckFlag: TConEventCheckFlag);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    CheckFlag.EventIdx := br.ReadInteger();
    CheckFlag.unknown1 := br.ReadInteger();
    CheckFlag.EventType := TEventType(br.ReadInteger());
    CheckFlag.EventLabel := GetConString(br);

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

procedure BuildCheckObject(var br: TBinaryReader; var CheckObj: TConEventCheckObject);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    CheckObj.EventIdx := br.ReadInteger();
    CheckObj.unknown1 := br.ReadInteger();
    CheckObj.EventType := TEventType(br.ReadInteger());
    CheckObj.EventLabel := GetConString(br);

    CheckObj.ObjectIndex := br.ReadInteger(); // id
    CheckObj.ObjectValue := GetConString(br); // string: size and data

    CheckObj.GoToLabel := GetConString(br); // failLabel
end;

procedure BuildTransferObject(var br: TBinaryReader; var TransObj: TConEventTransferObject);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    TransObj.EventIdx := br.ReadInteger();
    TransObj.unknown1 := br.ReadInteger();
    TransObj.EventType := TEventType(br.ReadInteger());
    TransObj.EventLabel := GetConString(br);

    TransObj.ObjectIndex := br.ReadInteger(); //objectName/id
    TransObj.ObjectValue := GetConString(br); // objectName/name

    TransObj.Amount := br.ReadInteger(); // TransferCountOpt (?)

    TransObj.ActorFromIndex := br.ReadInteger(); // fromName/id
    TransObj.ActorFromValue := GetConString(br); // fromName/name

    TransObj.ActorToIndex := br.ReadInteger(); // toName/id
    TransObj.ActorToValue := GetConString(br); // toName/value

    TransObj.GotoLabel := GetConString(br);  // failLabel
end;

procedure BuildMoveCamera(var br: TBinaryReader; var MoveCam: TConEventMoveCamera);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    MoveCam.EventIdx := br.ReadInteger();
    MoveCam.unknown1 := br.ReadInteger();
    MoveCam.EventType := TEventType(br.ReadInteger());
    MoveCam.EventLabel := GetConString(br);

    MoveCam.CameraType := TCameraTypes(br.ReadInteger());
    MoveCam.CameraAngle := TCameraPositions(br.ReadInteger());
    br.ReadInteger(); // stub
end;

procedure BuildAnimation(var br: TBinaryReader; var NewAnim: TConEventAnimation);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewAnim.EventIdx := br.ReadInteger();
    NewAnim.unknown1 := br.ReadInteger();
    NewAnim.EventType := TEventType(br.ReadInteger());
    NewAnim.EventLabel := GetConString(br);

    NewAnim.ActorIndex := br.ReadInteger();
    NewAnim.ActorValue := GetConString(br);
    NewAnim.AnimSequence := GetConString(br);

    // loop = 0, Once = 1
    NewAnim.bAnimPlayOnce := GetConLongBool(br);
    NewAnim.AnimPlayForSeconds := br.ReadInteger();
    NewAnim.bAnimWaitToFinish := GetConLongBool(br);
end;

procedure BuildTrade(var br: TBinaryReader; var NewTrade: TConEventTrade);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewTrade.EventIdx := br.ReadInteger();
    NewTrade.unknown1 := br.ReadInteger();
    NewTrade.EventType := TEventType(br.ReadInteger());
    NewTrade.EventLabel := GetConString(br);

    NewTrade.TradeActorIndex := br.ReadInteger();
    NewTrade.TradeActorValue := GetConString(br);
end;

procedure BuildJump(var br: TBinaryReader; var NewJump: TConEventJump);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewJump.EventIdx := br.ReadInteger();
    NewJump.unknown1 := br.ReadInteger();
    NewJump.EventType := TEventType(br.ReadInteger());
    NewJump.EventLabel := GetConString(br);

    NewJump.gotoLabel := GetConString(br);
    NewJump.conversationId := br.ReadInteger();
end;

procedure BuildRandom(var br: TBinaryReader; var NewRandom: TConEventRandom);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewRandom.EventIdx := br.ReadInteger();
    NewRandom.unknown1 := br.ReadInteger();
    NewRandom.EventType := TEventType(br.ReadInteger());
    NewRandom.EventLabel := GetConString(br);

    NewRandom.numLabels := br.ReadInteger();
    SetLength(NewRandom.GoToLabels, NewRandom.numLabels);

    for var RL := 0 to NewRandom.numLabels -1 do // labels
        NewRandom.GoToLabels[RL] := GetConString(br);

    NewRandom.bCycle := GetConLongBool(br);
    NewRandom.bCycleOnce := GetConLongBool(br);
    NewRandom.bCycleRandom := GetConLongBool(br);
end;

procedure BuildTrigger(var br: TBinaryReader; var NewTrigger: TConEventTrigger);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewTrigger.EventIdx := br.ReadInteger();
    NewTrigger.unknown1 := br.ReadInteger();
    NewTrigger.EventType := TEventType(br.ReadInteger());
    NewTrigger.EventLabel := GetConString(br);

    NewTrigger.TriggerTag := GetConString(br);
end;

procedure BuildAddGoal(var br: TBinaryReader; var NewAddGoal: TConEventAddGoal);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewAddGoal.EventIdx := br.ReadInteger();
    NewAddGoal.unknown1 := br.ReadInteger();
    NewAddGoal.EventType := TEventType(br.ReadInteger());
    NewAddGoal.EventLabel := GetConString(br);

    NewAddGoal.GoalName := GetConString(br); // goalNameString
    NewAddGoal.bComplete := GetConLongBool(br);

    if NewAddGoal.bComplete = False then // Если цель выполнена, то дальше данных уже нет, выходим
    begin
        NewAddGoal.GoalText := GetConString(br);
        NewAddGoal.bPrimaryGoal := GetConLongBool(br);
    end;
end;

procedure BuildAddNote(var br: TBinaryReader; var NewAddNote: TConEventAddNote);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewAddNote.EventIdx := br.ReadInteger();
    NewAddNote.unknown1 := br.ReadInteger();
    NewAddNote.EventType := TEventType(br.ReadInteger());
    NewAddNote.EventLabel := GetConString(br);

    NewAddNote.TextLine := GetConString(br);
end;

procedure BuildAddSkillPts(var br: TBinaryReader; var NewAddSkillPts: TConEventAddSkillPoints);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewAddSkillPts.EventIdx := br.ReadInteger();
    NewAddSkillPts.unknown1 := br.ReadInteger();
    NewAddSkillPts.EventType := TEventType(br.ReadInteger());
    NewAddSkillPts.EventLabel := GetConString(br);

    NewAddSkillPts.Points := br.ReadInteger(); // pointsToAdd
    NewAddSkillPts.TextLine := GetConString(br);
end;

procedure BuildAddCredits(var br: TBinaryReader; var NewAddCredits: TConEventAddCredits);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewAddCredits.EventIdx := br.ReadInteger();
    NewAddCredits.unknown1 := br.ReadInteger();
    NewAddCredits.EventType := TEventType(br.ReadInteger());
    NewAddCredits.EventLabel := GetConString(br);

    NewAddCredits.Credits := br.ReadInteger(); // creditsToAdd
end;

procedure BuildCheckPersona(var br: TBinaryReader; var NewCheckPersona: TConEventCheckPersona);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewCheckPersona.EventIdx := br.ReadInteger();
    NewCheckPersona.unknown1 := br.ReadInteger();
    NewCheckPersona.EventType := TEventType(br.ReadInteger());
    NewCheckPersona.EventLabel := GetConString(br);

    NewCheckPersona.AttrToCheck := TPersonaTypes(br.ReadInteger()); // personaType
    NewCheckPersona.Condition := TConditions(br.ReadInteger());
    NewCheckPersona.CheckValue := br.ReadInteger();
    NewCheckPersona.CheckGoToLabel := GetConString(br); // jumpLabel
end;

procedure BuildComment(var br: TBinaryReader; var NewComment: TConEventComment);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewComment.EventIdx := br.ReadInteger();
    NewComment.unknown1 := br.ReadInteger();
    NewComment.EventType := TEventType(br.ReadInteger());
    NewComment.EventLabel := GetConString(br);

    NewComment.TextLine := GetConString(br);
end;

procedure BuildEnd(var br: TBinaryReader; var NewEnd: TConEventEnd);
begin
    var Temp := GetConString(br); // skip the header for clipboard

    // first 4
    NewEnd.EventIdx := br.ReadInteger();
    NewEnd.unknown1 := br.ReadInteger();
    NewEnd.EventType := TEventType(br.ReadInteger());
    NewEnd.EventLabel := GetConString(br);
end;


end.
