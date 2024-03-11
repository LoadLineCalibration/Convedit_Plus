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

// to copy events into clipboard (see MainWindow.pas > procedure CopyEventToClipboard())
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

end.
