// ToDo: Place all templates here
unit ConEditPlus.Templates.Factory;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
     Conversation.Classes, ConEditPlus.Consts, ConEditPlus.Helpers, ConEditPlus.Enums;


function GenerateSpeech(aLabel, Speaker, SpeakingTo, SpeechString: string): TConEventSpeech;
function GenerateChoice(aLabel: string; NumChoices: Integer; ChoicesLabels: array of string): TConEventChoice;
function GenerateRandom(aLabel: string; JumpLabels: array of string; _bCycle, _bCycleOnce, _bCycleRandom: Boolean): TConEventRandom;
function GenerateEnd(aLabel: string = ''): TConEventEnd;

function GenerateConversation(Preset: TConversationPreset): TConversation;


implementation

uses MainWindow;

function GenerateSpeech(aLabel, Speaker, SpeakingTo, SpeechString: string): TConEventSpeech;
begin
    var NewSpeech := TConEventSpeech.Create();

    with NewSpeech do
    begin
        EventLabel := aLabel;

        ActorValue := Speaker;
        ActorIndex := frmMain.FindTableIdByName(TM_ActorsPawns, Speaker);

        ActorToValue := SpeakingTo;
        ActorToIndex := frmMain.FindTableIdByName(TM_ActorsPawns, SpeakingTo);

        TextLine := SpeechString;
    end;

    Result := NewSpeech;
end;

function GenerateChoice(aLabel: string; NumChoices: Integer; ChoicesLabels: array of string): TConEventChoice;
begin
    var NewChoice := TConEventChoice.Create();


    Result := NewChoice;
end;

function GenerateRandom(aLabel: string; JumpLabels: array of string; _bCycle, _bCycleOnce, _bCycleRandom: Boolean): TConEventRandom;
begin
    var NewRandom := TConEventRandom.Create();

    with NewRandom do
    begin
        numLabels := Length(JumpLabels);
        SetLength(GoToLabels, numLabels);
        Move(JumpLabels[0], GoToLabels[0], numLabels * SizeOf(string)); // copy array
        bCycle := _bCycle;
        bCycleOnce := _bCycleOnce;
        bCycleRandom := _bCycleRandom;
    end;

    Result := NewRandom;
end;

function GenerateEnd(aLabel: string = ''): TConEventEnd;
begin
    var EndEvent := TConEventEnd.Create();
    EndEvent.EventLabel := aLabel;

    Result := EndEvent;
end;

function GenerateConversation(Preset: TConversationPreset): TConversation;
begin
    var NewConvo := TConversation.Create();

    Result := NewConvo;
end;


end.
