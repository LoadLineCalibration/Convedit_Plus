//
//  Read binary .con file
//

unit ConFile.Reader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, winapi.ActiveX, ConvEditPlus_Const,
  Conversation.Classes, system.UITypes, system.TypInfo, vcl.ComCtrls;

procedure LoadConFile(conFile: string);

procedure FillTables(ConRead: TBinaryReader);

procedure FillSpeech(ConRead: TBinaryReader; speechEvent: TConEventSpeech; eventLabel: string);
procedure FillChoice(ConRead: TBinaryReader; choiceEvent: TConEventChoice; eventLabel: string);
procedure FillSetFlag(ConRead: TBinaryReader; setFlagEvent: TConEventSetFlag; eventLabel: string);
procedure FillCheckFlag(ConRead: TBinaryReader; checkFlagEvent: TConEventCheckFlag; eventLabel: string);
procedure FillCheckObject(ConRead: TBinaryReader; checkObjectEvent: TConEventCheckObject; eventLabel: string);
procedure FillTransferObject(ConRead: TBinaryReader; transferObjectEvent: TConEventTransferObject; eventLabel: string);
procedure FillMoveCamera(ConRead: TBinaryReader; moveCameraEvent: TConEventMoveCamera; eventLabel: string);
procedure FillAnimation(ConRead: TBinaryReader; animEvent: TConEventAnimation; eventLabel: string);
procedure FillTrade(ConRead: TBinaryReader; eventTrade: TConEventTrade; eventLabel: string);
procedure FillJump(ConRead: TBinaryReader; eventJump: TConEventJump; eventLabel: string);
procedure FillRandom(ConRead: TBinaryReader; eventRandom: TConEventRandom; eventLabel: string);
procedure FillTrigger(ConRead: TBinaryReader; eventTrigger: TConEventTrigger; eventLabel: string);
procedure FillAddGoal(ConRead: TBinaryReader; eventAddGoal: TConEventAddGoal; eventLabel: string);
procedure FillAddNote(ConRead: TBinaryReader; eventAddNote: TConEventAddNote; eventLabel: string);
procedure FillAddSkillPoints(ConRead: TBinaryReader; eventAddSkillPts: TConEventAddSkillPoints; eventLabel: string);
procedure FillAddCredits(ConRead: TBinaryReader; eventAddCredits: TConEventAddCredits; eventLabel: string);
procedure FillCheckPersona(ConRead: TBinaryReader; eventCheckPersona: TConEventCheckPersona; eventLabel: string);
procedure FillComment(ConRead: TBinaryReader; eventComment: TConEventComment; eventLabel: string);
procedure FillEnd(ConRead: TBinaryReader; eventEnd: TConEventEnd; eventLabel: string);

function DoubleToDateTime(floatDateTime: Double): TDateTime;
function GetConString(conRead: TBinaryReader): string;
function GetConLongBool(conRead: TBinaryReader): Boolean;


implementation

uses MainWindow;

function DoubleToDateTime(floatDateTime: Double): TDateTime;
var
    finalvalue: TSystemTime;
begin
    VariantTimeToSystemTime(floatDateTime, finalvalue);

    Result := SystemTimeToDateTime(finalvalue);
end;

function GetConString(conRead: TBinaryReader): string;
begin
    var StringSize := ConRead.ReadInteger(); // get size of data

    if StringSize = 0 then
        Exit('');

    var StringBytes := ConRead.ReadBytes(StringSize);
    Result := TEncoding.ANSI.GetString(StringBytes); // convert to string
end;

function GetConLongBool(conRead: TBinaryReader): Boolean;
begin
    var tempInteger := conRead.ReadInteger(); // LongBool,4 bytes

    Result := tempInteger <> 0; //tempInteger.ToBoolean;
end;

procedure LoadConFile(conFile: string);
var
  fileStr: TFileStream;
  ConRead: TBinaryReader;
  tempConvo: TConversation;
begin
    fileStr := TFileStream.Create(conFile, fmOpenRead);
    ConRead := TBinaryReader.Create(fileStr, TEncoding.ANSI, False);

    var headerBytes := ConRead.ReadBytes(26);

{    if CompareMem(headerBytes, @conFileHeader, 26) = False then
    begin
        MessageDlg(strInvalidConFileHdr,  mtError, [mbOK], 0);
        Exit();
    end;  }

try
    with frmMain do
    begin
        mmoOutput.Clear();

        AddLog('Loading .con file: ' + conFile);

        conFileParameters.fpFileVersion := ConRead.ReadInteger();
        AddLog('File version = ' + conFileParameters.fpFileVersion.ToString);


        var CreatedOnDouble := ConRead.ReadDouble(); // CreatedOn
        conFileParameters.fpCreatedByDate := DateTimeToStr(DoubleToDateTime(CreatedOnDouble));
        AddLog('Created On Double: ' + CreatedOnDouble.ToString + ' converted to: ' + conFileParameters.fpCreatedByDate);

        conFileParameters.fpCreatedByName := GetConString(ConRead); // CreatedBy
        AddLog('Created By: ' + conFileParameters.fpCreatedByName);

        var LastModifOnDouble := ConRead.ReadDouble(); // lastModifiedOn
        conFileParameters.fpModifiedByDate := DateTimeToStr(DoubleToDateTime(LastModifOnDouble));
        AddLog('Last modified on: ' + LastModifOnDouble.ToString + ' converted to: ' + conFileParameters.fpModifiedByDate);

        conFileParameters.fpModifiedByName := GetConString(ConRead); // lastModifiedBy
        AddLog('Last modified by: ' + conFileParameters.fpModifiedByName);

        conFileParameters.fpAudioPackage := GetConString(ConRead); // audioPackageName
        AddLog('Audio Package: ' + conFileParameters.fpAudioPackage);

        conFileParameters.fpNotes := GetConString(ConRead); // notes
        AddLog('Notes: ' + conFileParameters.fpNotes);

        var numMissionList := ConRead.ReadInteger(); // of used missions
        AddLog('Num missions: ' + numMissionList.ToString);

        SetLength(conFileParameters.fpMissions, numMissionList);

            for var NM := 0 to numMissionList -1 do  // missionList
            begin
                conFileParameters.fpMissions[NM] := ConRead.ReadInteger();
                AddLog('Used mission #' + conFileParameters.fpMissions[NM].ToString + ' added to array');
            end;


        FillTables(ConRead);

        var unknown4 := ConRead.ReadInteger(); // ignore
        AddLog('unknown4 skipped, size = ' + unknown4.ToString);

        var numConversations := ConRead.ReadInteger(); // numConversations
        AddLog('Num conversations: ' + numConversations.ToString);

        if numConversations > 0 then
        AddLog(#13#10 + 'Conversations:');

            for var NC := 0 to numConversations -1 do
            begin
                tempConvo := TConversation.Create();

                tempConvo.unknown0 := ConRead.ReadInteger();
                tempConvo.id := ConRead.ReadInteger();

                tempConvo.conName := GetConString(ConRead);
                AddLog(#13#10 + 'Conversation id = ' + tempConvo.id.ToString + ' name = ' + tempConvo.conName);

                tempConvo.conDescription := GetConString(ConRead);
                AddLog('Description: ' + tempConvo.conDescription);


                var conCreatedOnDouble := ConRead.ReadDouble(); // createdOn
                tempConvo.conCreatedByDate := DateTimeToStr(DoubleToDateTime(conCreatedOnDouble));
                AddLog('Conversation createdOn: ' + conCreatedOnDouble.ToString + ' converted to: ' + tempConvo.conCreatedByDate);

                tempConvo.conCreatedByName := GetConString(ConRead); // createdBy
                AddLog('Conversation createdBy: ' + tempConvo.conCreatedByName);


                var conLastModifOnDouble := ConRead.ReadDouble(); //lastModifiedOn
                tempConvo.conModifiedByDate := DateTimeToStr(DoubleToDateTime(conLastModifOnDouble));
                AddLog('Conversation lastModifiedOn: ' + conLastModifOnDouble.ToString + ' converted to: ' + tempConvo.conModifiedByDate);

                tempConvo.conModifiedByName := GetConString(ConRead);  // lastModifiedBy
                AddLog('Conversation lastModifiedBy: ' + tempConvo.conModifiedByName);

                var conOwnerIndexInt := ConRead.ReadInteger(); // ownerName index(id)
                tempConvo.conOwnerIndex := conOwnerIndexInt;

                tempConvo.conOwnerName := GetConString(ConRead); // ownerName
                AddLog('Conversation Owner: ' + tempConvo.conOwnerName + ' index: ' + conOwnerIndexInt.ToString);


                var bDataLinkCon := ConRead.ReadInteger(); // LongBool, 4 bytes
                tempConvo.bInfoLink := bDataLinkCon.ToBoolean;
                AddLog('bDataLinkCon = ' + BoolToStr(tempConvo.bInfoLink, True));


                tempConvo.conNotes := GetConString(ConRead);
                if tempConvo.conNotes = '' then
                    AddLog('Conversation Notes: ' + strEmptyValue)
                    else AddLog('Conversation Notes: ' + tempConvo.conNotes);

                var bDisplayOnce := ConRead.ReadInteger();
                tempConvo.bOnlyOnce := bDisplayOnce.ToBoolean;
                AddLog('bDisplayOnce = ' + BoolToStr(tempConvo.bOnlyOnce, True));

                var bFirstPerson := ConRead.ReadInteger();
                tempConvo.bFirstPerson := bFirstPerson.ToBoolean;
                AddLog('bFirstPerson = ' + BoolToStr(tempConvo.bFirstPerson, True));

                var bNonInteractive := ConRead.ReadInteger();
                tempConvo.bNonInteract := bNonInteractive.ToBoolean;
                AddLog('bNonInteractive = ' + BoolToStr(tempConvo.bNonInteract, True));

                var bRandomCam := ConRead.ReadInteger();
                tempConvo.bRandomCamera := bRandomCam.ToBoolean;
                AddLog('bRandomCamera = ' + BoolToStr(tempConvo.bRandomCamera, True));

                var bCanbeInterrupted := ConRead.ReadInteger();
                tempConvo.bCanInterrupt := bCanbeInterrupted.ToBoolean;
                AddLog('bCanBeInterrupted = ' + BoolToStr(tempConvo.bCanInterrupt, True));

                var bCannotBeInterrupted := ConRead.ReadInteger();
                tempConvo.bCannotInterrupt := bCannotBeInterrupted.ToBoolean;
                AddLog('bCannotBeInterrupted = ' + BoolToStr(tempConvo.bCannotInterrupt, True));

                var bInvokeBump := ConRead.ReadInteger();
                tempConvo.bPCBumps := bInvokeBump.ToBoolean;
                AddLog('bInvokeBump = ' + BoolToStr(tempConvo.bPCBumps, True));

                var bInvokeFrob := ConRead.ReadInteger();
                tempConvo.bPCFrobs := bInvokeFrob.ToBoolean;
                AddLog('bInvokeFrob = ' + BoolToStr(tempConvo.bPCFrobs, True));

                var bInvokeSight := ConRead.ReadInteger();
                tempConvo.bNPCSees := bInvokeSight.ToBoolean;
                AddLog('bInvokeSight = ' + BoolToStr(tempConvo.bNPCSees, True));

                var bInvokeRadius := ConRead.ReadInteger();
                tempConvo.bNPCEnters := bInvokeRadius.ToBoolean;
                AddLog('bInvokeRadius = ' + BoolToStr(tempConvo.bNPCEnters, True));

                var InvokeRadiusInt := ConRead.ReadInteger();
                tempConvo.distance := InvokeRadiusInt;
                AddLog('InvokeRadius = ' + InvokeRadiusInt.ToString);

                var numFlagRefList := ConRead.ReadInteger();
                AddLog('numFlagRefList = ' + numFlagRefList.ToString);

                SetLength(tempConvo.conDependsOnFlags, numFlagRefList); // set array length

                for var fr := 0 to numFlagRefList -1 do
                begin
                    tempConvo.conDependsOnFlags[fr].flagIndex := ConRead.ReadInteger();

                    var cfRefNameSize := ConRead.ReadInteger();
                    var cfRefNameBytes := ConRead.ReadBytes(cfRefNameSize);
                    tempConvo.conDependsOnFlags[fr].flagName := TEncoding.ANSI.GetString(cfRefNameBytes);

                    var cfRefValue := ConRead.ReadInteger();
                    tempConvo.conDependsOnFlags[fr].flagValue := cfRefValue.ToBoolean;

                    var cfRefExpiration := ConRead.ReadInteger();

                    AddLog(#9+'conFlagRef: index = ' + tempConvo.conDependsOnFlags[fr].flagIndex.ToString +
                           ' Name = ' +  tempConvo.conDependsOnFlags[fr].flagName +
                           ' Value = ' + BoolToStr(tempConvo.conDependsOnFlags[fr].flagValue, True) +
                           ' Expiration = ' + cfRefExpiration.ToString);
                end;


                //var numEventList := ConRead.ReadInteger(); // now events...
                tempConvo.numEventList := ConRead.ReadInteger(); // now events...
                AddLog('numEventList = ' + tempConvo.numEventList.ToString);
                SetLength(tempConvo.Events, tempConvo.numEventList); // set array length
                AddLog('Events:');

                for var NEL := 0 to tempConvo.numEventList -1 do
                begin
                    var tempEvent: TConEvent;
                    var Unknown0 := ConRead.ReadInteger();
                    var Unknown1 := ConRead.ReadInteger();
                    var intEventType := ConRead.ReadInteger();
                    var eventLabel := GetConString(ConRead);


                    if intEventType = Ord(ET_Speech) then
                    begin
                        AddLog('Reading event: ET_Speech, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventSpeech.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillSpeech(ConRead, TConEventSpeech(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Choice) then
                    begin
                        AddLog('Reading event: ET_Choice, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventChoice.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillChoice(ConRead, TConEventChoice(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_SetFlag) then
                    begin
                        AddLog('Reading event: ET_SetFlag, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventSetFlag.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillSetFlag(ConRead, TConEventSetFlag(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_CheckFlag) then
                    begin
                        AddLog('Reading event: ET_CheckFlag, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventCheckFlag.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillCheckFlag(ConRead, TConEventCheckFlag(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_CheckObject) then
                    begin
                        AddLog('Reading event: ET_CheckObject, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventCheckObject.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillCheckObject(ConRead, TConEventCheckObject(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_TransferObject) then
                    begin
                        AddLog('Reading event: ET_TransferObject, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventTransferObject.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillTransferObject(ConRead, TConEventTransferObject(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_MoveCamera) then
                    begin
                        AddLog('Reading event: ET_MoveCamera, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventMoveCamera.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillMoveCamera(ConRead, TConEventMoveCamera(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Animation) then
                    begin
                        AddLog('Reading event: ET_Animation, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventAnimation.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillAnimation(ConRead, TConEventAnimation(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Trade) then
                    begin
                        AddLog('Reading event: ET_Trade, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventTrade.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillTrade(ConRead, TConEventTrade(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Jump) then
                    begin
                        AddLog('Reading event: ET_Jump, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventJump.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillJump(ConRead, TConEventJump(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Random) then
                    begin
                        AddLog('Reading event: ET_Random, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventRandom.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillRandom(ConRead, TConEventRandom(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Trigger) then
                    begin
                        AddLog('Reading event: ET_Trigger, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventTrigger.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillTrigger(ConRead, TConEventTrigger(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_AddGoal) then
                    begin
                        AddLog('Reading event: ET_AddGoal, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventAddGoal.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillAddGoal(ConRead, TConEventAddGoal(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_AddNote) then
                    begin
                        AddLog('Reading event: ET_AddNote, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventAddNote.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillAddNote(ConRead, TConEventAddNote(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_AddSkillPoints) then
                    begin
                        AddLog('Reading event: ET_AddSkillPoints, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventAddSkillPoints.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillAddSkillPoints(ConRead, TConEventAddSkillPoints(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_AddCredits) then
                    begin
                        AddLog('Reading event: ET_AddCredits, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventAddCredits.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillAddCredits(ConRead, TConEventAddCredits(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_CheckPersona) then
                    begin
                        AddLog('Reading event: ET_CheckPersona, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventCheckPersona.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillCheckPersona(ConRead, TConEventCheckPersona(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_Comment) then
                    begin
                        AddLog('Reading event: ET_Comment, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventComment.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillComment(ConRead, TConEventComment(tempEvent), eventLabel);
                    end;

                    if intEventType = Ord(ET_End) then
                    begin
                        AddLog('Reading event: ET_End, position: 0x'+ ConRead.BaseStream.Position.ToHexString(1));
                        tempEvent := TConEventEnd.Create();
                        tempEvent.unknown0 := Unknown0;
                        tempEvent.unknown1 := Unknown1;
                        FillEnd(ConRead, TConEventEnd(tempEvent), eventLabel);
                    end;

                    tempConvo.Events[NEL] := tempEvent;
                end;

                var NodeConName, NodeConOwnerName, NodeDependsOnFlags: TTreeNode;

                frmMain.ConvoTree.Items.BeginUpdate();

                if frmMain.ItemExistsInTreeView(frmMain.ConvoTree, tempConvo.conOwnerName) = false then
                begin
                   NodeConOwnerName:= frmMain.ConvoTree.Items.Add(nil, tempConvo.conOwnerName);
                   NodeConOwnerName.ImageIndex := 0;
                   NodeConOwnerName.ExpandedImageIndex := 0;
                   NodeConOwnerName.SelectedIndex := 0;
                end;
                // Add owner's conversations
                NodeConName:= frmMain.ConvoTree.Items.AddChildObject(NodeConOwnerName, tempConvo.conName, tempConvo);
                NodeConName.ImageIndex := 1;
                NodeConName.ExpandedImageIndex := 1;
                NodeConName.SelectedIndex := 1;

                // Flags required by this conversation
                for var DOF:= 0 to Length(tempConvo.conDependsOnFlags) -1 do
                begin
                    NodeDependsOnFlags:= frmMain.ConvoTree.Items.AddChild(NodeConName,
                    tempConvo.conDependsOnFlags[DOF].flagName + ' = '
                    + BoolToStr(tempConvo.conDependsOnFlags[DOF].flagValue, true));

                    // red icon = false, green icon = true
                    if NodeDependsOnFlags.Text.EndsText('true', NodeDependsOnFlags.Text) then
                    begin
                        NodeDependsOnFlags.ImageIndex := 2;
                        NodeDependsOnFlags.ExpandedImageIndex := 2;
                        NodeDependsOnFlags.SelectedIndex := 2;
                    end else
                    begin
                        NodeDependsOnFlags.ImageIndex := 3;
                        NodeDependsOnFlags.ExpandedImageIndex := 3;
                        NodeDependsOnFlags.SelectedIndex := 3;
                    end;
                end;

                frmMain.ConversationsList.Add(tempConvo);
                frmMain.ConvoTree.Items.EndUpdate();
            end;
    end;

    ConRead.Close();
finally
    ConRead.Free();
    fileStr.Free();
end;
end;

procedure FillTables(ConRead: TBinaryReader);
begin
    var TablesSize := ConRead.ReadInteger(); // size of all tables?

    with frmMain do
    begin
        // Actors...
        conFileParameters.fpActors.Clear();
        var numActorRecords := ConRead.ReadInteger();

        for var AR := 0 to numActorRecords -1 do
        begin
            var ActorIdx := ConRead.ReadInteger();
            var ActorName := GetConString(ConRead);

            conFileParameters.fpActors.Insert(ActorIdx, ActorName);
        end;

        // Flags...
        conFileParameters.fpFlags.Clear();
        var numFlagsRecords := ConRead.ReadInteger();

        for var FR := 0 to numFlagsRecords -1 do
        begin
            var FlagIdx := ConRead.ReadInteger();
            var FlagName := GetConString(ConRead);

            conFileParameters.fpFlags.Insert(FlagIdx, FlagName);
        end;

        // Skills...
        conFileParameters.fpSkills.Clear();
        var numSkillsRecords := ConRead.ReadInteger();

        for var FR := 0 to numSkillsRecords -1 do
        begin
            var SkillIdx := ConRead.ReadInteger();
            var SkillName := GetConString(ConRead);

            conFileParameters.fpSkills.Insert(SkillIdx, SkillName);
        end;

        // Objects...
        conFileParameters.fpObjects.Clear();
        var numObjectsRecords := ConRead.ReadInteger();

        for var FR := 0 to numObjectsRecords -1 do
        begin
            var ObjectIdx := ConRead.ReadInteger();
            var ObjectName := GetConString(ConRead);

            conFileParameters.fpObjects.Insert(ObjectIdx, ObjectName);
        end;
    end;
end;

procedure FillSpeech(ConRead: TBinaryReader; speechEvent: TConEventSpeech; eventLabel: string);
begin
    speechEvent.EventLabel := eventLabel;
    speechEvent.ActorIndex := ConRead.ReadInteger(); // speakerId
    speechEvent.ActorValue := GetConString(ConRead); // speakerName
    frmMain.AddLog('EventLabel:' + eventLabel + ' Speaker: '+ speechEvent.ActorValue + ' id: ' + speechEvent.ActorIndex.ToString);

    speechEvent.ActorToIndex := ConRead.ReadInteger(); // speakingTo id
    speechEvent.ActorToValue := GetConString(ConRead); // speakingTo Name
    frmMain.AddLog('SpeakingTo: '+ speechEvent.ActorToValue + ' id: ' + speechEvent.ActorToIndex.ToString);

    speechEvent.TextLine := GetConString(ConRead); // speech text
    speechEvent.LineBreaksCount := frmMain.CountLineBreaks(speechEvent.TextLine);
    frmMain.AddLog('Speech Text: "' + speechEvent.TextLine + '"');

    speechEvent.mp3File := GetConString(ConRead); // sound path
    frmMain.AddLog('soundFile: "' + speechEvent.mp3File + '"');

    speechEvent.bContinued := GetConLongBool(ConRead);
    frmMain.AddLog('bContinued = ' + BoolToStr(speechEvent.bContinued, True));

    speechEvent.bBold := GetConLongBool(ConRead);
    frmMain.AddLog('bBold = ' + BoolToStr(speechEvent.bBold, True));

    speechEvent.SpeechFont := ConRead.ReadInteger();
    frmMain.AddLog('SpeechFont = ' + speechEvent.SpeechFont.ToString);
end;

procedure FillChoice(ConRead: TBinaryReader; choiceEvent: TConEventChoice; eventLabel: string);
begin
    choiceEvent.EventLabel := eventLabel;
    frmMain.AddLog('Label = ' + choiceEvent.EventLabel);

    choiceEvent.unk0 := ConRead.ReadInteger(); // unk0
    frmMain.AddLog('choice unk0 = ' + choiceEvent.unk0.ToString);

    choiceEvent.bClearScreen := GetConLongBool(ConRead);
    frmMain.AddLog('choice bClearScreen = ' + BoolToStr(choiceEvent.bClearScreen, True));

    choiceEvent.NumChoices := ConRead.ReadInteger();
    frmMain.AddLog('choice NumChoices = ' + choiceEvent.NumChoices.ToString);

    SetLength(choiceEvent.Choices, choiceEvent.NumChoices);

    for var cl := 0 to choiceEvent.NumChoices -1 do
    begin
        choiceEvent.Choices[cl] := TChoiceItemObject.Create(); // create choice item object
        choiceEvent.Choices[cl].Index := ConRead.ReadInteger();
        frmMain.AddLog('Choice item: index = ' + choiceEvent.Choices[cl].Index.ToString);

        choiceEvent.Choices[cl].textline := GetConString(ConRead);
        frmMain.AddLog('Choice item: text = ' + choiceEvent.Choices[cl].textline);

        choiceEvent.Choices[cl].bDisplayAsSpeech := GetConLongBool(ConRead);
        frmMain.AddLog('Choice item: bDisplayAsSpeech = ' + BoolToStr(choiceEvent.Choices[cl].bDisplayAsSpeech, True));

        var skillNameId := ConRead.ReadInteger();
        frmMain.AddLog('Choice item: SkillNameId = ' + skillnameid.ToString);

        if skillNameId = -1 then  // Skill is NOT required
        begin
              choiceEvent.Choices[cl].bSkillNeeded := skillNameId; // for XML version
            frmMain.AddLog('bSkillNeeded = ' + choiceEvent.Choices[cl].bSkillNeeded.ToString);

            choiceEvent.Choices[cl].GoToLabel := GetConString(ConRead); //choice Label
            choiceEvent.Choices[cl].mp3 := GetConString(ConRead); // soundPath

            var numFlagRefList := ConRead.ReadInteger(); // numFlagRefList
            SetLength(choiceEvent.Choices[cl].RequiredFlags, numFlagRefList); // Set array size

            for var FLR := 0 to numFlagRefList -1 do // flags, required by this choice
            begin
                choiceEvent.Choices[cl].RequiredFlags[FLR].flagIndex := ConRead.ReadInteger();
                choiceEvent.Choices[cl].RequiredFlags[FLR].flagName := GetConString(ConRead);
                choiceEvent.Choices[cl].RequiredFlags[FLR].flagValue := GetConLongBool(ConRead);
                choiceEvent.Choices[cl].RequiredFlags[FLR].flagExpiration := ConRead.ReadInteger();
            end;
        end;

        if skillNameId >= 0 then // Requires skill. Did anyone ever used this feature?
        begin
                choiceEvent.Choices[cl].Skill := GetConString(ConRead);
                choiceEvent.Choices[cl].SkillLevel := ConRead.ReadInteger();
                choiceEvent.Choices[cl].GoToLabel := GetConString(ConRead);
                choiceEvent.Choices[cl].mp3 := GetConString(ConRead);

            var numFlagRefList1 := ConRead.ReadInteger();
            SetLength(choiceEvent.Choices[cl].RequiredFlags, numFlagRefList1);

            for var FLR1 := 0 to numFlagRefList1 -1 do // flags, required by this choice
            begin
                choiceEvent.Choices[cl].RequiredFlags[FLR1].flagIndex := ConRead.ReadInteger();
                choiceEvent.Choices[cl].RequiredFlags[FLR1].flagName := GetConString(ConRead);
                choiceEvent.Choices[cl].RequiredFlags[FLR1].flagValue := GetConLongBool(ConRead);
                choiceEvent.Choices[cl].RequiredFlags[FLR1].flagExpiration := ConRead.ReadInteger();
            end;
        end;
    end;
end;

procedure FillSetFlag(ConRead: TBinaryReader; setFlagEvent: TConEventSetFlag; eventLabel: string);
begin
    setFlagEvent.EventLabel := eventLabel;

    var numFlags := ConRead.ReadInteger();

    SetLength(setFlagEvent.SetFlags, numFlags);

    for var SF := 0 to numFlags -1 do
    begin
        setFlagEvent.SetFlags[SF].flagIndex := ConRead.ReadInteger();
        setFlagEvent.SetFlags[SF].flagName := GetConString(ConRead);
        setFlagEvent.SetFlags[SF].flagValue := GetConLongBool(ConRead);
        setFlagEvent.SetFlags[SF].flagExpiration := ConRead.ReadInteger();
    end;
end;

procedure FillCheckFlag(ConRead: TBinaryReader; checkFlagEvent: TConEventCheckFlag; eventLabel: string);
begin
    checkFlagEvent.EventLabel := eventLabel;

    var numFlags := ConRead.ReadInteger();

    SetLength(checkFlagEvent.FlagsToCheck, numFlags);

    for var CF := 0 to numFlags -1 do
    begin
        checkFlagEvent.FlagsToCheck[CF].flagIndex := ConRead.ReadInteger();
        checkFlagEvent.FlagsToCheck[CF].flagName := GetConString(ConRead);
        checkFlagEvent.FlagsToCheck[CF].flagValue := GetConLongBool(ConRead);
        checkFlagEvent.FlagsToCheck[CF].flagExpiration := ConRead.ReadInteger();
    end;

    checkFlagEvent.GotoLabel := GetConString(ConRead);
end;

procedure FillCheckObject(ConRead: TBinaryReader; checkObjectEvent: TConEventCheckObject; eventLabel: string);
begin
    checkObjectEvent.EventLabel := eventLabel;

    checkObjectEvent.ObjectIndex := ConRead.ReadInteger(); // id
    checkObjectEvent.ObjectValue := GetConString(ConRead); // string: size and data

    checkObjectEvent.GoToLabel := GetConString(ConRead); // failLabel
end;

procedure FillTransferObject(ConRead: TBinaryReader; transferObjectEvent: TConEventTransferObject; eventLabel: string);
begin
    transferObjectEvent.EventLabel := eventLabel;

    transferObjectEvent.ObjectIndex := ConRead.ReadInteger(); //objectName/id
    transferObjectEvent.ObjectValue := GetConString(ConRead); // objectName/name

    transferObjectEvent.Amount := ConRead.ReadInteger(); // TransferCountOpt (?)
    frmMain.AddLog('TransferCountOpt = ' + transferObjectEvent.Amount.ToString);

    transferObjectEvent.ActorFromIndex := ConRead.ReadInteger(); // fromName/id
    transferObjectEvent.ActorFromValue := GetConString(ConRead); // fromName/name

    transferObjectEvent.ActorToIndex := ConRead.ReadInteger(); // toName/id
    transferObjectEvent.ActorToValue := GetConString(ConRead); // toName/value

    transferObjectEvent.GotoLabel := GetConString(ConRead);  // failLabel
    frmMain.addlog('failLabel = ' + transferObjectEvent.GotoLabel);
end;

procedure FillMoveCamera(ConRead: TBinaryReader; moveCameraEvent: TConEventMoveCamera; eventLabel: string);
begin
    moveCameraEvent.EventLabel := eventLabel;

    moveCameraEvent.CameraType := TCameraTypes(ConRead.ReadInteger());
    frmMain.AddLog('Camera Type: ' + GetEnumName(TypeInfo(TCameraTypes), Ord(moveCameraEvent.CameraType)));

    moveCameraEvent.CameraAngle := TCameraPositions(ConRead.ReadInteger());
    frmMain.AddLog('Camera Angle: ' + GetEnumName(TypeInfo(TCameraPositions), Ord(moveCameraEvent.CameraAngle)));

    var CamTransitionStub := ConRead.ReadInteger();
    frmMain.AddLog('CamTransitionStub = ' + CamTransitionStub.ToString);
end;

procedure FillAnimation(ConRead: TBinaryReader; animEvent: TConEventAnimation; eventLabel: string);
begin
    animEvent.EventLabel := eventLabel;

    animEvent.ActorIndex := ConRead.ReadInteger();
    animEvent.ActorValue := GetConString(ConRead);
    animEvent.AnimSequence := GetConString(ConRead);

    // loop = 0, Once = 1
    animEvent.bAnimPlayOnce := GetConLongBool(ConRead);
    animEvent.AnimPlayForSeconds := ConRead.ReadInteger();
    animEvent.bAnimWaitToFinish := GetConLongBool(ConRead);
end;

procedure FillTrade(ConRead: TBinaryReader; eventTrade: TConEventTrade; eventLabel: string);
begin
    eventTrade.EventLabel := eventLabel;
    eventTrade.TradeActorIndex := ConRead.ReadInteger();
    eventTrade.TradeActorValue := GetConString(ConRead);
end;

procedure FillJump(ConRead: TBinaryReader; eventJump: TConEventJump; eventLabel: string);
begin
    eventJump.EventLabel := eventLabel;
    eventJump.gotoLabel := GetConString(ConRead);
    eventJump.conversationId := ConRead.ReadInteger();
end;

procedure FillRandom(ConRead: TBinaryReader; eventRandom: TConEventRandom; eventLabel: string);
begin
    eventRandom.EventLabel := eventLabel;
    eventRandom.numLabels := ConRead.ReadInteger();
    SetLength(eventRandom.GoToLabels, eventRandom.numLabels);

    for var RL := 0 to eventRandom.numLabels -1 do // labels
    begin
        eventRandom.GoToLabels[RL] := GetConString(ConRead);
    end;

    eventRandom.bCycle := GetConLongBool(ConRead);
    eventRandom.bCycleOnce := GetConLongBool(ConRead);
    eventRandom.bCycleRandom := GetConLongBool(ConRead);
end;

procedure FillTrigger(ConRead: TBinaryReader; eventTrigger: TConEventTrigger; eventLabel: string);
begin
    eventTrigger.EventLabel := eventLabel;
    eventTrigger.TriggerTag := GetConString(ConRead);
end;

procedure FillAddGoal(ConRead: TBinaryReader; eventAddGoal: TConEventAddGoal; eventLabel: string);
begin
    eventAddGoal.EventLabel := eventLabel;

    eventAddGoal.GoalName := GetConString(ConRead); // goalNameString
    eventAddGoal.bComplete := GetConLongBool(ConRead);
    eventAddGoal.GoalText := GetConString(ConRead);
    eventAddGoal.bPrimaryGoal := GetConLongBool(ConRead);
end;

procedure FillAddNote(ConRead: TBinaryReader; eventAddNote: TConEventAddNote; eventLabel: string);
begin
    eventAddNote.EventLabel := eventLabel;
    eventAddNote.TextLine := GetConString(ConRead);
end;

procedure FillAddSkillPoints(ConRead: TBinaryReader; eventAddSkillPts: TConEventAddSkillPoints; eventLabel: string);
begin
    eventAddSkillPts.EventLabel := eventLabel;
    eventAddSkillPts.Points := ConRead.ReadInteger(); // pointsToAdd
    eventAddSkillPts.TextLine := GetConString(ConRead);
end;

procedure FillAddCredits(ConRead: TBinaryReader; eventAddCredits: TConEventAddCredits; eventLabel: string);
begin
    eventAddCredits.EventLabel := eventLabel;
    eventAddCredits.Credits := ConRead.ReadInteger(); // creditsToAdd
end;

procedure FillCheckPersona(ConRead: TBinaryReader; eventCheckPersona: TConEventCheckPersona; eventLabel: string);
begin
    eventCheckPersona.EventLabel := eventLabel;

    eventCheckPersona.AttrToCheck := TPersonaTypes(ConRead.ReadInteger()); // personaType
    eventCheckPersona.Condition := TConditions(ConRead.ReadInteger());
    eventCheckPersona.CheckValue := ConRead.ReadInteger();
    eventCheckPersona.CheckGoToLabel := GetConString(ConRead); // jumpLabel
end;

procedure FillComment(ConRead: TBinaryReader; eventComment: TConEventComment; eventLabel: string);
begin
    eventComment.EventLabel := eventLabel;
    eventComment.TextLine := GetConString(ConRead);
end;

procedure FillEnd(ConRead: TBinaryReader; eventEnd: TConEventEnd; eventLabel: string);
begin
    eventEnd.EventLabel := eventLabel;
end;

end.
