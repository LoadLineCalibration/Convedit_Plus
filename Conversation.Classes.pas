//
// Contains enums, class declarations, etc.
//

unit Conversation.Classes;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, ConEditPlus.Consts,
  System.Types, System.Generics.Collections;

function conXMLDateTime(): string;


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

type TEventHighlightType =
(
    EHT_None, // do not highlight
    EHT_Related,  // Highlight as related (yellow gradient)
    EHT_Error // Error, some labels are missing
);


// for use in TConversation and TConEventCheckFlag
type TFlag = record
    flagIndex: Integer;
    flagName: string;
    flagValue: Boolean;
    flagExpiration: Integer;
end;

TConBaseObject = class(TObject) // base class!
    public

    destructor Destroy(); override;
end;

TChoiceItemObject = class(TConBaseObject) // for editing Choice Items, use as listview item.data
    public
    Index: Integer;
    textline: string;
    bDisplayAsSpeech: Boolean;
    bSkillNeeded: Integer; // 4 bytes. if -1, then Skill is not required. Otherwise there will be skill id from table and skillName.
                           // 0 - true, -1 false
                           // was Boolean before ConEditExport ver. 7
     Skill: string; // skillName
     SkillLevel: Integer; // from 0 to 3
    GoToLabel: string;
    mp3: string;
    RequiredFlags: array of TFlag;
end;


TConEvent = class(TConBaseObject)
    EventIdx: Integer; // looks like Index (was Unknown0)
    unknown1: Integer; // Checked decompiled convos, looks like Index + 1.
    EventLabel: string; // can't use "Label"...
    EventType: TEventType; // speech, choice, etc...

    EventHighlightType: TEventHighlightType; // To highlight events (related/error)
end;

// Speech event
TConEventSpeech = class(TConEvent) // 00
    ActorIndex: Integer;
    ActorValue: string;

    ActorToIndex: Integer;
    ActorToValue: string;

    TextLine: string;
    mp3File: string;

    bContinued: Boolean; // not used
    bBold: Boolean;      // not used
    SpeechFont: Integer; // not used

    LineWrapCount: Integer;  // To adjust height

    public
    constructor Create();
end;

TConEventChoice = class(TConEvent) // 01
    choice_unk0: Integer; // 4 bytes
    bClearScreen: boolean;
    Choices: array of TChoiceItemObject;
    NumChoices: Integer; // for height of this item in the events list
    NumFlagsRefs: Integer; // same

    public
    constructor Create();
end;

TConEventSetFlag = class(TConEvent) // 02
    SetFlags: array of TFlag;
    numFlags: Integer;

    public
    constructor Create();
end;

TConEventCheckFlag = class(TConEvent) // 03
    numFlags: Integer;
    FlagsToCheck: array of TFlag;
    GotoLabel: string;

    public
    constructor Create();
end;

TConEventCheckObject = class(TConEvent) // 04
    ObjectIndex: Integer;
    ObjectValue: string;
    GoToLabel: string;

    public
    constructor Create();
end;

TConEventTransferObject = class(TConEvent) // 05
    ObjectIndex: Integer;
    ObjectValue: string;
    Amount: Integer;
    ActorFromIndex: Integer;
    ActorFromValue: string;
    ActorToIndex: Integer;
    ActorToValue: string;
    GotoLabel: string;

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
    ActorIndex: Integer;
    ActorValue: string;

    AnimSequence: string;
    bAnimPlayOnce: Boolean;
    AnimPlayForSeconds: Integer;
    bAnimWaitToFinish: Boolean;

    public
    constructor Create();
end;

TConEventTrade = class(TConEvent) // 08
    TradeActorIndex: Integer;
    TradeActorValue: string;

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
    numLabels: Integer;
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
    LineWrapCount: Integer;  // To adjust height
    bPrimaryGoal: Boolean;

    public
    constructor Create();
end;

TConEventAddNote = class(TConEvent) // 13
    TextLine: string;
    LineWrapCount: Integer;  // To adjust height

    public
    constructor Create();
end;

TConEventAddSkillPoints = class(TConEvent) // 14
    Points: Integer;
    TextLine: string;
    LineWrapCount: Integer;  // To adjust height

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
    LineWrapCount: Integer;  // To adjust height

    public
    constructor Create();
end;

TConEventEnd = class(TConEvent) // 18

    public
    constructor Create();
end;

// Every TConversation contains events like End, TransferObject, etc.
TConversation = class(TConBaseObject)
    unknown0: Integer; // Для .con файлов, 4 байта. Выглядит так будто это дубликат numEventList!
    id: Integer;
    conName: string; // Conversation Name
    conDescription: string; // missing in XML version?

    conCreatedByDate: string;
    conCreatedByName: string;  // Who created this conversation

    conModifiedByDate: string;
    conModifiedByName: string;

    // conversation has only one owner
    conOwnerIndex: Integer;
    conOwnerName: string; // Name of Actor owner

    // How conversation is activated + options
    bInfoLink: Boolean; // True if this is a DataLink conversation
    conNotes: string; // Did anyone ever used Notes and Description fields?
    bOnlyOnce: Boolean; // Flag to display conversation only once
    bFirstPerson: Boolean;
    bNonInteract: Boolean; // True if non-interactive conversation
    bRandomCamera: Boolean;
    bCanInterrupt: Boolean;
    bCannotInterrupt: Boolean;
    bPCBumps: Boolean;
    bPCFrobs: Boolean;  // Invoke by Frobbing
    bNPCSees: Boolean;
    bNPCEnters: Boolean;
    distance: Integer;

    // flags...
    conDependsOnFlags: array of TFlag;

    // events...
    numEventList: Integer; // 4 bytes
    Events: array of TConEvent;

    constructor Create();
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

    tablesSize: Integer; // for .con files
    var fpActors: TStringList;
    var fpFlags: TStringList; //TStringList contains strings and automatically adds indexes, this is exactly what I need!
    var fpSkills: TStringList;
    var fpObjects: TStringList;
    {public declarations}
    public
    constructor Create();
    destructor Destroy(); override;

    procedure Clear();
end;

// default values for flags
const
    DefaultFlag: TFlag = (flagIndex: -1; flagName: ''; flagValue: False; flagExpiration: 0);


implementation

destructor TConBaseObject.Destroy();
begin
    inherited;
end;

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

constructor TConversation.Create();
begin
    conCreatedByDate := conXMLDateTime();
    conModifiedByDate := conXMLDateTime();

    // defaults from OG ConEdit
    bOnlyOnce := True;
    bPCFrobs := True;
    bPCBumps := True;

    inherited;
end;

constructor TConFileParameters.Create(); // create required lists here. Also fill some fields.
begin
    fpFileVersion := CEP_CONXML_FILE_VERSION;
    fpCreatedByDate := conXMLDateTime();

    fpActors  := TStringList.Create();
    fpFlags   := TStringList.Create();
    fpSkills  := TStringList.Create();
    fpObjects := TStringList.Create();

    inherited;
end;

destructor TConFileParameters.Destroy(); // освободить память при уничтоженнии объекта
begin
    fpActors.Free();
    fpFlags.Free();
    fpSkills.Free();
    fpObjects.Free();

    inherited;
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

function conXMLDateTime(): string;
var
    currDateTime: string;
begin
    currDateTime := DateTimeToStr(Now());
    Result := currDateTime;
end;


end.
