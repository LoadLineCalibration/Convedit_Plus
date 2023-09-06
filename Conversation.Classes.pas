unit Conversation.Classes;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, ConvEditPlus_Const,
  System.Types, System.Generics.Collections;

type TEventType =
(
    ET_Speech,
	ET_Choice,
	ET_SetFlag,
	ET_CheckFlag,
	ET_CheckObject,
	ET_TransferObject,
	ET_MoveCamera,
	ET_Animation,
	ET_Trade,
	ET_Jump,
	ET_Random,
	ET_Trigger,
	ET_AddGoal,
	ET_AddNote,
	ET_AddSkillPoints,
	ET_AddCredits,
	ET_CheckPersona,
	ET_Comment,
	ET_End
);

// I don't know... maybe some of these translated enums will be useless.
// Camera Types
type TCameraTypes =
(
    CT_Predefined,  // 0
	CT_Speakers,    // 1
	CT_Actor,       // 2
    CT_Random       // 3
);

// Predefined Camera Positions
type TCameraPositions =
(
    CP_SideTight,
	CP_SideMid,
	CP_SideAbove,
	CP_SideAbove45,
	CP_ShoulderLeft,
	CP_ShoulderRight,
	CP_HeadShotTight,
	CP_HeadShotMid,
	CP_HeadShotLeft,
	CP_HeadShotRight,
	CP_HeadShotSlightRight,
	CP_HeadShotSlightLeft,
	CP_StraightAboveLookingDown,
	CP_StraightBelowLookingUp,
	CP_BelowLookingUp
);

type TCameraTransitions =
(
    TR_Jump,
    TR_Spline
);

type TAnimationModes =
(
    AM_Loop,
    AM_Once
);

type TConditions =
(
	EC_Less,
	EC_LessEqual,
	EC_Equal,
	EC_GreaterEqual,
	EC_Greater
);

// Event Persona types
type TPersonaTypes =
(
	EP_Credits,
	EP_Health,
	EP_SkillPoints
);

// for use in TConversation and TConEventCheckFlag
type TFlag = record
  flagIndex: Integer;
  flagName: string;
  flagValue: Boolean;
end;

// for use in TConEventSetFlag
type TFlagToSet = record
  flagIndex: Integer;
  flagName: string;
  flagValue: Boolean;
  flagExpiration: Integer;
end;

TConBaseObject = class(TObject) // base class!
    ReservedField: string;
end;

TConEvent = class(TConBaseObject)
    EventLabel: string; // can't use "Label"...
    EventType: TEventType; // speech, choice, etc...
end;

// Speech event
TConEventSpeech = class(TConEvent) // 00
    ActorIndex: Integer;
    ActorValue: string;

    ActorToIndex: Integer;
    ActorToValue: string;

    TextLine: string;
    mp3File: string;

    LineBreaksCount: Integer;  // To adjust height

    public
    constructor Create();
end;

TConEventChoice = class(TConEvent) // 01

    public
    constructor Create();
end;

TConEventSetFlag = class(TConEvent) // 02
    SetFlags: array of TFlagToSet;
    ArrayLength: Integer;

    public
    constructor Create();
end;

TConEventCheckFlag = class(TConEvent) // 03
    FlagsToCheck: array of TFlag;
    GotoLabel: string;
    ArrayLength: Integer;

    public
    constructor Create();
end;

TConEventCheckObject = class(TConEvent) // 04

    public
    constructor Create();
end;

TConEventTransferObject = class(TConEvent) // 05

    public
    constructor Create();
end;

TConEventMoveCamera = class(TConEvent) // 06
    CameraType: TCameraTypes;
    CameraAngle: TCameraPositions;
    CameraTransition: TCameraTransitions;

    public
    constructor Create();
end;

TConEventAnimation = class(TConEvent) // 07

    public
    constructor Create();
end;

TConEventTrade = class(TConEvent) // 08

    public
    constructor Create();
end;

TConEventJump = class(TConEvent) // 09
    gotoLabel: string;
    conversationId: Integer;
    currentConversationId: Integer;

    public
    constructor Create();
end;

TConEventRandom = class(TConEvent) // 10
    GoToLabels: array of string;
    bCycle: Boolean;
    bCycleOnce: Boolean;
    bCycleRandom: Boolean;

    public
    constructor Create();
end;

TConEventTrigger = class(TConEvent) // 11
    TriggerTag: string;

    public
    constructor Create();
end;

TConEventAddGoal = class(TConEvent) // 12
    GoalName: string;
    bComplete: Boolean;
    GoalText: string;
    bPrimaryGoal: Boolean;

    public
    constructor Create();
end;

TConEventAddNote = class(TConEvent) // 13
    TextLine: string;

    public
    constructor Create();
end;

TConEventAddSkillPoints = class(TConEvent) // 14
    Points: Integer;
    TextLine: string;

    public
    constructor Create();
end;

TConEventAddCredits = class(TConEvent) // 15
    Credits: Integer;
    public
    constructor Create();
end;

TConEventCheckPersona = class(TConEvent) // 16
    AttrToCheck: TPersonaTypes;
    Condition: TConditions;
    CheckValue: Integer;
    CheckGoToLabel: string;

    public
    constructor Create();
end;

TConEventComment = class(TConEvent) // 17
    TextLine: string;

    public
    constructor Create();
end;

TConEventEnd = class(TConEvent) // 18

    public
    constructor Create();
end;

// Every TConversation contaion events like End, TransferObject, etc.
TConversation = class(TConBaseObject)
    conName: string; // Conversation Name
    id: Integer;
    conCreatedByName: string;  // Who created event
    conCreatedByDate: string;

    conModifiedByName: string;
    conModifiedByDate: string;

    // conversation has only one owner
    conOwnerName: string; // Name of Actor owner
    conOwnerIndex: Integer;

    // How conversation is activated + options
    bInfoLink: Boolean; // True if this is a DataLink conversation
    bOnlyOnce: Boolean; // Flag to display conversation only once
    bPCBumps: Boolean;
    bPCFrobs: Boolean;  // Invoke by Frobbing
    bNonInteract: Boolean; // True if non-interactive conversation
    bFirstPerson: Boolean;
    bRandomCamera: Boolean;
    bCanInterrupt: Boolean;
    bCannotInterrupt: Boolean;
    bNPCSees: Boolean;
    bNPCEnters: Boolean;
    distance: Integer;

    // flags...
    conDependsOnFlags: array of TFlag;

    // events...
    Events: array of TConEvent;
    EventsCount: Integer; // for testing
end;


// For use in missions lists.
TMissionNumObj = class (TObject)
    missionNum: Integer;
    {public declarations}
    public
    constructor Create(num: Integer);
end;

// Contains base information about conversation file.
TConFileParameters = class (TObject)
  fpFileVersion: Integer;
  fpCreatedByName: string;
  fpCreatedByDate: string;

  fpModifiedByDate: string;
  fpModifiedByName: string;

  fpAudioPackage: string;
  fpNotes: string;

  var fpMissions: array of Integer;

  var fpActors: TStringList;
  var fpFlags: TStringList; //TStringList contains strings and automatically adds indexes, this is exactly what I need!
  var fpSkills: TStringList;
  var fpObjects: TStringList;
  {public declarations}
  public
  constructor Create();
  destructor Destroy(); override;

  procedure Clear();
  function conXMLDateTime(): string;
end;

// default values for flags
const
  DefaultFlagToSet: TFlagToSet = (flagIndex: -1; flagName: ''; flagValue: False; flagExpiration: 0);

const
  DefaultFlag: TFlag = (flagIndex: -1; flagName: ''; flagValue: False);

implementation

constructor TConEventSpeech.Create(); // 00
begin
    EventType:= ET_Speech;
end;

constructor TConEventChoice.Create(); // 01
begin
    EventType:= ET_Choice;
end;

constructor TConEventSetFlag.Create(); // 02
begin
    EventType:= ET_SetFlag;
end;

constructor TConEventCheckFlag.Create(); // 03
begin
  EventType := ET_CheckFlag;
end;

constructor TConEventCheckObject.Create(); // 04
begin
  EventType := ET_CheckObject;
end;

constructor TConEventTransferObject.Create(); // 05
begin
  EventType := ET_TransferObject;
end;

constructor TConEventMoveCamera.Create(); // 06
begin
  EventType := ET_MoveCamera;
end;

constructor TConEventAnimation.Create(); // 07
begin
  EventType := ET_Animation;
end;

constructor TConEventTrade.Create(); // 08
begin
  EventType := ET_Trade;
end;

constructor TConEventJump.Create(); // 09
begin
  EventType := ET_Jump;
end;

constructor TConEventRandom.Create(); // 10
begin
  EventType := ET_Random;
end;

constructor TConEventTrigger.Create(); // 11
begin
  EventType := ET_Trigger;
end;

constructor TConEventAddGoal.Create(); // 12
begin
  EventType := ET_AddGoal;
end;

constructor TConEventAddNote.Create(); // 13
begin
  EventType := ET_AddNote;
end;

constructor TConEventAddSkillPoints.Create(); // 14
begin
  EventType := ET_AddSkillPoints;
end;

constructor TConEventAddCredits.Create(); // 15
begin
  EventType := ET_AddCredits;
end;

constructor TConEventCheckPersona.Create(); // 16
begin
  EventType := ET_CheckPersona;
end;

constructor TConEventComment.Create(); // 17
begin
  EventType := ET_Comment;
end;

constructor TConEventEnd.Create(); // 18
begin
    EventType:= ET_End;
end;


constructor TMissionNumObj.Create(num: Integer);
begin
    missionNum := num;
end;

constructor TConFileParameters.Create(); // create required lists here. Also fill some fields.
begin
  fpFileVersion := CEP_CONXML_FILE_VERSION;
  fpCreatedByDate := conXMLDateTime();

  fpActors :=  TStringList.Create();
  fpFlags :=   TStringList.Create();
  fpSkills :=  TStringList.Create();
  fpObjects := TStringList.Create();

  inherited; // Super.doSomething()
end;

destructor TConFileParameters.Destroy(); // освободить память при уничтоженнии объекта
begin
  fpActors.Free();
  fpFlags.Free();
  fpSkills.Free();
  fpObjects.Free();

  inherited; // Super.doSomething()
end;

procedure TConFileParameters.Clear(); // clear everything and set current date + time
begin
  fpCreatedByName:= '';
  fpCreatedByDate:= conXMLDateTime();

  fpModifiedByName:= '';
  fpModifiedByDate:= conXMLDateTime();

  fpAudioPackage:= '';
  fpNotes:='';

  fpActors.Clear();
  fpFlags.Clear();
  fpSkills.Clear();
  fpObjects.Clear();
end;

function TConFileParameters.conXMLDateTime(): string;
begin
    var EngDate:= TFormatSettings.Create('en-US'); // Для записи даты на Английском (иначе берется язык системы)

    var myTime := FormatDateTime('HH:MM:SS', Now());
    var myDate := FormatDateTime('dd mmm yyyy', Now(), EngDate);

    Result := myDate + ' ' + myTime + ' GMT'; // stub, not a real GMT!
end;


end.
