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

const CEP_MAX_CHOICES = 10;

const CUSTOM_CLASSES_SKILLS = 'Skills_Custom.txt';
const CUSTOM_CLASSES_OBJECTS = 'Objects_Custom.txt';
const CUSTOM_CLASSES_ACTORS = 'ActorsPawns_Custom.txt';
const CUSTOM_CLASSES_FLAGS = 'Flags_Custom.txt';


const Default_DeusEx_Skills: array[0..10] of string =
(
    'SkillMedicine',
    'SkillTech',
    'SkillLockpicking',
    'SkillWeaponPistol',
    'SkillEnviro',
    'SkillWeaponRifle',
    'SkillWeaponHeavy',
    'SkillComputer',
    'SkillSwimming',
    'SkillWeaponLowTech',
    'SkillDemolition'
);

const Default_DeusEx_LongRange: array[0..12] of string =
(
    'WeaponShuriken',
    'WeaponStealthPistol',
    'WeaponLAW',
    'WeaponMiniCrossbow',
    'WeaponHideAGun',
    'WeaponAssaultShotgun',
    'WeaponGEPGun',
    'WeaponRifle',
    'WeaponFlamethrower',
    'WeaponSawedOffshotgun',
    'WeaponPlasmaRifle',
    'WeaponPistol',
    'WeaponAssaultGun'
);

const Default_DeusEx_CloseRange: array[0..6] of string =
(
    'WeaponSword',
    'WeaponBaton',
    'WeaponPepperGun',
    'WeaponNanoSword',
    'WeaponCrowbar',
    'WeaponProd',
    'WeaponCombatKnife'
);

const Default_DeusEx_Grenades: array[0..3] of string =
(
    'WeaponEMPGrenade',
    'WeaponGasGrenade',
    'WeaponNanoVirusGrenade',
    'WeaponLAM'
);

const Default_DeusEx_MiscItems: array[0..3] of string =
(
    'NanoKey',
    'Sodacan',
    'SoyFood',
    'WineBottle'
);

const Default_DeusEx_Infolink_Names: array[0..16] of string =
(
    'AlexJacobson',
    'AnnaNavarre',
    'BobPage',
    'BobPageAug',
    'Daedalus',
    'GarySavage',
    'GuntherHermann',
    'Helios',
    'Icarus',
    'JaimeReyes',
    'Jock',
    'MorganEverett',
    'PaulDenton',
    'SamCarter',
    'StantonDowd',
    'TracerTong',
    'WaltonSimons'
);


const INFOLINK_PREFIX = 'DL_';

const conFileHeader: array[0..25] of Byte =
(
68, 101, 117, 115, 32, 69, 120, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 32, 70, 105, 108, 101, 26
);



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
    // The strings above should not be translated (I doubt if someone will ever need that!)

    // Can be translated from here and below
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

    strRandomEventOptions = 'Cycle Events? %s,' + #13#10 + 'Only Cycle Once? %s,' + #13#10 + 'Random after Cycle? %s';

    strCheckObject = 'Check For Object "%s", On Fail jump to "%s"';
    strTransferObject = 'Transfer "%s" from "%s" to "%s" on fail jump to Label "%s"';

    strChoiceWithSkills = ' • %s  [Goto: %s]  [Requires Skill: %s]  [Audio File: %s]';
    strChoiceNoSkills = ' • %s  [Goto: %s] [Audio File: %s]';
    strDependsOnFlag = 'Flags: ';

    strLabelStartsFromDigit = 'Cannot add label since it starts from a number.';
    strSpeechTextIsEmpty = 'Speech text cannot be empty! Please enter some text.';

    strCommentTextIsEmpty = 'Comment text cannot be empty! Please enter some text.';

    strAudioFileNotFound = 'Audio file NOT found: ';

    strAskDeleteEventText = 'Are you sure you wish to Delete this event?';
    strAskDeleteEventTitle = 'Delete?';

    strAskDeleteConvoText = 'Are you sure you wish to Delete this Conversation?';
    strAskDeleteConvoTitle = 'Delete?';


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

    // play/stop
    strPlayMP3 = 'Play';
    strStopMP3 = 'Stop';

    strAddDefaultSkillsQuestion = 'This will add default skills from the original Deus Ex game (SkillSwimming, SkillWeaponHeavy, etc.) into the table. ' +
                                  'Existing items will not be lost. Do you want to proceed?';

    strAddDefaultFirearmsQuestion = 'This will add default long-range weapons from the original Deus Ex game (like WeaponMiniCrossbow, WeaponGepGun, etc) into the table. ' +
                                    'Existing items will not be lost. Do you want to proceed?';

    strAddDefaultCloseRangeWeapons = 'This will add default close-range combat weapons from the original Deus Ex game (like WeaponBaton, WeaponSword, etc.) into the table. ' +
                                     'Existing items will not be lost. Do you want to proceed?';

    strAddDefaultGrenadesQuestion = 'This will add default grenades from the original Deus Ex game (all four types) into the table. ' +
                                    'Existing items will not be lost. Do you want to proceed?';

    strAddDefaultMiscItemsQuestion = 'The following items will be added into the table: ' + #13#10 +
                                     'NanoKey' + #13#10 +
                                     'SodaCan' + #13#10 +
                                     'SoyFood' + #13#10 +
                                     'WineBottle' + #13#10 +
                                     'Existing items will not be lost. Do you want to proceed?';

    strAddDefInfoLinkNamesQuestion = 'This will add default InfoLink names (like PaulDenton, BobPage, Icarus, etc.) from the original Deus Ex game into the table. ' +
                                     'Existing items will not be lost. Do you want to proceed?';


    strDelChoiceTitle = 'Really delete this choice?';
    strDelChoiceText = 'Are you sure you want to delete selected choice item?';

    strAppTitle = 'ConvEdit Plus';
    strNewFile = '(New File)';

    strActorPawn = 'Actor/Pawn:';
    strFlagName = 'Flag Name:';
    strSkillName = 'Skill Name:';
    strObjectName = 'Object Name:';

    strCustomClassesNotFound = 'The "%s" file does not exists! If you want to use custom classes, create it and place into ConvEdit Plus directory.' + #13#10 +
                               'The syntax is simple: className;description in each line.' + #13#10 +
                               'Use - for separator (as usually in Delphi IDE).';

    strDefaultString = 'Default text';

    btnReorderHint = 'Enable changing order of events. Hold %s key and drag one of items.';

    strInvalidConFileHdr = 'Invalid .con file header! Loading aborted. Please choose valid .con file.';

    strEmptyValue = '<empty>';

    strMax10ChoiceItems = 'DeusEx hardcoded to use max 10 choice items per ConEventChoice. Cannot add any more, sorry!';
    strDefaultChoiceText = 'This is default choice text. Modify it, add jump label and other parameters. Then click "Save Item" button and then "Update".';

    strUnknownFile = 'Unknown file!';

    strClearRecentQuestion = 'Are you sure you want to clear list or recent files?';
    strClearRecentTitle = 'Clear recent files list?';

    strConversationAlreadyExists = 'Conversation with such name already exists!';

    strCannotDeleteTableItem = 'This item cannot be removed because it is referenced in at least one conversation.' + #13#10 + 'You must first remove the references.';



implementation

end.
