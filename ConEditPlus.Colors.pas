// ToDo: Move all colors here
unit ConEditPlus.Colors;

interface

uses
    WinApi.Windows, System.UITypes, Vcl.Graphics;

type
  TEventListColors = record
    SpeechBG: TColor;
    SpeechBGNoAudio: TColor;
    SpeechText: TColor;

    PlayerSpeechBG: TColor;
    PlayerSpeechBindName: TColor;
    PlayerSpeechText: TColor;

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

    TansferObjectBG: TColor;
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

    HighlightEvent: TColor;
    HighlightEventFrom: TColor;
    HighlightEventTo: TColor;
    ColorGrid: TColor;

    EventHeaderColor: TColor; // Speech, Choice, etc.

    RelatedEventFrom: TColor;
    RelatedEventTo: TColor;

    ErrorEventFrom: TColor;
    ErrorEventTo: TColor;

    EventWithLabel: TColor;
    EventLabelText: TColor;
  end;

const // Default colors for regular mode
  DefaultTEventsColors: TEventListColors =
  (
    SpeechBG: clMoneyGreen;
    SpeechBGNoAudio: clAqua;
    SpeechText: clBlack;

    PlayerSpeechBG: clWebOrange;
    PlayerSpeechBindName: clNavy;
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

    TansferObjectBG: $00F5F5F5;
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
    AddSkillPointsText: clBlack;

    AddCreditsBG: $00FFF4F5;
    AddCreditsText: clBlack;

    CheckPersonaBG: $00F4F4FF;
    CheckPersonaText: clBlack;

    CommentBG: $00EEEEEE;
    CommentText: clBlack;

    EndBG: clWhite;

    HighlightEvent: 16767927;
    HighlightEventFrom: 16767927;
    HighlightEventTo: 16777215;
    ColorGrid: clGray;

    EventHeaderColor: clBlack;

    RelatedEventFrom: clYellow;
    RelatedEventTo: clCream;

    ErrorEventFrom: clWebOrange;
    ErrorEventTo: clRed;

    EventWithLabel: clLime;
    EventLabelText: clMaroon;
  );

implementation



end.
