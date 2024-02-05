//
// Unit for reading conversations xml files
//

unit ConXML.Reader;

interface

uses
    System.SysUtils, xml.VerySimple, Conversation.Classes, MainWindow, Vcl.ComCtrls, Vcl.Dialogs;


procedure LoadConXMLHeader(const aFile: string); // XML mode
procedure LoadConXMLConversations(const aFile: string);

procedure ReadXMLConvoInfo(conInfoNode: TXmlNode; conversation: TConversation);
procedure ReadXMLConvoParameters(conParamsInfoNode: TXmlNode; conversation: TConversation); // conversation flags, like OnlyOnce, Distance, etc.
procedure ReadXMLConvoFlags(conFlagsNode: TXmlNode; conversation: TConversation);

// events...
procedure ReadXMLSpeech(conSpeechNode: TXmlNode; speechEvent: TConEventSpeech);
procedure ReadXMLChoice(conChoiceNode: TXmlNode; choiceEvent: TConEventChoice);
procedure ReadXMLSetFlags(conSetFlags: TXmlNode; setFlagsEvent: TConEventSetFlag);
procedure ReadXMLCheckFlags(conCheckFlags: TXmlNode; checkFlagsEvent: TConEventCheckFlag);
procedure ReadXMLCheckObject(conCheckObject: TXmlNode; checkObjEvent: TConEventCheckObject);
procedure ReadXMLTransferObject(conTransObject: TXmlNode; transObjEvent: TConEventTransferObject);
procedure ReadXMLMoveCamera(conMoveCam: TXmlNode; moveCamEvent: TConEventMoveCamera);
procedure ReadXMLAnimation(conPlayAnim: TXmlNode; playAnimEvent: TConEventAnimation);
procedure ReadXMLTrade(conTrade: TXmlNode; tradeEvent: TConEventTrade);
procedure ReadXMLJump(conJump: TXmlNode; jumpEvent: TConEventJump);
procedure ReadXMLRandom(conRandom: TXmlNode; randomEvent: TConEventRandom);
procedure ReadXMLTrigger(conTrigger: TXmlNode; triggerEvent: TConEventTrigger);
procedure ReadXMLAddGoal(conAddGoal: TXmlNode; addGoalEvent: TConEventAddGoal);
procedure ReadXMLAddNote(conAddNote: TXmlNode; addNoteEvent: TConEventAddNote);
procedure ReadXMLAddSkillPoints(conAddSkillPts: TXmlNode; addSkillPtsEvent: TConEventAddSkillPoints);
procedure ReadXMLAddCredits(conCredits: TXmlNode; addCreditsEvent: TConEventAddCredits);
procedure ReadXMLCheckPersona(conCheckPersona: TXmlNode; checkPersonaEvent: TConEventCheckPersona);
procedure ReadXMLComment(conComment: TXmlNode; commentEvent: TConEventComment);
procedure ReadXMLEnd(conEnd: TXmlNode; endEvent: TConEventEnd);


implementation

procedure LoadConXMLHeader(const aFile: string);
var
    actorsNode, flagsNode,
    skillsNode, objectsNode,
    parametersNode,
    missionsArray, RootNode: TXmlNode;

    conXMLDocLocal: TXmlVerySimple;
begin
    with frmMain do
    begin
    ConvoTree.Items.Clear();
    ConEventList.Clear();
    ConversationsList.Clear();
    conFileParameters.Clear();
    conXMLDocLocal:= TXmlVerySimple.Create();
    conXMLDocLocal.Encoding := 'windows-1251';
    conXMLDocLocal.Options := [doCaseInsensitive];
try
    conXMLDocLocal.LoadFromFile(aFile);
    StatusBar.Panels[1].Text := aFile;

    RootNode := conXMLDocLocal.DocumentElement;
    parametersNode := RootNode.Find('Parameters'); // parameters node

    // read and fill parameters
    for var i:=0 to parametersNode.ChildNodes.Count -1 do
    begin
        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('fileVersion') then
           conFileParameters.fpFileVersion := parametersNode.ChildNodes[i].NodeValue.ToInteger;

        if parametersNode.ChildNodes[i].Name = 'createdBy' then  // Creator and date
        begin
           conFileParameters.fpCreatedByName := parametersNode.ChildNodes[i].Find('Name').NodeValue;
           conFileParameters.fpCreatedByDate := parametersNode.ChildNodes[i].Find('Date').NodeValue;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('modifiedBy') then  // who modified and date
        begin
           conFileParameters.fpModifiedByName := parametersNode.ChildNodes[i].Find('Name').NodeValue;
           conFileParameters.fpModifiedByDate := parametersNode.ChildNodes[i].Find('Date').NodeValue;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('audioPackage') then  // Audio Package
           conFileParameters.fpAudioPackage := parametersNode.ChildNodes[i].NodeValue;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('notes') then  // Notes
           conFileParameters.fpNotes := parametersNode.ChildNodes[i].NodeValue;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('missions') then  // array of missions
        begin
           missionsArray := parametersNode.ChildNodes[i];

           for var mi:= 0 to missionsArray.ChildNodes.Count -1 do  // set missions in array
           begin
               SetLength(conFileParameters.fpMissions, missionsArray.ChildNodes.Count); // set array length
               conFileParameters.fpMissions[mi] := missionsArray.ChildNodes[mi].NodeValue.ToInteger;
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('actors') then  // array of Actors/Pawns
        begin
           actorsNode := parametersNode.ChildNodes[i];

           for var act:= 0 to actorsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpActors.Insert(
               actorsNode.ChildNodes[act].Attributes['Index'].ToInteger,
               actorsNode.ChildNodes[act].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('flags') then  // array of Flags
        begin
           flagsNode := parametersNode.ChildNodes[i];

           for var flg:= 0 to flagsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpFlags.Insert(
               flagsNode.ChildNodes[flg].Attributes['Index'].ToInteger,
               flagsNode.ChildNodes[flg].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('skills') then  // array of skills
        begin
           skillsNode := parametersNode.ChildNodes[i];

           for var skl:= 0 to skillsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpSkills.Insert(
               skillsNode.ChildNodes[skl].Attributes['Index'].ToInteger,
               skillsNode.ChildNodes[skl].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('objects') then  // array of Objects
        begin
           objectsNode := parametersNode.ChildNodes[i];

           for var obj:= 0 to objectsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpObjects.Insert(
               objectsNode.ChildNodes[obj].Attributes['Index'].ToInteger,
               objectsNode.ChildNodes[obj].Attributes['Value']);
           end;
        end;
    end;
    finally
        conXMLDocLocal.Free();
    end;
    end;
end;

procedure LoadConXMLConversations(const aFile: string);
var
    conEventsNode, conversationsNode,
    RootNode, conParamsNode,
    conEventItem: TXmlNode;

    conXMLDocLocal: TXmlVerySimple;
    convoNameStr, ownerNameStr: string;
    tempConvo: TConversation;
begin
    conXMLDocLocal:= TXmlVerySimple.Create();
    conXMLDocLocal.Encoding := 'windows-1251';
    conXMLDocLocal.Options := [doCaseInsensitive];

try
    conXMLDocLocal.LoadFromFile(aFile);
    RootNode := conXMLDocLocal.DocumentElement;
    conversationsNode := RootNode.Find('Conversations'); // conversations node

    // Now conversations and owners
    for var con:=0 to conversationsNode.ChildNodes.Count -1 do
    begin
        conParamsNode := conversationsNode.ChildNodes[con];
        tempConvo := TConversation.Create();  // Create conversation object
        tempConvo.conName := conParamsNode.Attributes['Name'];

        for var k := 0 to conParamsNode.ChildNodes.Count -1 do
        begin
            if UpperCase(conParamsNode.ChildNodes[k].Name) = UpperCase('id') then
               tempConvo.id:= conParamsNode.ChildNodes[k].NodeValue.ToInteger;

            ReadXMLConvoInfo(conParamsNode.ChildNodes[k], tempConvo); // created, modified, owner
            ReadXMLConvoParameters(conParamsNode.ChildNodes[k], tempConvo);
            ReadXMLConvoFlags(conParamsNode.ChildNodes[k], tempConvo);  // read flags...

            // events...
            if UpperCase(conParamsNode.ChildNodes[k].Name) = UpperCase('Events') then
            begin
                conEventsNode:= conParamsNode.ChildNodes[k];

                for var ET:= 0 to conEventsNode.ChildNodes.Count -1 do
                begin
                    tempConvo.numEventList:= conEventsNode.ChildNodes.Count;
                    SetLength(tempConvo.Events,tempConvo.numEventList);

                    conEventItem := conEventsNode.ChildNodes[ET];
                    var EventTypeInt: Integer;
                    var strEventType: string;
                    var tempEvent: TConEvent;
                    var msgStr: String;

                    tempEvent:= nil;

                    EventTypeInt:= conEventsNode.ChildNodes[ET].Attributes['EventType'].ToInteger;
                    strEventType:= conEventsNode.ChildNodes[ET].Attributes['EventTypeName'];

                    // we found the "Speech" event, so let's create and fill it
                    if ((strEventType = 'Speech') and (EventTypeInt = 0)) then
                    begin
                        tempEvent:= TConEventSpeech.Create();
                        ReadXMLSpeech(conEventItem, TConEventSpeech(tempEvent));
                    end;

                    if ((strEventType = 'Choice') and (EventTypeInt = 1)) then
                    begin
                        tempEvent:= TConEventChoice.Create();
                        ReadXMLChoice(conEventItem, TConEventChoice(tempEvent));
                    end;

                    // "Set Flag" event
                    if ((strEventType = 'SetFlag') and (EventTypeInt = 2)) then
                    begin
                        tempEvent:= TConEventSetFlag.Create();
                        ReadXMLSetFlags(conEventItem, TConEventSetFlag(tempEvent));
                    end;

                    if ((strEventType = 'CheckFlag') and (EventTypeInt = 3)) then
                    begin
                        tempEvent:= TConEventCheckFlag.Create();
                        ReadXMLCheckFlags(conEventItem, TConEventCheckFlag(tempEvent));
                    end;

                    if ((strEventType = 'CheckObject') and (EventTypeInt = 4)) then
                    begin
                        tempEvent:= TConEventCheckObject.Create();
                        ReadXMLCheckObject(conEventItem, TConEventCheckObject(tempEvent));
                    end;

                    if ((strEventType = 'TransferObject') and (EventTypeInt = 5)) then
                    begin
                        tempEvent:= TConEventTransferObject.Create();
                        ReadXMLTransferObject(conEventItem, TConEventTransferObject(tempEvent));
                    end;

                    if ((strEventType = 'MoveCamera') and (EventTypeInt = 6)) then
                    begin
                        tempEvent:= TConEventMoveCamera.Create();
                        ReadXMLMoveCamera(conEventItem, TConEventMoveCamera(tempEvent));
                    end;

                    if ((strEventType = 'Animation') and (EventTypeInt = 7)) then
                    begin
                        tempEvent:= TConEventAnimation.Create();
                        ReadXMLAnimation(conEventItem, TConEventAnimation(tempEvent));
                    end;

                    if ((strEventType = 'Trade') and (EventTypeInt = 8)) then
                    begin // Not implemented even in mods....
                        tempEvent:= TConEventTrade.Create();
                        ReadXMLTrade(conEventItem, TConEventTrade(tempEvent));
                    end;

                    if ((strEventType = 'Jump') and (EventTypeInt = 9)) then
                    begin
                        tempEvent:= TConEventJump.Create();
                        ReadXMLJump(conEventItem, TConEventJump(tempEvent));
                    end;

                    if ((strEventType = 'Random') and (EventTypeInt = 10)) then
                    begin
                        tempEvent:= TConEventRandom.Create();
                        ReadXMLRandom(conEventItem, TConEventRandom(tempEvent));
                    end;

                    if ((strEventType = 'Trigger') and (EventTypeInt = 11)) then
                    begin
                        tempEvent:= TConEventTrigger.Create();
                        ReadXMLTrigger(conEventItem, TConEventTrigger(tempEvent));
                    end;

                    if ((strEventType = 'AddGoal') and (EventTypeInt = 12)) then
                    begin
                        tempEvent:= TConEventAddGoal.Create();
                        ReadXMLAddGoal(conEventItem, TConEventAddGoal(tempEvent));
                    end;

                    if ((strEventType = 'AddNote') and (EventTypeInt = 13)) then
                    begin
                        tempEvent:= TConEventAddNote.Create();
                        ReadXMLAddNote(conEventItem, TConEventAddNote(tempEvent));
                    end;

                    if ((strEventType = 'AddSkillPoints') and (EventTypeInt = 14)) then
                    begin
                        tempEvent:= TConEventAddSkillPoints.Create();
                        ReadXMLAddSkillPoints(conEventItem, TConEventAddSkillPoints(tempEvent));
                    end;

                    if ((strEventType = 'AddCredits') and (EventTypeInt = 15)) then
                    begin
                        tempEvent:= TConEventAddCredits.Create();
                        ReadXMLAddCredits(conEventItem, TConEventAddCredits(tempEvent));
                    end;

                    if ((strEventType = 'CheckPersona') and (EventTypeInt = 16)) then
                    begin
                        tempEvent:= TConEventCheckPersona.Create();
                        ReadXMLCheckPersona(conEventItem, TConEventCheckPersona(tempEvent));
                    end;

                    if ((strEventType = 'Comment') and (EventTypeInt = 17)) then
                    begin
                        tempEvent:= TConEventComment.Create();
                        ReadXMLComment(conEventItem, TConEventComment(tempEvent));
                    end;

                    if ((strEventType = 'End') and (EventTypeInt = 18)) then // "End" event
                    begin
                        tempEvent:= TConEventEnd.Create();
                        ReadXMLEnd(conEventItem, TConEventEnd(tempEvent));
                    end;

                    tempConvo.Events[ET] := tempEvent;
                end;
            end;
        end;

        frmMain.ConversationsList.Add(tempConvo);
    end;

finally
    conXMLDocLocal.Free();
end;
end;

procedure ReadXMLConvoInfo(conInfoNode: TXmlNode; conversation: TConversation);
begin
    if UpperCase(conInfoNode.Name) = UpperCase('createdBy') then  // who created this conversation
    begin
        for var sn := 0 to conInfoNode.ChildNodes.Count -1 do
        begin
            if UpperCase(conInfoNode.ChildNodes[sn].Name) = UpperCase('name') then
               conversation.conCreatedByName := conInfoNode.ChildNodes[sn].NodeValue;

            if UpperCase(conInfoNode.ChildNodes[sn].Name) = UpperCase('date') then
               conversation.conCreatedByDate := conInfoNode.ChildNodes[sn].NodeValue;
        end;
    end;

    if UpperCase(conInfoNode.Name) = UpperCase('ModifiedBy') then  // who modified this conversation
    begin
        for var sn := 0 to conInfoNode.ChildNodes.Count -1 do
        begin
            if UpperCase(conInfoNode.ChildNodes[sn].Name) = UpperCase('name') then
               conversation.conModifiedByName := conInfoNode.ChildNodes[sn].NodeValue;

            if UpperCase(conInfoNode.ChildNodes[sn].Name) = UpperCase('date') then
               conversation.conModifiedByDate := conInfoNode.ChildNodes[sn].NodeValue;
        end;
    end;

    if UpperCase(conInfoNode.Name) = UpperCase('owner') then  // Conversation owner
    begin
        for var sn := 0 to conInfoNode.ChildNodes.Count -1 do
        begin
            if UpperCase(conInfoNode.ChildNodes[sn].Name) = UpperCase('item') then
            begin
                conversation.conOwnerName := conInfoNode.ChildNodes[sn].Attributes['Value'];
                conversation.conOwnerIndex := conInfoNode.ChildNodes[sn].Attributes['Index'].ToInteger;
            end;
        end;
    end;
end;

procedure ReadXMLConvoParameters(conParamsInfoNode: TXmlNode; conversation: TConversation); // conversation flags, like OnlyOnce, Distance, etc.
begin
    // flags (Infolink, OnlyOnce, etc.)
    if UpperCase(conParamsInfoNode.Name) = UpperCase('infolink') then
        conversation.bInfoLink := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('onlyOnce') then
        conversation.bOnlyOnce := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('firstPerson') then
        conversation.bFirstPerson := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('nonInteract') then
        conversation.bNonInteract := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('randomCamera') then
        conversation.bRandomCamera := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('canInterrupt') then
        conversation.bCanInterrupt := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('canNOTInterrupt') then
        conversation.bCannotInterrupt := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('pcBumps') then
        conversation.bPCBumps := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('pcFrobs') then
        conversation.bPCFrobs := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('npsSees') then
        conversation.bNPCSees := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('npcEnters') then
        conversation.bNPCEnters := StrToBool(conParamsInfoNode.NodeValue);

    if UpperCase(conParamsInfoNode.Name) = UpperCase('distance') then
        conversation.distance := conParamsInfoNode.NodeValue.ToInteger;
end;

procedure ReadXMLConvoFlags(conFlagsNode: TXmlNode; conversation: TConversation);     // now flags...
begin
    if UpperCase(conFlagsNode.Name) = UpperCase('Flags') then
    begin
        // Set length of array and add items to that array.
        SetLength(conversation.conDependsOnFlags, conFlagsNode.ChildNodes.Count);

        for var flg:= 0 to conFlagsNode.ChildNodes.Count -1 do
        begin
            conversation.conDependsOnFlags[flg].flagIndex := conFlagsNode.ChildNodes[flg].Attributes['Index'].ToInteger;
            conversation.conDependsOnFlags[flg].flagName := conFlagsNode.ChildNodes[flg].Attributes['Name'];
            conversation.conDependsOnFlags[flg].flagValue := conFlagsNode.ChildNodes[flg].Attributes['Value'].ToBoolean;
        end;
    end;
end;

procedure ReadXMLSpeech(conSpeechNode: TXmlNode; speechEvent: TConEventSpeech);
begin
    // пройти по вложенным элементам
//    for var U:= 0 to conSpeechNode.ChildNodes.Count -1 do
    var currNode := conSpeechNode.ChildNodes.FirstChild;

    for var U:= 0 to conSpeechNode.ChildNodes.Count -1 do
    begin
//        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('Label') then
//           speechEvent.EventLabel := conSpeechNode.ChildNodes[U].NodeValue;
        if UpperCase(currNode.Name) = UpperCase('Label') then
           speechEvent.EventLabel := currNode.NodeValue;

        // actor
        if UpperCase(currNode.Name) = UpperCase('Actor') then
        begin
            speechEvent.ActorIndex := currNode.Find('Item').Attributes['Index'].ToInteger;
            speechEvent.ActorValue := currNode.Find('Item').Attributes['Value'];
        end;

        // actor to
        if UpperCase(currNode.Name) = UpperCase('ActorTo') then
        begin
            speechEvent.ActorToIndex := currNode.Find('Item').Attributes['Index'].ToInteger;
            speechEvent.ActorToValue := currNode.Find('Item').Attributes['Value'];
        end;

        // speech text
        if UpperCase(currNode.Name) = UpperCase('TextLine') then
        begin
           speechEvent.TextLine := currNode.NodeValue;
           speechEvent.LineBreaksCount := frmMain.CountLineBreaks(currNode.NodeValue);
        end;

        if UpperCase(currNode.Name) = UpperCase('mp3') then
           speechEvent.mp3File := currNode.NodeValue;

        currNode := currNode.NextSibling;
    end;
end;

{procedure ReadXMLSpeech(conSpeechNode: TXmlNode; speechEvent: TConEventSpeech);
begin
    // пройти по вложенным элементам
    for var U:= 0 to conSpeechNode.ChildNodes.Count -1 do
    begin
        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('Label') then
           speechEvent.EventLabel := conSpeechNode.ChildNodes[U].NodeValue;

        // actor
        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('Actor') then
        begin
            speechEvent.ActorIndex := conSpeechNode.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
            speechEvent.ActorValue := conSpeechNode.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        // actor to
        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('ActorTo') then
        begin
            speechEvent.ActorToIndex := conSpeechNode.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
            speechEvent.ActorToValue := conSpeechNode.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        // speech text
        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('TextLine') then
        begin
           speechEvent.TextLine := conSpeechNode.ChildNodes[U].NodeValue;
           speechEvent.LineBreaksCount := frmMain.CountLineBreaks(conSpeechNode.ChildNodes[U].NodeValue);
        end;

        if UpperCase(conSpeechNode.ChildNodes[U].Name) = UpperCase('mp3') then
           speechEvent.mp3File := conSpeechNode.ChildNodes[U].NodeValue;
    end;
end;    }

procedure ReadXMLChoice(conChoiceNode: TXmlNode; choiceEvent: TConEventChoice);
begin
    for var R:= 0 to conChoiceNode.ChildNodes.Count -1 do
    begin
        if UpperCase(conChoiceNode.ChildNodes[R].Name) = UpperCase('Label') then
           choiceEvent.EventLabel := conChoiceNode.ChildNodes[R].NodeValue;

        if UpperCase(conChoiceNode.ChildNodes[R].Name) = UpperCase('clearScreen') then
           choiceEvent.bClearScreen := conChoiceNode.ChildNodes[R].NodeValue.ToBoolean;

        if UpperCase(conChoiceNode.ChildNodes[R].Name) = UpperCase('Choices') then
        begin
            var temp_ChoiceItem:= conChoiceNode.ChildNodes[R];

            choiceEvent.NumChoices := temp_ChoiceItem.ChildNodes.Count;
            SetLength(choiceEvent.Choices, choiceEvent.NumChoices); // Range check error fix

            for var J:= 0 to temp_ChoiceItem.ChildNodes.Count -1 do begin

                var ChoiceField:=temp_ChoiceItem.ChildNodes[J];
                //SetLength(choiceEvent.Choices, ChoiceField.ChildNodes.Count);
                choiceEvent.Choices[J] := TChoiceItemObject.Create(); // Create object

                for var ci := 0 to ChoiceField.ChildNodes.Count -1 do
                begin
                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('Index') then
                        choiceEvent.Choices[J].Index := ChoiceField.ChildNodes[ci].NodeValue.ToInteger;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('TextLine') then begin
                        choiceEvent.Choices[J].textline := ChoiceField.ChildNodes[ci].NodeValue;
                    end;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('DisplayAsSpeech') then
                        choiceEvent.Choices[J].bDisplayAsSpeech := ChoiceField.ChildNodes[ci].NodeValue.ToBoolean;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('SkillNeeded') then
                    begin
                        //choiceEvent.Choices[J].bSkillNeeded := ChoiceField.ChildNodes[ci].NodeValue.ToInteger;
                        if (LowerCase(ChoiceField.ChildNodes[ci].NodeValue) = LowerCase('true')) or // Fix for XML files created before ConEditExport v7
                           (LowerCase(ChoiceField.ChildNodes[ci].NodeValue) = LowerCase('false')) then
                            choiceEvent.Choices[J].bSkillNeeded := -1 else
                            choiceEvent.Choices[J].bSkillNeeded := ChoiceField.ChildNodes[ci].NodeValue.ToInteger;
                    end;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('Skill') then
                        choiceEvent.Choices[J].Skill := ChoiceField.ChildNodes[ci].NodeValue;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('SkillLevel') then
                        choiceEvent.Choices[J].SkillLevel := ChoiceField.ChildNodes[ci].NodeValue.ToInteger;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('GoToLabel') then
                        choiceEvent.Choices[J].GoToLabel := ChoiceField.ChildNodes[ci].NodeValue;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('mp3') then
                        choiceEvent.Choices[J].mp3 := ChoiceField.ChildNodes[ci].NodeValue;

                    if UpperCase(ChoiceField.ChildNodes[ci].Name) = UpperCase('Flags') then
                    begin
                        SetLength(choiceEvent.Choices[J].RequiredFlags, ChoiceField.ChildNodes[ci].ChildNodes.Count);
                        Inc(choiceEvent.NumFlagsStrings, 1); // add extra 1 so choices and flags will fit into list item

                        for var RF:=0 to High(choiceEvent.Choices[J].RequiredFlags) do
                        begin
                            choiceEvent.Choices[J].RequiredFlags[RF].flagIndex := ChoiceField.ChildNodes[ci].ChildNodes[RF].Attributes['Index'].ToInteger;
                            choiceEvent.Choices[J].RequiredFlags[RF].flagName := ChoiceField.ChildNodes[ci].ChildNodes[RF].Attributes['Name'];
                            choiceEvent.Choices[J].RequiredFlags[RF].flagValue := ChoiceField.ChildNodes[ci].ChildNodes[RF].Attributes['Value'].ToBoolean;
                        end;
                    end;
                end;
            end;
        end;
    end;
end;

procedure ReadXMLSetFlags(conSetFlags: TXmlNode; setFlagsEvent: TConEventSetFlag);
begin
    for var U:= 0 to conSetFlags.ChildNodes.Count -1 do
    begin
        if UpperCase(conSetFlags.ChildNodes[U].Name) = UpperCase('Label') then
           setFlagsEvent.EventLabel := conSetFlags.ChildNodes[U].NodeValue;

        if UpperCase(conSetFlags.ChildNodes[U].Name) = UpperCase('Flags') then
        begin
            var temp_Flags:= conSetFlags.ChildNodes[U];
            // set array length
            //setFlagsEvent.ArrayLength := temp_Flags.ChildNodes.Count;
            setFlagsEvent.numFlags := temp_Flags.ChildNodes.Count;
            SetLength(setFlagsEvent.SetFlags, temp_Flags.ChildNodes.Count);

            // and fill it
            for var SF := 0 to temp_Flags.ChildNodes.Count -1 do
            begin
               setFlagsEvent.SetFlags[SF].flagIndex := temp_Flags.ChildNodes[SF].Attributes['Index'].ToInteger;
               setFlagsEvent.SetFlags[SF].flagName := temp_Flags.ChildNodes[SF].Attributes['Name'];
               setFlagsEvent.SetFlags[SF].flagValue := temp_Flags.ChildNodes[SF].Attributes['Value'].ToBoolean;

               if temp_Flags.ChildNodes[SF].HasAttribute('Obsolete') then // ѕохоже что атрибут "Obsolete" может отсутствовать, тогда пропускаем...
                  setFlagsEvent.SetFlags[SF].flagExpiration := temp_Flags.ChildNodes[SF].Attributes['Obsolete'].ToInteger;
            end;
        end;
    end;
end;

procedure ReadXMLCheckFlags(conCheckFlags: TXmlNode; checkFlagsEvent: TConEventCheckFlag);
begin
    for var U:= 0 to conCheckFlags.ChildNodes.Count -1 do
    begin
        if UpperCase(conCheckFlags.ChildNodes[U].Name) = UpperCase('Label') then
           checkFlagsEvent.EventLabel := conCheckFlags.ChildNodes[U].NodeValue;

        if UpperCase(conCheckFlags.ChildNodes[U].Name) = UpperCase('Flags') then
        begin
           var temp_chkFlags := conCheckFlags.ChildNodes[U];
           // set array length
           //checkFlagsEvent.ArrayLength := temp_chkFlags.ChildNodes.Count;
           checkFlagsEvent.numFlags := temp_chkFlags.ChildNodes.Count;
           SetLength(checkFlagsEvent.FlagsToCheck, temp_chkFlags.ChildNodes.Count);

           // and fill it
           for var chk:= 0 to temp_chkFlags.ChildNodes.Count -1 do
           begin
               checkFlagsEvent.FlagsToCheck[chk].flagIndex := temp_chkFlags.ChildNodes[chk].Attributes['Index'].ToInteger;
               checkFlagsEvent.FlagsToCheck[chk].flagName := temp_chkFlags.ChildNodes[chk].Attributes['Name'];
               checkFlagsEvent.FlagsToCheck[chk].flagValue := temp_chkFlags.ChildNodes[chk].Attributes['Value'].ToBoolean;
           end;
        end;

        if UpperCase(conCheckFlags.ChildNodes[U].Name) = UpperCase('gotoLabel') then
           checkFlagsEvent.GotoLabel := conCheckFlags.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLCheckObject(conCheckObject: TXmlNode; checkObjEvent: TConEventCheckObject);
begin
    for var U:= 0 to conCheckObject.ChildNodes.Count -1 do
    begin
        if UpperCase(conCheckObject.ChildNodes[U].Name) = UpperCase('Label') then
           checkObjEvent.EventLabel := conCheckObject.ChildNodes[U].NodeValue;

        if UpperCase(conCheckObject.ChildNodes[U].Name) = UpperCase('Object') then begin
           checkObjEvent.ObjectValue := conCheckObject.ChildNodes[U].Find('Item').Attributes['Value'];
           checkObjEvent.ObjectIndex := conCheckObject.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
        end;

        if UpperCase(conCheckObject.ChildNodes[U].Name) = UpperCase('GotoLabel') then
           checkObjEvent.GoToLabel := conCheckObject.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLTransferObject(conTransObject: TXmlNode; transObjEvent: TConEventTransferObject);
begin
    for var U:= 0 to conTransObject.ChildNodes.Count -1 do
    begin
        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('Label') then
           transObjEvent.EventLabel := conTransObject.ChildNodes[U].NodeValue;

        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('Object') then begin
           transObjEvent.ObjectIndex := conTransObject.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
           transObjEvent.ObjectValue := conTransObject.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('ActorFrom') then begin
           transObjEvent.ActorFromIndex := conTransObject.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
           transObjEvent.ActorFromValue := conTransObject.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('ActorTo') then begin
           transObjEvent.ActorToIndex := conTransObject.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
           transObjEvent.ActorToValue := conTransObject.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('Amount') then
           transObjEvent.Amount := conTransObject.ChildNodes[U].NodeValue.ToInteger;

        if UpperCase(conTransObject.ChildNodes[U].Name) = UpperCase('GotoLabel') then
           transObjEvent.GotoLabel := conTransObject.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLMoveCamera(conMoveCam: TXmlNode; moveCamEvent: TConEventMoveCamera);
begin
    for var U:= 0 to conMoveCam.ChildNodes.Count -1 do
    begin
        if UpperCase(conMoveCam.ChildNodes[U].Name) = UpperCase('Label') then
           moveCamEvent.EventLabel := conMoveCam.ChildNodes[U].NodeValue;

        if UpperCase(conMoveCam.ChildNodes[U].Name) = UpperCase('Type') then
        begin
            case conMoveCam.ChildNodes[U].NodeValue.ToInteger of
            0: moveCamEvent.CameraType := CT_Predefined;
            1: moveCamEvent.CameraType := CT_Speakers;
            2: moveCamEvent.CameraType := CT_Actor;
            3: moveCamEvent.CameraType := CT_Random;
            end;
        end;

        if UpperCase(conMoveCam.ChildNodes[U].Name) = UpperCase('Angle') then
        begin
            case conMoveCam.ChildNodes[U].NodeValue.ToInteger of
            0: moveCamEvent.CameraAngle := CP_SideTight;
            1: moveCamEvent.CameraAngle := CP_SideMid;
            2: moveCamEvent.CameraAngle := CP_SideAbove;
            3: moveCamEvent.CameraAngle := CP_SideAbove45;
            4: moveCamEvent.CameraAngle := CP_ShoulderLeft;
            5: moveCamEvent.CameraAngle := CP_ShoulderRight;
            6: moveCamEvent.CameraAngle := CP_HeadShotTight;
            7: moveCamEvent.CameraAngle := CP_HeadShotMid;
            8: moveCamEvent.CameraAngle := CP_HeadShotLeft;
            9: moveCamEvent.CameraAngle := CP_HeadShotRight;
            10: moveCamEvent.CameraAngle := CP_HeadShotSlightRight;
            11: moveCamEvent.CameraAngle := CP_HeadShotSlightLeft;
            12: moveCamEvent.CameraAngle := CP_StraightAboveLookingDown;
            13: moveCamEvent.CameraAngle := CP_StraightBelowLookingUp;
            14: moveCamEvent.CameraAngle := CP_BelowLookingUp;
            end;
        end;

        if UpperCase(conMoveCam.ChildNodes[U].Name) = UpperCase('Transition') then
        begin
            case conMoveCam.ChildNodes[U].NodeValue.ToInteger of
            0: moveCamEvent.CameraTransition := TR_Jump;
            1: moveCamEvent.CameraTransition := TR_Spline;
            end;
        end;
    end;
end;

procedure ReadXMLAnimation(conPlayAnim: TXmlNode; playAnimEvent: TConEventAnimation);
begin
    for var U:= 0 to conPlayAnim.ChildNodes.Count -1 do
    begin
        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('Label') then
           playAnimEvent.EventLabel := conPlayAnim.ChildNodes[U].NodeValue;

        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('Actor') then begin
           playAnimEvent.ActorIndex := conPlayAnim.ChildNodes[U].Find('Item').Attributes['Index'].ToInteger;
           playAnimEvent.ActorValue := conPlayAnim.ChildNodes[U].Find('Item').Attributes['Value'];
        end;

        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('sequence') then
           playAnimEvent.AnimSequence := conPlayAnim.ChildNodes[U].NodeValue;

        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('playOnce') then
           playAnimEvent.bAnimPlayOnce := conPlayAnim.ChildNodes[U].NodeValue.ToBoolean;

        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('playForSeconds') then
           playAnimEvent.AnimPlayForSeconds := conPlayAnim.ChildNodes[U].NodeValue.ToInteger;

        if UpperCase(conPlayAnim.ChildNodes[U].Name) = UpperCase('waitToFinish') then
           playAnimEvent.bAnimWaitToFinish := conPlayAnim.ChildNodes[U].NodeValue.ToBoolean;
    end;
end;

procedure ReadXMLTrade(conTrade: TXmlNode; tradeEvent: TConEventTrade);
begin
    for var U:= 0 to conTrade.ChildNodes.Count -1 do
    begin
        if UpperCase(conTrade.ChildNodes[U].Name) = UpperCase('Label') then
           TradeEvent.EventLabel := conTrade.ChildNodes[U].NodeValue;
    end;
end;


procedure ReadXMLJump(conJump: TXmlNode; jumpEvent: TConEventJump);
begin
    for var U:= 0 to conJump.ChildNodes.Count -1 do
    begin
        if UpperCase(conJump.ChildNodes[U].Name) = UpperCase('Label') then
           jumpEvent.EventLabel := conJump.ChildNodes[U].NodeValue;

        if UpperCase(conJump.ChildNodes[U].Name) = UpperCase('gotoLabel') then
           jumpEvent.gotoLabel := conJump.ChildNodes[U].NodeValue;

        if UpperCase(conJump.ChildNodes[U].Name) = UpperCase('conversationId') then
           jumpEvent.conversationId := conJump.ChildNodes[U].NodeValue.ToInteger;

        if UpperCase(conJump.ChildNodes[U].Name) = UpperCase('currentConversationId') then
           jumpEvent.currentConversationId := conJump.ChildNodes[U].NodeValue.ToInteger;
    end;
end;

procedure ReadXMLRandom(conRandom: TXmlNode; randomEvent: TConEventRandom);
begin
    for var U:= 0 to conRandom.ChildNodes.Count -1 do
    begin
        if UpperCase(conRandom.ChildNodes[U].Name) = UpperCase('Label') then
           randomEvent.EventLabel := conRandom.ChildNodes[U].NodeValue;

        if UpperCase(conRandom.ChildNodes[U].Name) = UpperCase('Cycle') then
           randomEvent.bCycle := conRandom.ChildNodes[U].NodeValue.ToBoolean;

        if UpperCase(conRandom.ChildNodes[U].Name) = UpperCase('CycleOnce') then
           randomEvent.bCycleOnce := conRandom.ChildNodes[U].NodeValue.ToBoolean;

        if UpperCase(conRandom.ChildNodes[U].Name) = UpperCase('CycleRandom') then
           randomEvent.bCycleRandom := conRandom.ChildNodes[U].NodeValue.ToBoolean;

        if UpperCase(conRandom.ChildNodes[U].Name) = UpperCase('GotoLabels') then
        begin
           var temp_randArray := conRandom.ChildNodes[U];

           SetLength(randomEvent.GoToLabels, temp_randArray.ChildNodes.Count);

           for var rnd:=0 to temp_randArray.ChildNodes.Count -1 do
           begin
               randomEvent.GoToLabels[rnd] := temp_randArray.ChildNodes[rnd].NodeValue;
           end;
        end;
    end;
end;

procedure ReadXMLTrigger(conTrigger: TXmlNode; triggerEvent: TConEventTrigger);
begin
    for var U:= 0 to conTrigger.ChildNodes.Count -1 do
    begin
        if UpperCase(conTrigger.ChildNodes[U].Name) = UpperCase('Label') then
           triggerEvent.EventLabel := conTrigger.ChildNodes[U].NodeValue;

        if UpperCase(conTrigger.ChildNodes[U].Name) = UpperCase('TriggerTag') then
           triggerEvent.TriggerTag := conTrigger.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLAddGoal(conAddGoal: TXmlNode; addGoalEvent: TConEventAddGoal);
begin
    for var U:= 0 to conAddGoal.ChildNodes.Count -1 do
    begin
        if UpperCase(conAddGoal.ChildNodes[U].Name) = UpperCase('Label') then
           addGoalEvent.EventLabel := conAddGoal.ChildNodes[U].NodeValue;

        if UpperCase(conAddGoal.ChildNodes[U].Name) = UpperCase('Name') then
           addGoalEvent.GoalName := conAddGoal.ChildNodes[U].NodeValue;

        if UpperCase(conAddGoal.ChildNodes[U].Name) = UpperCase('Complete') then
           addGoalEvent.bComplete := conAddGoal.ChildNodes[U].NodeValue.ToBoolean();

        if UpperCase(conAddGoal.ChildNodes[U].Name) = UpperCase('TextLine') then
           addGoalEvent.GoalText := conAddGoal.ChildNodes[U].NodeValue;

        if UpperCase(conAddGoal.ChildNodes[U].Name) = UpperCase('Primary') then
           addGoalEvent.bPrimaryGoal := conAddGoal.ChildNodes[U].NodeValue.ToBoolean();
    end;
end;

procedure ReadXMLAddNote(conAddNote: TXmlNode; addNoteEvent: TConEventAddNote);
begin
    for var U:= 0 to conAddNote.ChildNodes.Count -1 do
    begin
        if UpperCase(conAddNote.ChildNodes[U].Name) = UpperCase('Label') then
           addNoteEvent.EventLabel := conAddNote.ChildNodes[U].NodeValue;

        if UpperCase(conAddNote.ChildNodes[U].Name) = UpperCase('TextLine') then
           addNoteEvent.TextLine := conAddNote.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLAddSkillPoints(conAddSkillPts: TXmlNode; addSkillPtsEvent: TConEventAddSkillPoints);
begin
    for var U:= 0 to conAddSkillPts.ChildNodes.Count -1 do
    begin
        if UpperCase(conAddSkillPts.ChildNodes[U].Name) = UpperCase('Label') then
           addSkillPtsEvent.EventLabel := conAddSkillPts.ChildNodes[U].NodeValue;

        if UpperCase(conAddSkillPts.ChildNodes[U].Name) = UpperCase('Points') then
           addSkillPtsEvent.Points := conAddSkillPts.ChildNodes[U].NodeValue.ToInteger;

        if UpperCase(conAddSkillPts.ChildNodes[U].Name) = UpperCase('TextLine') then
           addSkillPtsEvent.TextLine := conAddSkillPts.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLAddCredits(conCredits: TXmlNode; addCreditsEvent: TConEventAddCredits);
begin
    for var U:= 0 to conCredits.ChildNodes.Count -1 do
    begin
        if UpperCase(conCredits.ChildNodes[U].Name) = UpperCase('Label') then
           addCreditsEvent.EventLabel := conCredits.ChildNodes[U].NodeValue;

        if UpperCase(conCredits.ChildNodes[U].Name) = UpperCase('Points') then
           addCreditsEvent.Credits := conCredits.ChildNodes[U].NodeValue.ToInteger;
    end;
end;

procedure ReadXMLCheckPersona(conCheckPersona: TXmlNode; checkPersonaEvent: TConEventCheckPersona);
begin
    for var U:= 0 to conCheckPersona.ChildNodes.Count -1 do
    begin
        if UpperCase(conCheckPersona.ChildNodes[U].Name) = UpperCase('Label') then
           checkPersonaEvent.EventLabel := conCheckPersona.ChildNodes[U].NodeValue;

        if UpperCase(conCheckPersona.ChildNodes[U].Name) = UpperCase('Object') then
        begin
            case conCheckPersona.ChildNodes[U].NodeValue.ToInteger of
            0: checkPersonaEvent.AttrToCheck := EP_Credits;
            1: checkPersonaEvent.AttrToCheck := EP_Health;
            2: checkPersonaEvent.AttrToCheck := EP_SkillPoints;
            end;
        end;

        if UpperCase(conCheckPersona.ChildNodes[U].Name) = UpperCase('Relation') then
        begin
            case conCheckPersona.ChildNodes[U].NodeValue.ToInteger of
            0: checkPersonaEvent.Condition := EC_Less;
            1: checkPersonaEvent.Condition := EC_LessEqual;
            2: checkPersonaEvent.Condition := EC_Equal;
            3: checkPersonaEvent.Condition := EC_GreaterEqual;
            4: checkPersonaEvent.Condition := EC_Greater;
            end;
        end;

        if UpperCase(conCheckPersona.ChildNodes[U].Name) = UpperCase('Value') then
           checkPersonaEvent.CheckValue := conCheckPersona.ChildNodes[U].NodeValue.ToInteger;

        if UpperCase(conCheckPersona.ChildNodes[U].Name) = UpperCase('GoToLabel') then
           checkPersonaEvent.CheckGoToLabel := conCheckPersona.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLComment(conComment: TXmlNode; commentEvent: TConEventComment);
begin
    for var U:= 0 to conComment.ChildNodes.Count -1 do
    begin
        if UpperCase(conComment.ChildNodes[U].Name) = UpperCase('Label') then
           commentEvent.EventLabel := conComment.ChildNodes[U].NodeValue;

        if UpperCase(conComment.ChildNodes[U].Name) = UpperCase('TextLine') then
           commentEvent.TextLine := conComment.ChildNodes[U].NodeValue;
    end;
end;

procedure ReadXMLEnd(conEnd: TXmlNode; endEvent: TConEventEnd);
begin
    for var U:= 0 to conEnd.ChildNodes.Count -1 do
    begin
        if UpperCase(conEnd.ChildNodes[U].Name) = UpperCase('Label') then
           endEvent.EventLabel := conEnd.ChildNodes[U].NodeValue;
    end;
end;


end.
