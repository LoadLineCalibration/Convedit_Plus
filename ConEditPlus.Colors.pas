// ToDo: Move all colors here
unit ConEditPlus.Colors;

interface

uses
    WinApi.Windows, System.UITypes, Vcl.Graphics;

type
  TEventListColors = record
    SpeechBG: TColor; // Regular speech background color
    SpeechBGNoAudio: TColor;
    SpeechText: TColor;

    PlayerSpeechBG: TColor; // Player speech
    PlayerSpeechBindName: TColor; // Text color
    PlayerSpeechText: TColor; // Player speech text color

    ChoiceBG: TColor;
    ChoiceBGNoAudio: TColor;
    ChoiceText: TColor;
    ChoiceFlagsText: TColor;

    SetFlagBG: TColor;
    SetFlagText: TColor;

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

    RandomBG: TColor;
    RandomText: TColor;

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
    HighlightEventFrom: TColor; // Selected Event first color
    HighlightEventTo: TColor; // Selected Event second color
    ColorGrid: TColor;

    EventHeaderColor: TColor; // Speech, Choice, etc.

    RelatedEventFrom: TColor; // Events, referenced by selected event (and vice versa), first color of gradient
    RelatedEventTo: TColor; // Events, referenced by selected event (and vice versa), second color of gradient

    ErrorEventFrom: TColor; // Event with error, first color
    ErrorEventTo: TColor; // Event with error, second color

    EventWithLabel: TColor; // Left part of the event, only if contains a label
    EventLabelText: TColor; // ...and label text color
  end;

const // Default colors for regular mode
  DefaultTEventsColors: TEventListColors =
  (
    SpeechBG: $C0DCC0;
    SpeechBGNoAudio: $FFFF00;
    SpeechText: clBlack;

    PlayerSpeechBG: $00A5FF;
    PlayerSpeechBindName: $800000;
    PlayerSpeechText: clBlack;

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

    RandomBG: $00F5F5F5;
    RandomText: clBlack;

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

    HighlightEvent: 5759784; //    HighlightEvent: 5789784;
    HighlightEventFrom: 16767927;
    HighlightEventTo: 16777215;
    ColorGrid: $808080;

    EventHeaderColor: clBlack;

    RelatedEventFrom: clYellow;
    RelatedEventTo: $F0FBFF;

    ErrorEventFrom: $00A5FF;
    ErrorEventTo: clRed;

    EventWithLabel: clLime;
    EventLabelText: clMaroon;
  );

  DefaultTEventsColors_Dark: TEventListColors =
  (
    SpeechBG: $3E5D3E; // Inverted from $C0DCC0
    SpeechBGNoAudio: $FFD700; // Inverted from $FFFF00
    SpeechText: clWhite; // Inverted from clBlack
    PlayerSpeechBG: $0060B0; // Inverted from $00A5FF
    PlayerSpeechBindName: $B30000; // Inverted from $800000
    PlayerSpeechText: clWhite; // Inverted from clBlack
    ChoiceBG: $4D4D3E; // Inverted from $00FFFAC8
    ChoiceBGNoAudio: $4D7D7A; // Inverted from $00C0FFFF
    ChoiceText: clWhite; // Inverted from clBlack
    ChoiceFlagsText: clSkyBlue; // Inverted from clBlue
    SetFlagBG: $B3B3B3; // Inverted from $00F0F0F0
    SetFlagText: clWhite; // Inverted from clBlack
    CheckFlagBG: $B8B8B8; // Inverted from $00F5F5F5
    CheckFlagText: clWhite; // Inverted from clBlack
    CheckObjectBG: $B3B3B3; // Inverted from $00F0F0F0
    CheckObjectText: clWhite; // Inverted from clBlack
    TransferObjectBG: $B8B8B8; // Inverted from $00F5F5F5
    TransferObjectText: clWhite; // Inverted from clBlack
    MoveCameraBG: $B3B3B3; // Inverted from $00F0F0F0
    MoveCameraText: clWhite; // Inverted from clBlack
    AnimationBG: $B3B3B3; // Inverted from $00F0F0F0
    AnimationText: clWhite; // Inverted from clBlack
    TradeBG: $2A2A2A; // Inverted from clWhite
    TradeText: clWhite; // Inverted from clBlack
    JumpBG: $3F7F3F; // Inverted from $00FAFFF0
    JumpText: clWhite; // Inverted from clBlack
    RandomBG: $B8B8B8; // Inverted from $00F5F5F5
    RandomText: clWhite; // Inverted from clBlack
    TriggerBG: $B3E6B3; // Inverted from $00F0FFF0
    TriggerText: clWhite; // Inverted from clBlack
    AddGoalBG: $B3E6B3; // Inverted from $00FFFFF5
    AddGoalText: clWhite; // Inverted from clBlack
    AddNoteBG: $B3E6B3; // Inverted from $00F0FFF0
    AddNoteText: clWhite; // Inverted from clBlack
    AddSkillPointsBG: $B8B3B8; // Inverted from $00F5F0F5
    AddSkillPointsText: clWhite; // Inverted from clBlack
    AddCreditsBG: $B8B3B8; // Inverted from $00FFF4F5
    AddCreditsText: clWhite; // Inverted from clBlack
    CheckPersonaBG: $B8B3FF; // Inverted from $00F4F4FF
    CheckPersonaText: clWhite; // Inverted from clBlack
    CommentBG: $B3B3B3; // Inverted from $00EEEEEE
    CommentText: clWhite; // Inverted from clBlack
    EndBG: $2A2A2A; // Inverted from clWhite
    HighlightEvent: 16767927; // Inverted from 16767927 (this stays the same)
    HighlightEventFrom: 16711680; // Darker red (inverted from light gradient)
    HighlightEventTo: $000000; // Inverted from 16777215 (white to black gradient)
    ColorGrid: $D9D9D9; // Inverted from $808080
    EventHeaderColor: clWhite; // Inverted from clBlack
    RelatedEventFrom: $00FF00; // Inverted from clYellow
    RelatedEventTo: $003F3F7F; // Darker shade of cream (inverted from $F0FBFF)
    ErrorEventFrom: $0060B0; // Inverted from $00A5FF
    ErrorEventTo: $FF0000; // Red (inverted from clRed)
    EventWithLabel: $FF3300; // Inverted from clLime
    EventLabelText: clWhite; // Inverted from clMaroon
  );


implementation



end.
