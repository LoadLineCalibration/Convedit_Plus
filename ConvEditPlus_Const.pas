unit ConvEditPlus_Const;

interface

const CEP_CONXML_FILE_VERSION = 28;

// Fonts and their size
const CEP_EVENT_LIST_FONT_NAME = 'Consolas';
const CEP_EVENT_LIST_FONT_SIZE = 10;

const CEP_EVENT_HEADER_LIST_FONT_NAME = 'Tahoma';
const CEP_EVENT_HEADER_LIST_FONT_SIZE = 10;

const CEP_SPEECH_EVENT_FONT = 'Verdana';
const CEP_SPEECH_EVENT_FONT_SIZE = 10;

// maybe temporary?
const CEP_MAX_PLAYABLE_MISSIONS = 97;
const CEP_MAX_RECENT_FILES = 7; //actually 8...
const CEP_MIN_CONVO_TREE_PANEL_WIDTH = 50; { To avoid situation when tree panel has been
                                             reduced to zero and user cannot resize it back.
                                             Works in both directions!}

ResourceString
    ET_Speech_Caption         = 'Speech';
	ET_Choice_Caption         = 'Choice';
	ET_SetFlag_Caption        = 'Set Flags';
	ET_CheckFlag_Caption      = 'Check Flags';
	ET_CheckObject_Caption    = 'Check Object';
	ET_TransferObject_Caption = 'Transfer Object';
	ET_MoveCamera_Caption     = 'Move Camera';
	ET_Animation_Caption      = 'Animation';
	ET_Trade_Caption          = 'Trade';
	ET_Jump_Caption           = 'Jump';
	ET_Random_Caption         = 'Random Label';
	ET_Trigger_Caption        = 'Trigger';
	ET_AddGoal_Caption        = 'Add Goal';
	ET_AddNote_Caption        = 'Add Note';
	ET_AddSkillPoints_Caption = 'Add Skill Points';
	ET_AddCredits_Caption     = 'Add Credits';
	ET_CheckPersona_Caption   = 'Check Persona';
	ET_Comment_Caption        = 'Comment';
	ET_End_Caption            = 'End';
    // The ET_ strings above should not be translated (I doubt if someone will ever need that!)
    ET_Random_TargetLabels = 'Target labels:';

    // for Table.pas
    strActorsPawns = 'Actors/Pawns';
    strFlags = 'Flags';
    strSkills = 'Skills';
    strObjects = 'Objects';
    strAskRemoveUnused = 'Are you sure you wish to remove any unused table entries?';
    strAskRemoveUnusedTitle = 'Remove unused entries?';

    // for events list
    strPrimaryGoal = '(Primary Goal)';
    strGoalCompleted = '(Goal Completed)';
    strGoalName = 'Goal Name: ';
    strGoalText = 'Goal Text: ';

    strAddSkillPoints = 'Add %d SkillPoints';
    strAddCredits = 'Add %d Credits';
    strSubtractCredits = 'Subtract %d Credits';

    strChkFlgJumpToLabel = 'Jump To Label: ';

    strJumpInCurrentConversation = 'Jump to Label in current Conversation: ';
    strJumpInAnotherConversation ='Jump to Label in another Conversation: "%s". Label "%s"';

    strRandomEventOptions = 'Cycle Events: %s, Only Cycle Once: %s, Random after Cycle: %s';


    // camera related strings
    strRandomCam = 'Random';
    strCT_Predefined = 'Predefined:';
    strCP_SideTight ='Side, Tight';
    strCP_SideMid = 'Side, Mid';
    strCP_SideAbove = 'Side, Above';
    strCP_SideAbove45 = 'Side, Above 45 Degrees';
    strCP_ShoulderLeft = 'Shoulders, Left';
    strCP_ShoulderRight = 'Shoulders, Right';
    strCP_HeadShotTight = 'Head Shot, Tight';
    strCP_HeadShotMid ='Head Shot, Mid';
    strCP_HeadShotLeft ='Head Shot, Left';
    strCP_HeadShotRight = 'Head Shot, Right';
    strCP_HeadShotSlightRight ='Head Shot, Slight Right';
    strCP_HeadShotSlightLeft = 'Head Shot, Slight Left';
    strCP_StraightAboveLookingDown ='Straight Above, Looking Down';
    strCP_StraightBelowLookingUp = 'Straight Below, Looking Up';
    strCP_BelowLookingUp ='Below, Looking Up';




implementation

end.
