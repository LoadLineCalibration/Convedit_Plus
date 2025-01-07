// ToDo: Move all colors here
unit ConEditPlus.Colors;

interface

uses
    Vcl.Graphics;

type
  TEventListColors = record
    SpeechBG: TColor; // Regular speech background color
    SpeechBGNoAudio: TColor; // Speech without audio: background
    SpeechText: TColor; // Speech text color

    PlayerSpeechBG: TColor; // Player speech
    PlayerSpeechBindName: TColor; // Player BindName Text color
    PlayerSpeechText: TColor; // Player speech text color

    ChoiceBG: TColor; // choice background
    ChoiceBGNoAudio: TColor; // choice without audio
    ChoiceText: TColor; // choice text color
    ChoiceFlagsText: TColor; // choice flags text color

    SetFlagBG: TColor; // SetFlag background
    SetFlagText: TColor; // SetFlag text color

    CheckFlagBG: TColor;
    CheckFlagText: TColor;

    CheckObjectBG: TColor;
    CheckObjectText: TColor;

    TransferObjectBG: TColor;
    TransferObjectText: TColor;

    MoveCameraBG: TColor;
    MoveCameraText: TColor;

    AnimationBG: TColor;
    AnimationText: TColor;

    TradeBG: TColor;
    TradeText: TColor;

    JumpBG: TColor;
    JumpText: TColor;
    JumpLink: TColor; // "Jump to this conversation..." link color

    RandomBG: TColor;
    RandomText: TColor;
    RandomLabels: TColor; // list of labels

    TriggerBG: TColor;
    TriggerText: TColor;

    AddGoalBG: TColor;
    AddGoalText: TColor;

    AddNoteBG: TColor;
    AddNoteText: TColor;

    AddSkillPointsBG: TColor;
    AddSkillPointsText: TColor;

    AddCreditsBG: TColor;
    AddCreditsText: TColor;

    CheckPersonaBG: TColor;
    CheckPersonaText: TColor;

    CommentBG: TColor;
    CommentText: TColor;

    EndBG: TColor; // No text!

    HighlightEvent: TColor; // Selected event
    HighlightEventFrom: TColor; // Selected Event first color of gradient fill
    HighlightEventTo: TColor; // Selected Event second color of gradient fill

    GridBG: TColor; // event separator first color
    GridColor: TColor; // event separator second color

    EventHeaderText: TColor; // Event name (Speech, Choice, etc.)

    RelatedEventFrom: TColor; // Events, referenced by selected event (and vice versa), first color of gradient
    RelatedEventTo: TColor; // Events, referenced by selected event (and vice versa), second color of gradient

    ErrorEventFrom: TColor; // Event with error, first (left) color
    ErrorEventTo: TColor; // Event with error, second (right) color

    EventWithLabel: TColor; // Left part of the event, only if contains a label
    EventLabelText: TColor; // ...and label text color

    EventListBG: TColor;
  end;

const // Default colors for regular mode
  DefaultTEventsColors: TEventListColors =
  (
    SpeechBG: $C0DCC0;
    SpeechBGNoAudio: $FFFF00;
    SpeechText: clBlack;

    PlayerSpeechBG: $DCF5F5; // Beige
    PlayerSpeechBindName: $800000;
    PlayerSpeechText: clNavy;

    ChoiceBG: $00FFFAC8;
    ChoiceBGNoAudio: $00C0FFFF;
    ChoiceText: clBlack;
    ChoiceFlagsText: clBlue;

    SetFlagBG: $00F0F0F0;
    SetFlagText: clBlack;

    CheckFlagBG: $00F5F5F5;
    CheckFlagText: clBlack;

    CheckObjectBG: $00F0F0F0;
    CheckObjectText: clBlack;

    TransferObjectBG: $00F5F5F5;
    TransferObjectText: clBlack;

    MoveCameraBG: $00F0F0F0;
    MoveCameraText: clBlack;

    AnimationBG: $00F0F0F0;
    AnimationText: clBlack;

    TradeBG: clWhite;
    TradeText: clBlack;

    JumpBG: $00FAFFF0;
    JumpText: clBlack;
    JumpLink: clBlue;

    RandomBG: $00F5F5F5;
    RandomText: clBlack;
    RandomLabels: clBlue;

    TriggerBG: $00F0FFF0;
    TriggerText: clBlack;

    AddGoalBG: $00FFFFF5;
    AddGoalText: clBlack;

    AddNoteBG: $00F0FFF0;
    AddNoteText: clBlack;

    AddSkillPointsBG: $00F5F0F5;
    AddSkillPointsText: clBlue;

    AddCreditsBG: $00FFF4F5;
    AddCreditsText: clBlack;

    CheckPersonaBG: $00F4F4FF;
    CheckPersonaText: clBlack;

    CommentBG: $00EEEEEE;
    CommentText: clBlack;

    EndBG: clWhite;

    HighlightEvent: $701919; //5789784; //$701919; //    HighlightEvent: 5789784;
    HighlightEventFrom: 16767927;
    HighlightEventTo: 16777215;

    GridBG: clWhite;
    GridColor:$808080;

    EventHeaderText: clBlack;

    RelatedEventFrom: clYellow;
    RelatedEventTo: $F0FBFF;

    ErrorEventFrom: $00A5FF;
    ErrorEventTo: clRed;

    EventWithLabel: clLime;
    EventLabelText: clMaroon;

    EventListBG: clWhite;
  );

const // Softer colors for regular mode
  SofterTEventsColors: TEventListColors =
  (
    SpeechBG: $D8E8D8; // softer green
    SpeechBGNoAudio: $FFFFE0; // light yellow
    SpeechText: clBlack;

    PlayerSpeechBG: $E0F5F5; // light beige
    PlayerSpeechBindName: $A0522D; // sienna
    PlayerSpeechText: clNavy;

    ChoiceBG: $E6FFFA; // light cyan
    ChoiceBGNoAudio: $E0FFFF; // very light cyan
    ChoiceText: clBlack;
    ChoiceFlagsText: clBlue;

    SetFlagBG: $F0F0F0;
    SetFlagText: clBlack;

    CheckFlagBG: $F5F5F5;
    CheckFlagText: clBlack;

    CheckObjectBG: $F0F0F0;
    CheckObjectText: clBlack;

    TransferObjectBG: $F5F5F5;
    TransferObjectText: clBlack;

    MoveCameraBG: $F0F0F0;
    MoveCameraText: clBlack;

    AnimationBG: $F0F0F0;
    AnimationText: clBlack;

    TradeBG: clWhite;
    TradeText: clBlack;

    JumpBG: $F0FFF0; // softer green
    JumpText: clBlack;
    JumpLink: clBlue;

    RandomBG: $F5F5F5;
    RandomText: clBlack;
    RandomLabels: clBlue;

    TriggerBG: $F0FFF0; // light green
    TriggerText: clBlack;

    AddGoalBG: $FFFFF5; // very light yellow
    AddGoalText: clBlack;

    AddNoteBG: $F0FFF0; // light green
    AddNoteText: clBlack;

    AddSkillPointsBG: $F5F0F5; // light pink
    AddSkillPointsText: clBlue;

    AddCreditsBG: $FFF4F5; // very light pink
    AddCreditsText: clBlack;

    CheckPersonaBG: $F4F4FF; // very light lavender
    CheckPersonaText: clBlack;

    CommentBG: $EEEEEE;
    CommentText: clBlack;

    EndBG: clWhite;

    HighlightEvent: $FFA07A; // light salmon
    HighlightEventFrom: $FFE4E1; // misty rose
    HighlightEventTo: $FFF5EE; // seashell

    GridBG: clWhite;
    GridColor: $D3D3D3; // light gray

    EventHeaderText: clBlack;

    RelatedEventFrom: $FFFFE0; // light yellow
    RelatedEventTo: $F0F8FF; // alice blue

    ErrorEventFrom: clYellow;
    ErrorEventTo: clRed;

    EventWithLabel: $98FB98; // pale green
    EventLabelText: $8B4513; // saddle brown

    EventListBG: clWhite;
  );

const
  SofterDarkerTEventsColors: TEventListColors =
  (
    SpeechBG: $2E2E2E; // dark gray
    SpeechBGNoAudio: $4E4E4E; // medium gray
    SpeechText: clWhite;

    PlayerSpeechBG: $3E4E4E; // darker beige
    PlayerSpeechBindName: clSilver;
    PlayerSpeechText: $ADD8E6; // light blue

    ChoiceBG: $5E6E6E; // medium cyan
    ChoiceBGNoAudio: $4E6E6E; // darker cyan
    ChoiceText: clWhite;
    ChoiceFlagsText: $87CEEB; // sky blue

    SetFlagBG: $3A3A3A;
    SetFlagText: clWhite;

    CheckFlagBG: $434343;
    CheckFlagText: clWhite;

    CheckObjectBG: $3A3A3A;
    CheckObjectText: clWhite;

    TransferObjectBG: $434343;
    TransferObjectText: clWhite;

    MoveCameraBG: $3A3A3A;
    MoveCameraText: clWhite;

    AnimationBG: $3A3A3A;
    AnimationText: clWhite;

    TradeBG: $2E2E2E;
    TradeText: clWhite;

    JumpBG: $3E4E4E; // darker green
    JumpText: clWhite;
    JumpLink: $87CEFA; // light sky blue

    RandomBG: $434343;
    RandomText: clWhite;
    RandomLabels: $87CEEB; // sky blue

    TriggerBG: $3E4E4E; // darker green
    TriggerText: clWhite;

    AddGoalBG: $4E4E4E; // medium gray
    AddGoalText: clWhite;

    AddNoteBG: $3E4E4E; // darker green
    AddNoteText: clWhite;

    AddSkillPointsBG: $5E3E5E; // medium pink
    AddSkillPointsText: $87CEEB; // sky blue

    AddCreditsBG: $4E3E4E; // dark pink
    AddCreditsText: clWhite;

    CheckPersonaBG: $3E3E5E; // dark lavender
    CheckPersonaText: clWhite;

    CommentBG: $2E2E2E;
    CommentText: clWhite;

    EndBG: $2E2E2E;

    HighlightEvent: $00804000;
    HighlightEventFrom: $8B0000; // dark red
    HighlightEventTo: $8B4513; // saddle brown

    GridBG: $2E2E2E;
    GridColor: $696969; // dim gray

    EventHeaderText: clWhite;

    RelatedEventFrom: $4E4E4E; // medium gray
    RelatedEventTo: $5F9EA0; // cadet blue

    ErrorEventFrom: $0000D5D5;
    ErrorEventTo: $000000D5;

    EventWithLabel: $32CD32; // lime green
    EventLabelText: clSilver;

    EventListBG: clBlack;
  );

const // Shades of gray for dark mode
  ShadesOfGrayTEventsColors: TEventListColors =
  (
    SpeechBG: $1A1A1A; // very dark gray
    SpeechBGNoAudio: $333333; // dark gray
    SpeechText: clWhite;

    PlayerSpeechBG: $2B2B2B; // dark gray
    PlayerSpeechBindName: $A9A9A9; // dark gray
    PlayerSpeechText: $D3D3D3; // light gray

    ChoiceBG: $3A3A3A; // medium dark gray
    ChoiceBGNoAudio: $4F4F4F; // medium gray
    ChoiceText: clWhite;
    ChoiceFlagsText: $B0B0B0; // light gray

    SetFlagBG: $2E2E2E;
    SetFlagText: clWhite;

    CheckFlagBG: $383838;
    CheckFlagText: clWhite;

    CheckObjectBG: $2E2E2E;
    CheckObjectText: clWhite;

    TransferObjectBG: $383838;
    TransferObjectText: clWhite;

    MoveCameraBG: $2E2E2E;
    MoveCameraText: clWhite;

    AnimationBG: $2E2E2E;
    AnimationText: clWhite;

    TradeBG: $1A1A1A;
    TradeText: clWhite;

    JumpBG: $2B2B2B; // dark gray
    JumpText: clWhite;
    JumpLink: $B0C4DE; // light steel blue

    RandomBG: $383838;
    RandomText: clWhite;
    RandomLabels: $B0B0B0; // light gray

    TriggerBG: $2B2B2B; // dark gray
    TriggerText: clWhite;

    AddGoalBG: $333333; // dark gray
    AddGoalText: clWhite;

    AddNoteBG: $2B2B2B; // dark gray
    AddNoteText: clWhite;

    AddSkillPointsBG: $3A2A3A; // dark pink
    AddSkillPointsText: $B0B0B0; // light gray

    AddCreditsBG: $3A2A3A; // dark pink
    AddCreditsText: clWhite;

    CheckPersonaBG: $2A2A3A; // dark lavender
    CheckPersonaText: clWhite;

    CommentBG: $1A1A1A;
    CommentText: clWhite;

    EndBG: $1A1A1A;

    HighlightEvent: $505050; // medium gray
    HighlightEventFrom: $696969; // dim gray
    HighlightEventTo: $808080; // gray

    GridBG: $1A1A1A;
    GridColor: $A9A9A9; // dark gray

    EventHeaderText: clWhite;

    RelatedEventFrom: clSilver; // dark gray
    RelatedEventTo: clGray; // medium gray

    ErrorEventFrom: clWebDarkOrange;
    ErrorEventTo: clWebMoccasin;

    EventWithLabel: $2E8B57; // sea green
    EventLabelText: clWhite; // dark red

    EventListBG: clBlack;
  );



implementation



end.
