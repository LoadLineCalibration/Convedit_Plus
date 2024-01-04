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
procedure WriteLongBool(cw: TBinaryWriter; LBool: LongBool);
procedure WriteCommonEventFields(cw: TBinaryWriter; Event: TConEvent);

function DateTimeStrToDouble(str: string): Double;
function GetTablesSize(): Integer;


implementation

function DateTimeStrToDouble(str: string): Double;
begin
    Result := StrToDateTime(str);
end;

function GetTablesSize(): Integer;
var
    tempStream: TFileStream;
    tempWriter: TBinaryWriter;
begin
    var tempDirectory := GetEnvironmentVariable('TEMP');
    var tempFile:= IncludeTrailingPathDelimiter(tempDirectory) + 'tables.bin';

    frmMain.AddLog('Use tempFile = ' + tempFile);

    tempStream := TFileStream.Create(tempFile, fmOpenWrite or fmCreate);
    tempWriter := TBinaryWriter.Create(tempStream, TEncoding.ANSI, False);
try
    WriteInteger(tempWriter, frmMain.conFileParameters.fpActors.Count); // actors > NumRecords
    for var a := 0 to frmMain.conFileParameters.fpActors.Count -1 do
    begin
        WriteInteger(tempWriter, a);                                            // Index
        WriteString(tempWriter, frmMain.conFileParameters.fpActors.Strings[a]); // size of string + string
    end;

    WriteInteger(tempWriter, frmMain.conFileParameters.fpFlags.Count); // flags > NumRecords
    for var f := 0 to frmMain.conFileParameters.fpFlags.Count -1 do
    begin
        WriteInteger(tempWriter, f);
        WriteString(tempWriter, frmMain.conFileParameters.fpFlags.Strings[f]);
    end;

    WriteInteger(tempWriter, frmMain.conFileParameters.fpSkills.Count); // Skills > NumRecords
    for var s := 0 to frmMain.conFileParameters.fpSkills.Count -1 do
    begin
        WriteInteger(tempWriter, s);
        WriteString(tempWriter, frmMain.conFileParameters.fpSkills.Strings[s]);
    end;

    WriteInteger(tempWriter, frmMain.conFileParameters.fpObjects.Count); // Objects > NumRecords
    for var o := 0 to frmMain.conFileParameters.fpObjects.Count -1 do
    begin
        WriteInteger(tempWriter, o);
        WriteString(tempWriter, frmMain.conFileParameters.fpObjects.Strings[o]);
    end;
    // end of tables

    var DataSize := tempStream.Size;

    frmMain.AddLog('Tables DataSize = ' + DataSize.ToString);
    Result := DataSize;

    tempWriter.Close();
finally
    tempWriter.Free();
    tempStream.Free();
    // todo: remove temporary file or find other way to get tables size
end;
end;

procedure SaveConFile(newFile: string);
var
  fileStr: TFileStream;
  ConWrite: TBinaryWriter;
  fileHdrBytes: TBytes;
  tablesSize: Integer;
begin
    tablesSize := GetTablesSize();

    fileStr := TFileStream.Create(newFile, fmOpenWrite or fmCreate);
    ConWrite := TBinaryWriter.Create(fileStr, TEncoding.ANSI, False);

    SetLength(fileHdrBytes, Length(conFileHeader));
    for var th := 0 to Length(conFileHeader) -1 do
        fileHdrBytes[th] := conFileHeader[th];

try
    ConWrite.Write(fileHdrBytes); // Header
    WriteInteger(ConWrite, CEP_CONXML_FILE_VERSION); // version

    WriteDouble(ConWrite, DateTimeStrToDouble(frmMain.conFileParameters.fpCreatedByDate));
    WriteString(ConWrite, frmMain.conFileParameters.fpCreatedByName);

    WriteDouble(ConWrite, DateTimeStrToDouble(frmMain.conFileParameters.fpModifiedByDate));
    WriteString(ConWrite, frmMain.conFileParameters.fpModifiedByName);

    WriteString(ConWrite, frmMain.conFileParameters.fpAudioPackage);
    WriteString(ConWrite, frmMain.conFileParameters.fpNotes);

    WriteInteger(ConWrite, Length(frmMain.conFileParameters.fpMissions)); // numMissions

    for var m := 0 to High(frmMain.conFileParameters.fpMissions) do
    begin
        WriteInteger(ConWrite, frmMain.conFileParameters.fpMissions[m]);
    end;

    // write tables here...
    WriteInteger(ConWrite, tablesSize); // tables data size. Also Unrecognized1 in .xml version

    WriteInteger(ConWrite, frmMain.conFileParameters.fpActors.Count); // actors > NumRecords
    for var a := 0 to frmMain.conFileParameters.fpActors.Count -1 do
    begin
        WriteInteger(ConWrite, a);                                            // Index
        WriteString(ConWrite, frmMain.conFileParameters.fpActors.Strings[a]); // size of string + string
    end;

    WriteInteger(ConWrite, frmMain.conFileParameters.fpFlags.Count); // flags > NumRecords
    for var f := 0 to frmMain.conFileParameters.fpFlags.Count -1 do
    begin
        WriteInteger(ConWrite, f);
        WriteString(ConWrite, frmMain.conFileParameters.fpFlags.Strings[f]);
    end;

    WriteInteger(ConWrite, frmMain.conFileParameters.fpSkills.Count); // Skills > NumRecords
    for var s := 0 to frmMain.conFileParameters.fpSkills.Count -1 do
    begin
        WriteInteger(ConWrite, s);
        WriteString(ConWrite, frmMain.conFileParameters.fpSkills.Strings[s]);
    end;

    WriteInteger(ConWrite, frmMain.conFileParameters.fpObjects.Count); // Objects > NumRecords
    for var o := 0 to frmMain.conFileParameters.fpObjects.Count -1 do
    begin
        WriteInteger(ConWrite, o);
        WriteString(ConWrite, frmMain.conFileParameters.fpObjects.Strings[o]);
    end;
    // end of tables

    var numConversations := frmMain.ConversationsList.Count;
    var convList := frmMain.ConversationsList;

    WriteInteger(ConWrite, numConversations); // unknown3, same as numConversations?
    WriteInteger(ConWrite, numConversations); // numConversations

    for var nc := 0 to numConversations -1 do
    begin
        WriteInteger(ConWrite, convList.Items[nc].id); // unknown0
        WriteInteger(ConWrite, convList.Items[nc].id);
        WriteString(ConWrite, convList.Items[nc].conName);
        WriteString(ConWrite, convList.Items[nc].conDescription);

        WriteDouble(ConWrite, DateTimeStrToDouble(convList.Items[nc].conCreatedByDate)); // createdOn
        WriteString(ConWrite, convList.Items[nc].conCreatedByName); // createdBy

        WriteDouble(ConWrite, DateTimeStrToDouble(convList.Items[nc].conModifiedByDate)); // lastModifiedOn
        WriteString(ConWrite, convList.Items[nc].conModifiedByName); // lastModifiedBy

        WriteInteger(ConWrite, convList.Items[nc].conOwnerIndex); // OwnerName id
        WriteString(ConWrite, convList.Items[nc].conOwnerName); // OwnerName

        WriteLongBool(ConWrite, convList.Items[nc].bInfoLink);
        WriteString(ConWrite, convList.Items[nc].conNotes); // notes
        WriteLongBool(ConWrite, convList.Items[nc].bOnlyOnce); // bDisplayOnce
        WriteLongBool(ConWrite, convList.Items[nc].bFirstPerson);
        WriteLongBool(ConWrite, convList.Items[nc].bNonInteract);
        WriteLongBool(ConWrite, convList.Items[nc].bRandomCamera);
        WriteLongBool(ConWrite, convList.Items[nc].bCanInterrupt);
        WriteLongBool(ConWrite, convList.Items[nc].bCannotInterrupt);

        WriteLongBool(ConWrite, convList.Items[nc].bPCBumps);
        WriteLongBool(ConWrite, convList.Items[nc].bPCFrobs);
        WriteLongBool(ConWrite, convList.Items[nc].bNPCSees);
        WriteLongBool(ConWrite, convList.Items[nc].bNPCEnters);
        WriteInteger(ConWrite, convList.Items[nc].distance); // Radius

        var numFlagRefList := Length(convList.Items[nc].conDependsOnFlags); // array size
        WriteInteger(ConWrite, numFlagRefList);                             // write numFlagRefList

        for var nfr := 0 to numFlagRefList -1 do
        begin
            WriteInteger(ConWrite, convList.Items[nc].conDependsOnFlags[nfr].flagIndex);
            WriteString(ConWrite, convList.Items[nc].conDependsOnFlags[nfr].flagName);
            WriteLongBool(ConWrite, convList.Items[nc].conDependsOnFlags[nfr].flagValue);
            WriteInteger(ConWrite, convList.Items[nc].conDependsOnFlags[nfr].flagExpiration);
        end;

        var numEventList := Length(convList.Items[nc].Events);  // array size
        WriteInteger(ConWrite, numEventList);                   // write numEventList

        for var NEL := 0 to numEventList -1 do
        begin
            if convList.Items[nc].Events[NEL].EventType = ET_Speech then // 00
            begin
                var eventSpeech := TConEventSpeech(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventSpeech);

                WriteInteger(ConWrite, eventSpeech.ActorIndex); // speaker id
                WriteString(ConWrite, eventSpeech.ActorValue); // speaker Name

                WriteInteger(ConWrite, eventSpeech.ActorToIndex); // speaking to id
                WriteString(ConWrite, eventSpeech.ActorToValue); // speaking to name

                WriteString(ConWrite, eventSpeech.TextLine); // speech text
                WriteString(ConWrite, eventSpeech.mp3File); // Sound

                WriteLongBool(ConWrite, eventSpeech.bContinued); // not implemented in game
                WriteLongBool(ConWrite, eventSpeech.bBold);      //
                WriteInteger(ConWrite, eventSpeech.SpeechFont);  //
            end;
            //

            if convList.Items[nc].Events[NEL].EventType = ET_Choice then //01
            begin
                var eventChoice := TConEventChoice(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventChoice);

                WriteInteger(ConWrite, eventChoice.unknown0); // unknown0
                WriteLongBool(ConWrite, eventChoice.bClearScreen); // bClearScreen
                WriteInteger(ConWrite, eventChoice.NumChoices); // numChoiceList

                for var chi := 0 to eventChoice.NumChoices -1 do
                begin
                    WriteInteger(ConWrite, eventChoice.Choices[chi].Index); // unk0
                    WriteString(ConWrite, eventChoice.Choices[chi].textline); // choiceText
                    WriteLongBool(ConWrite, eventChoice.Choices[chi].bDisplayAsSpeech); // bDisplayAsSpeech

                    if eventChoice.Choices[chi].bSkillNeeded = -1 then
                    begin
                        WriteInteger(ConWrite, -1);  // skill is not required, so write skillName.id = -1
                    end;

                    if eventChoice.Choices[chi].bSkillNeeded >= 0 then
                    begin
                        WriteInteger(ConWrite, eventChoice.Choices[chi].bSkillNeeded);  // skill required, so write skillName.id
                        WriteString(ConWrite, eventChoice.Choices[chi].Skill); // skillName
                        WriteInteger(ConWrite, eventChoice.Choices[chi].SkillLevel); // skilllevelNeeded
                    end;

                    WriteString(ConWrite, eventChoice.Choices[chi].GoToLabel); // choiceLabel
                    WriteString(ConWrite, eventChoice.Choices[chi].mp3); // soundPath

                    var numFlagRefListChi := Length(eventChoice.Choices[chi].RequiredFlags);
                    WriteInteger(ConWrite, numFlagRefListChi); // numFlagRefList

                    for var NFRCh := 0 to numFlagRefListChi -1 do
                    begin
                        WriteInteger(ConWrite, eventChoice.Choices[chi].RequiredFlags[NFRCh].flagIndex);
                         WriteString(ConWrite, eventChoice.Choices[chi].RequiredFlags[NFRCh].flagName);
                       WriteLongBool(ConWrite, eventChoice.Choices[chi].RequiredFlags[NFRCh].flagValue);
                        WriteInteger(ConWrite, eventChoice.Choices[chi].RequiredFlags[NFRCh].flagExpiration);
                    end;
                end;
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_SetFlag then // 02
            begin
                var eventSetFlag := TConEventSetFlag(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventSetFlag);

                var numFlagRefListSF := Length(eventSetFlag.SetFlags);
                WriteInteger(ConWrite, numFlagRefListSF); // numFlagRefList

                for var NFRSF := 0 to numFlagRefListSF -1 do
                begin
                    WriteInteger(ConWrite, eventSetFlag.SetFlags[NFRSF].flagIndex);
                     WriteString(ConWrite, eventSetFlag.SetFlags[NFRSF].flagName);
                   WriteLongBool(ConWrite, eventSetFlag.SetFlags[NFRSF].flagValue);
                    WriteInteger(ConWrite, eventSetFlag.SetFlags[NFRSF].flagExpiration);
                end;
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_CheckFlag then // 03
            begin
                var eventCheckFlag := TConEventCheckFlag(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventCheckFlag);

                var numFlagRefListCHF := Length(eventCheckFlag.FlagsToCheck);
                WriteInteger(ConWrite, numFlagRefListCHF); // numFlagRefList

                for var NFRCHF := 0 to numFlagRefListCHF -1 do
                begin
                    WriteInteger(ConWrite, eventCheckFlag.FlagsToCheck[NFRCHF].flagIndex);
                     WriteString(ConWrite, eventCheckFlag.FlagsToCheck[NFRCHF].flagName);
                   WriteLongBool(ConWrite, eventCheckFlag.FlagsToCheck[NFRCHF].flagValue);
                    WriteInteger(ConWrite, eventCheckFlag.FlagsToCheck[NFRCHF].flagExpiration);
                end;

                WriteString(ConWrite, eventCheckFlag.GotoLabel); // setLabel
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_CheckObject then // 04
            begin
                var eventCheckObject := TConEventCheckObject(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventCheckObject);

                WriteInteger(ConWrite, eventCheckObject.ObjectIndex); // objectName.id
                WriteString(ConWrite, eventCheckObject.ObjectValue); // objectName.Name
                WriteString(ConWrite, eventCheckObject.GoToLabel); // failLabel
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_TransferObject then // 05
            begin
                var eventTransObject := TConEventTransferObject(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventTransObject);

                WriteInteger(ConWrite, eventTransObject.ObjectIndex); // objectName.id
                WriteString(ConWrite, eventTransObject.ObjectValue); // objectName.Name
                WriteInteger(ConWrite, eventTransObject.Amount); // TransferCount

                WriteInteger(ConWrite, eventTransObject.ActorFromIndex);
                WriteString(ConWrite, eventTransObject.ActorFromValue);

                WriteInteger(ConWrite, eventTransObject.ActorToIndex);
                WriteString(ConWrite, eventTransObject.ActorToValue);

                WriteString(ConWrite, eventTransObject.GotoLabel); // failLabel
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_MoveCamera then // 06
            begin
                var eventMoveCam := TConEventMoveCamera(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventMoveCam);

                WriteInteger(ConWrite, Ord(eventMoveCam.CameraType)); // cameraType
                WriteInteger(ConWrite, Ord(eventMoveCam.CameraAngle)); // cameraPosition
                WriteInteger(ConWrite, -1); // cameraTransition was not implemented anyway, so just write -1
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Animation then // 07
            begin
                var eventAnim := TConEventAnimation(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventAnim);

                WriteInteger(ConWrite, eventAnim.ActorIndex); // eventOwnerName.id
                WriteString(ConWrite, eventAnim.ActorValue); // eventOwnerName.Name
                WriteString(ConWrite, eventAnim.AnimSequence); // seqStr
                WriteLongBool(ConWrite, eventAnim.bAnimPlayOnce); // playMode.
                WriteInteger(ConWrite, eventAnim.AnimPlayForSeconds); // This field is missing in ConEventAnimation.uc (by default)
                WriteLongBool(ConWrite, eventAnim.bAnimWaitToFinish); // bFinishAnim
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Trade then // 08
            begin
                // not implemented (at least for now)
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Jump then // 09
            begin
                var eventJump := TConEventJump(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventJump);

                WriteString(ConWrite, eventJump.gotoLabel); // jumpLabel
                WriteInteger(ConWrite, eventJump.conversationId); // conId
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Random then // 10
            begin
                var eventRandom := TConEventRandom(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventRandom);

                var numRandomLabels := Length(eventRandom.GoToLabels);
                WriteInteger(ConWrite, numRandomLabels);

                for var NRL := 0 to numRandomLabels -1 do
                    WriteString(ConWrite, eventRandom.GoToLabels[NRL]);

                WriteLongBool(ConWrite, eventRandom.bCycle); // cycle events
                WriteLongBool(ConWrite, eventRandom.bCycleOnce);
                WriteLongBool(ConWrite, eventRandom.bCycleRandom);
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Trigger then // 11
            begin
                var eventTrigger := TConEventTrigger(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventTrigger);
                WriteString(ConWrite, eventTrigger.TriggerTag);
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_AddGoal then // 12
            begin
                var eventAddGoal := TConEventAddGoal(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventAddGoal);
                WriteString(ConWrite, eventAddGoal.GoalName);

                var bGoalCompleted := eventAddGoal.bComplete;
                WriteLongBool(ConWrite, bGoalCompleted);

                if (bGoalCompleted = False) then
                begin
                    WriteString(ConWrite, eventAddGoal.GoalText);
                    WriteLongBool(ConWrite, eventAddGoal.bPrimaryGoal);
                end;
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_AddNote then // 13
            begin
                var eventAddNote := TConEventAddNote(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventAddNote);
                WriteString(ConWrite, eventAddNote.TextLine); // noteText

            end;

            if convList.Items[nc].Events[NEL].EventType = ET_AddSkillPoints then // 14
            begin
                var eventAddSkillPoints := TConEventAddSkillPoints(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventAddSkillPoints);
                WriteInteger(ConWrite, eventAddSkillPoints.Points); // pointsToAdd
                WriteString(ConWrite, eventAddSkillPoints.TextLine); // awardMessage
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_AddCredits then // 15
            begin
                var eventAddCredits := TConEventAddCredits(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventAddCredits);
                WriteInteger(ConWrite, eventAddCredits.Credits);
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_CheckPersona then // 16
            begin
                var eventCheckPersona := TConEventCheckPersona(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventCheckPersona);

                WriteInteger(ConWrite, Ord(eventCheckPersona.AttrToCheck)); // personaType
                WriteInteger(ConWrite, Ord(eventCheckPersona.Condition));
                WriteInteger(ConWrite, eventCheckPersona.CheckValue);
                WriteString(ConWrite, eventCheckPersona.CheckGoToLabel); // JumpLabel
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_Comment then // 17
            begin
                var eventComment := TConEventComment(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventComment);
                WriteString(ConWrite, eventComment.TextLine); // comment
            end;

            if convList.Items[nc].Events[NEL].EventType = ET_End then // 18
            begin
                var eventEnd := TConEventEnd(convList.Items[nc].Events[NEL]);

                WriteCommonEventFields(ConWrite, eventEnd);
            end; //
        end;
    end;


    ConWrite.Close();
finally
    ConWrite.Free();
    fileStr.Free();
end;
end;

procedure WriteString(cw: TBinaryWriter; str: String);
begin
    var StrSize := Length(str);

    if StrSize = 0 then
    begin
        cw.Write(Integer(0));
        Exit();
    end;

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

procedure WriteLongBool(cw: TBinaryWriter; LBool: LongBool);
begin
    cw.Write(Integer(LBool));
end;

procedure WriteCommonEventFields(cw: TBinaryWriter; Event: TConEvent);
begin
    WriteInteger(cw, Event.unknown0);
    WriteInteger(cw, Event.unknown1);
    WriteInteger(cw, Ord(Event.EventType));
    WriteString(cw, Event.EventLabel);
end;

end.
