unit ConEditPlus.Consts;

interface

const CEP_CONXML_FILE_VERSION = 28;

// Fonts and their size
const CEP_EVENT_LIST_FONT_NAME = 'Consolas';
const CEP_EVENT_LIST_FONT_SIZE = 10;

const CEP_EVENT_HEADER_LIST_FONT_NAME = 'Tahoma';
const CEP_EVENT_HEADER_LIST_FONT_SIZE = 10;

const CEP_SPEECH_EVENT_FONT = 'Verdana';
const CEP_SPEECH_EVENT_FONT_SIZE = 10;

const CEP_EVENT_LABEL_FONT = 'Verdana';
const CEP_EVENT_LABEL_FONT_SIZE = 9;

const CEP_MAX_PLAYABLE_MISSIONS = 97;
const CEP_MAX_RECENT_FILES = 7; //actually 8...
const CEP_MIN_CONVO_TREE_PANEL_WIDTH = 50; { To avoid situation when tree panel has been
                                             reduced to zero and user cannot resize it back.
                                             Works in both directions!}

const CEP_MAX_CHOICES = 25;

const CUSTOM_CLASSES_SKILLS = 'Skills_Custom.txt';
const CUSTOM_CLASSES_OBJECTS = 'Objects_Custom.txt';
const CUSTOM_CLASSES_ACTORS = 'ActorsPawns_Custom.txt';
const CUSTOM_CLASSES_FLAGS = 'Flags_Custom.txt';

const strDEED = 'Deus Ex Extractor and Decompiler'; // for testing


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

const Default_DeusEx_MiscItems: array[0..6] of string =
(
    'NanoKey',
    'Sodacan',
    'SoyFood',
    'WineBottle',
    'MedKit',
    'Lockpick',
    'Multitool'
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

const AIBarkJokes: array[0..99] of string =
(
    'Do you know where I can find some Zyme?',
    'You talking to me or my reflection?',
    'Never trust a man in a trench coat.',
    'Someone here smells like UNATCO.',
    'Trust me, I''m a doctor. No, really.',
    'I once tried to hack a vending machine... It hacked back.',
    'Did you ever ask Gunther about his coffee? Don''t.',
    'Is there any alternative to LAMs? Asking for a friend.',
    'If this is some kind of joke, I''m not laughing.',
    'I''ve seen things you people wouldn''t believe.',
    'The Illuminati are watching, even in the restroom.',
    'My favorite color is grey. Like my life.',
    'Do you think Paul really works for the NSF? He''s too nice.',
    'I''m just guarding this door. All day. Every day.',
    'Knocking out everyone is a viable playstyle.',
    'If you drop your weapon, I''ll think about not shooting.',
    'This is why I drink.',
    'I''m in the wrong career. Should''ve gone into biotech.',
    'I''m 90% sure that last soda was poison.',
    'Have you ever seen Walton Simons and a robot in the same room?',
    'I''ve got a bad feeling about this.',
    'Is it safe to eat Soy Food if you''re allergic to soy?',
    'My mother always said, ''Don''t augment yourself on the first date.''',
    'Are we the baddies?',
    'All I ever wanted was a vacation on Liberty Island.',
    'We were born in the wrong timeline.',
    'Careful, that rat might be augmented.',
    'Does Gunther ever sleep?',
    'You ever get tired of patrolling the same three hallways?',
    'The real Deus Ex is the friends we made along the way.',
    'Did you hear about the Illuminati HR department? They''re ruthless.',
    'Some days I think I''m in a simulation.',
    'I''m not saying it''s Area 51, but... it''s Area 51.',
    'If you think this is bad, you should see my other save file.',
    'They say the NSF is recruiting. I say, ''Pass.''',
    'Do nanites taste like chicken?',
    'Is it true that JC never blinks?',
    'Don''t make me use my pepper gun.',
    'If Anna Navarre offers you coffee, say no.',
    'I tried to open a locked door with my mind. Didn''t work.',
    'I heard there''s a secret ending if you hug the pigeons.',
    'No one ever asks how the guards feel.',
    'You think you''re clever? Try dodging security cameras.',
    'I''m still waiting for my hazard pay.',
    'This locker smells like Gunther.',
    'Does this helmet make my head look big?',
    'My code phrase is ''Daedalus.'' Wait, was I supposed to say that?',
    'If you can read this, you''re too close.',
    'How many nano-augmented agents does it take to change a lightbulb?',
    'This isn''t what I signed up for.',
    'I miss pre-augmentation pizza.',
    'If Bob Page calls, I''m not here.',
    'Never trust a mech with an umbrella.',
    'I''m not paranoid if they really are out to get me.',
    'My therapist says I have trust issues.',
    'I''d rather be in Hong Kong.',
    'Is there a nano-augmentation for sarcasm?',
    'Do bullets hurt less if you''re augmented?',
    'When in doubt, blame Majestic-12.',
    'Do you think UNATCO has dental?',
    'If this is a stealth mission, why are you so loud?',
    'I''m only here for the credits.',
    'I hope JC gets my joke.',
    'Is this vending machine... watching me?',
    'Why do we guard crates? What''s in them?',
    'I bet all these crates are empty.',
    'Remember: No running in the hallways.',
    'Don''t touch the laser grid.',
    'Sometimes I just want to sit down and cry.',
    'I''d sell my nano-augment for a vacation.',
    'Is this helmet bulletproof? Asking for a friend.',
    'You ever wonder if we''re the bad guys?',
    'Does my trench coat make me look mysterious?',
    'Nanites in the coffee again?',
    'Someone replaced my ammo with candy. Again.',
    'No one told me there''d be so many elevators.',
    'If you see Walton Simons, run.',
    '''Trust me,'' they said. ''It''ll be safe,'' they said.',
    'I thought working for UNATCO would be more glamorous.',
    'Augmentations are cool until you get the bill.',
    '''It''s a feature, not a bug,'' my supervisor says.',
    'I''ve seen enough rats to last a lifetime.',
    'If you break it, you buy it.',
    'Bob Page once smiled. It was terrifying.',
    'This locker is my only friend.',
    'Nobody reads the data cubes, do they?',
    'Why is there a goat in the ventilation shaft?',
    'If you shoot, I''ll scream.',
    'My password is ''password.'' Wait, ignore that.',
    'Do we get health insurance?',
    'Does this nanokey open hearts?',
    'If you''re reading this, you''re part of the conspiracy.',
    'JC Denton never laughs.',
    'The best hiding place is behind the soda machine.',
    'UNATCO: Unusually Not Available To Converse Often.',
    'Is it time for my break yet?',
    'I''d rather be back at the Academy.',
    'My cat''s name is Daedalus.',
    'This place needs better lighting.',
    'If this is the future, I''d like a refund.'
);
const AIBarkFutz: array[0..99] of string =
(
    'Did you just throw a chair at me?',
    'That''s not how you open doors, you know.',
    'Put the lamp down. Now.',
    'Is this performance art?',
    'Throwing a soda can won’t solve anything!',
    'Sir, please stop stacking crates on me.',
    'Was that... a rat?',
    'Are you... trying to seduce me with a medkit?',
    'Security! He’s juggling grenades again!',
    'That''s not yours to push.',
    'You cannot solve every problem with LAMs!',
    'Stop licking the vending machine.',
    'You think hiding behind the plant makes you invisible?',
    'Why are you crouching in the shadows again?',
    'You’re scaring the pigeons.',
    'What did that trash can ever do to you?',
    'You’re not even stealthy, just weird.',
    'Sir, this is a UNATCO facility, not a playground.',
    'Please don’t stare like that.',
    'There is no reward for climbing on desks.',
    'Do you even know how to knock?',
    'Is that your idea of diplomacy?',
    'Stop throwing dead rats at my face!',
    'I don’t get paid enough to deal with this.',
    'That''s not a safe use of physics.',
    'Throwing knives into the wall doesn’t make you cool.',
    'Did you just flashbang yourself?',
    'Your dancing is... unexpected.',
    'Stop flexing your augments.',
    'That vent is not a suggestion.',
    'Why are you whispering to the water cooler?',
    'No, you can’t dual-wield coffee cups.',
    'Security, he’s trying to blend in with the furniture!',
    'That''s not a stealth kill, that''s assault with style.',
    'Get off the vending machine!',
    'Please don’t fire the flamethrower indoors.',
    'You just EMP’d the coffee machine.',
    'Why are you punching doors?',
    'This isn’t a sandbox, stop digging.',
    'Sir, that plant is not hostile.',
    'That''s not how you interrogate a corpse.',
    'I saw that. And I wish I hadn’t.',
    'That disguise fools no one.',
    'Stop looting the bathrooms!',
    'Are you talking to that skull again?',
    'The statue isn’t going to respond.',
    'I can''t tell if you’re insane or brilliant.',
    'You can''t bribe me with soy snacks.',
    'You’re not invisible. I can see you.',
    'Quit making explosion noises with your mouth.',
    'That poor cat didn’t deserve that.',
    'The mop bucket isn’t a vehicle.',
    'I’m filing a report about this.',
    'You can’t just moonwalk away from consequences.',
    'Why are you aiming at the microwave?',
    'I said stop throwing barrels!',
    'Sir, that crate is not a shield.',
    'Why are you monologuing?',
    'You can’t climb into the fridge!',
    'Is that... a bucket on your head?',
    'Okay, now you’re just being weird on purpose.',
    'You’re making me nervous.',
    'We don’t accept interpretive dance as a threat.',
    'Stop setting off the alarms just to hear them.',
    'I swear that man just hissed at me.',
    'Put the chicken down.',
    'Did... did you just bark?',
    'Quit crawling under desks!',
    'That mannequin was part of an investigation!',
    'No. You can’t duel me.',
    'You seriously just zapped a mirror?',
    'You threw a fire extinguisher at a janitor.',
    'Those sunglasses don’t make you smarter.',
    'Why are you following me into the bathroom?',
    'Is this how you treat civilians?',
    'I hope you’re proud of whatever that was.',
    'No one asked for this. Especially me.',
    'This is why we don’t give players freedom.',
    'You walked into the wall again.',
    'Sir, you’re bleeding on my workstation.',
    'If you knock on that wall one more time...',
    'Stop making robot noises.',
    'Your stealth rating is negative.',
    'You’re a menace to society and architecture.',
    'Why are you whispering to the door lock?',
    'Throwing darts at monitors won’t help.',
    'Stop dragging that body in circles!',
    'You can’t camouflage with a potted plant!',
    'Sir, this is a restricted crate.',
    'Please refrain from T-posing.',
    'We are not impressed by your inventory management.',
    'That sound you made was not intimidation.',
    'Stop trying to romance the turret.',
    'That was an HR violation!',
    'This isn’t a physics sandbox. Oh wait.',
    'Are you trying to parkour your way out of therapy?',
    'Why are you riding the robot?',
    'This is why we can’t have nice things.',
    'No more jokes about nano-viruses.',
    'Yes, that was weird. Very weird.'
);



const INFOLINK_PREFIX = 'DL_';

const conFileHeader: array[0..25] of Byte =
(
    68, 101, 117, 115, 32, 69, 120, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 32, 70, 105, 108, 101, 26
);



const
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

    PLAYER_BINDNAME = 'JCDenton';
    INFOLINK_CONVERSATION_DIRECTORY = 'InfoLink';

    CLIPBOARD_CONVERSATION_ID = 'id_CONVERSATION';
    PLAYED_SUFF = '_Played';

    // Import/Export (TextEXport). For localization, voice actors, etc.
    TEX_CONVERSATION_SEPARATOR = '-----------------------------------------------------------------';
    TEX_OWNER = '[Owner: %s]';
    TEX_NAME = '[Name:  %s]';

    TEX_SPEECH_TEXT = '[SPEECH: %s]' + sLineBreak + '%s'; // Speech text

    TEX_NUM_CHOICES = '[CHOICES:%d]'; // This is choice header, like [CHOICES:5]
    TEX_CHOICE_TEXT = '[CHOICE:]' + sLineBreak + '%s'; // choice item, like:[CHOICE:]<LineBreak>Choice Text

    TEX_GOAL_TEXT = '[GOAL:]' + sLineBreak + '%s'; // Goal text

    TEX_NOTE_TEXT = '[NOTE:]' + sLineBreak + '%s'; // Note text

    TEX_ADDSKILLPTS_TEXT = '[SKILLPOINTS:]' + sLineBreak + '%s'; // SkillPoints message text

    TEX_COMMENT_TEXT = '[COMMENT:]' + sLineBreak + '%s'; // Comment text
    // End of Import/Export


    CHECK_OBJECT_HEIGHT = 25;
    TRANSFER_OBJECT_HEIGHT = 35;
    MOVE_CAMERA_HEIGHT = 25;
    ANIMATION_HEIGHT = 70;
    TRADE_HEIGHT = 44;
    JUMP_HEIGHT = 50;
    TRIGGER_HEIGHT = 42;
    ADD_CREDITS_HEIGHT = 44;
    CHECK_PERSONA_HEIGHT = 42;
    END_HEIGHT = 25;

    FILTER_ITEM_HEIGHT = 1;

    // ConEventlist color themes
    ELC_DEFAULT = 'Default [regular]';
    ELC_SOFTER = 'Softer [regular]';
    ELC_SOFTER_DARKER = 'SofterDarker [dark]';
    ELC_SHADES_OF_GRAY = 'ShadesOfGray [dark]';

    // ConEventList header
    CLH_WIDTH_COL1 = 150;
    CLH_WIDTH_COL2 = 150;
    CLH_WIDTH_COL3 = 500;

    GENERATED_CONVO = 'GeneratedConversation';



ResourceString // These strings can be translated.

    ET_Random_TargetLabels = 'Target labels:';

    // for Table.pas/dfm
    strActorsPawns = 'Actors/Pawns';
    strFlags = 'Flags';
    strSkills = 'Skills';
    strObjects = 'Objects';
    strAskRemoveUnused = 'Are you sure you wish to remove any unused table entries?';
    strAskRemoveUnusedTitle = 'Remove unused entries?';
    strAskDeleteTableItem = 'Are you sure you want to delete this table item?';
    strCannotDeleteTableItem = 'This item cannot be removed because it is referenced in at least one conversation.' + #13#10 + 'You must first remove the references.';
    strCannotRenameTableItem = 'This item cannot be renamed because it is referenced in at least one conversation.' + #13#10 + 'You must first remove the references.';


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
                                     'MedKit'    + #13#10 +
                                     'Lockpick'  + #13#10 +
                                     'Multitool' + #13#10 +
                                     'Existing items will not be lost. Do you want to proceed?';

    strAddDefInfoLinkNamesQuestion = 'This will add default InfoLink names (like PaulDenton, BobPage, Icarus, etc.) from the original Deus Ex game into the table. ' +
                                     'Existing items will NOT be lost. Do you want to proceed?';


    // for events list (MainWindow.pas)
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

    strChoiceWithSkillsNoAudio = ' • %s  [Goto: %s]  [Requires Skill: %s]';
    strChoiceNoSkillsNoAudio = ' • %s  [Goto: %s]';

    strDependsOnFlag = 'Flags: ';

    strInvalidFName = 'Invalid name! Allowed characters: Latin letters, underscore, and digits, but the name must not start with a digit.';
    strSpeechTextIsEmpty = 'Speech text cannot be empty! Please enter some text.';

    strCommentTextIsEmpty = 'Comment text cannot be empty! Please enter some text.';

    strAudioFileNotFound = 'Audio file NOT found:'  + #13#10 + #13#10 + '"%s"'
                         + #13#10 + #13#10 + 'Please make sure your file exists and you used the correct path in the program options.';

    strAudioPathNotFound = 'Cannot find Audio directory! (%s)';

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


    strDelChoiceText = 'Are you sure you want to delete selected choice item?';

    strAppTitle = 'ConEditPlus';
    strNewFile = ' (New File)';

    strActorPawn = 'Actor/Pawn:';
    strFlagName = 'Flag Name:';
    strSkillName = 'Skill Name:';
    strObjectName = 'Object Name:';

    strCustomClassesNotFound = 'The "%s" file does not exists! If you want to use custom classes, create it and place into ConEditPlus directory.' + #13#10 +
                               'The syntax is simple: className;description in each line.' + #13#10 +
                               'Use "-" for separator.';

    strDefaultString = 'Default text';

    // Toolbar buttons tooltips
    tbNewConversationFileHint = 'Create new conversation file';
    tbOpenFileHint = 'Open existing .con or .xml file';
    tbSaveFileHint = 'Save current file.';// To save under different name or format,' + #13#10 + 'use "Save As..." or press Ctrl + A/Ctrl + Shift + S';
    tbCloseFileHint = 'Close current file, ask to save if been modified';
    tbPrintHint = 'Print conversations';
    tbCutHint = 'Cut selected event to clipboard';
    tbCopyHint = 'Copy selected event to clipboard';
    tbPasteHint = 'Paste event from clipboard';
    tbSearchHint = 'Find text in conversations/events';
    tbVerifyLabelsHint = 'Verify if references to labels are valid.';
    tbPropertiesHint = 'Displays properties of current conversations, also allows to modify some fields, like name, flags, etc.';
    tbGenAudioHint = 'Generate audio filenames for Speech and Choice events.';
    tbGenerateAudioDirsHint = 'Create all required directories with placeholder .mp3 files (optional)' + #10#13 +
                              'You will need to replace these placeholder files with real speech files.';
    tbSettingsHint = 'Change program settings';
    tbReorderHint = 'Enable changing order of events. Hold the %s key and drag one of the items.';
    tbStickyWindowHint = 'Window will snap to screen';
    tbShowLogHint = 'Show log';


    strInvalidConFileHdr = 'This is not a valid Conversation File!!';//  Invalid .con file header! Loading aborted. Please choose valid .con file.';
    strSelectConXML = 'Please select .con or .xml file!';
    strFileDoesNotExists = '%s' + #13#10#13#10 + 'Such file does not exists! Operation cancelled.';

    strEmptyValue = '<empty>';

    strMax10ChoiceItems = 'Cannot add more than 25 choice items!';
    strDefaultChoiceText = 'Default Choice Text. Modify it, add jump label and set other parameters you need. Then click "Save Item" button and then "Update".';

    strUnknownFile = 'Unknown file!';
    strNotImplemented = 'This feature is not implemented (and probably not implemented in game code?)';

    strClearRecentQuestion = 'Are you sure you want to clear list of recent files?';

    strConversationAlreadyExists = 'Conversation with such name already exists!';

    strSaveConversationFileQuestion = 'The Current Conversation File has not been saved. Save Changes before closing it?';

    strDontUseCT_Actor = 'CT_Actor camera type is not implemented in Deus Ex. Please select Predefined or Random mode.';

    strStatsEmptyFile = 'Nothing to count!';

    strMissionsInList = 'Mission %2.2d';

    strLabelsValid = 'All label references are valid';

    strAskUnusedActorsDelete = 'The following Actors are not used:'+ #13#10#13#10;
    strAskUnusedFlagsDelete = 'The following Flags are not used:'+ #13#10#13#10;
    strAskUnusedSkillsDelete = 'The following Skills are not used:'+ #13#10#13#10;
    strAskUnusedObjectsDelete = 'The following Objects are not used:'+ #13#10#13#10;

    strAskDeleteEntries = #13#10 + 'Ok to delete these entries?';

    strSearchEnterSomething = 'You should enter text you want to find!';
    strSearchSelectEvent = 'Select at least one event type to search in!';
    strSearchSelectConversation = 'Select any conversation first!';
    strSearchResults = 'Results: ';


    // MessageBox title
    strErrorTitle = 'Error!';
    strWarningTitle = 'Warning!';
    strQuestion = 'Confirm?';
    strInformation = 'Information';

    strRemoveLabelRefs = 'Are you sure you want to remove all references to this event’s label?';

    // Error messages when trying to save file
    strSaveError = 'Error saving file (%s):' + #13#10 +'%s';
    strSaveErrorStatus = 'Error saving file: ';

    strSavingFile = 'Saving file: ';
    strSavedFile = 'Saved: ';

    strJumpToEvent = 'Jump to this Event';
    strJumpToConversation = 'Jump to this Conversation';

    strAudioDirsSuccesful = 'Audio directories with placeholder .mp3 files have been successfully generated!' + #13#10#13#10 +
                            'Do you want to open directory with these files?';

    strAudioDirsError = 'There is error when creating audio directories in "%s". %s';

    strAddNewConversation = 'Add new conversation';
    strEditConversation = 'Edit conversation properties';

    strNothingToDelete = 'Nothing to delete!';

    strNoFileLoaded = 'No file loaded';

    strAskToOpenGithub = 'Do you want to open ConEditPlus GitHub page in your Internet browser?';

    strCannotRenameConversation = 'Another conversation with such name already exists or name contains invalid characters!' + #13#10#13#10 +
                                  'Cannot rename this conversation.';

    strUniqueLabelRequired = 'The EventLabel you entered is not unique, please choose another.';

    strFileModiefied = ' [File has been modified]';

    strClipboardReadError = 'Error reading data from Clipboard!';

    strClipboardConversationV1 = '%s: %s';
    strClipboardConversationV2 = ' choice #%d: %s';

    // ufrmAudioDirectories
    strSelDirectoryWarning = 'Select directory first!';
    strGenAudioFileNames = 'Generating audio filenames...';
    strGenAudioFilenamesDirs = 'Generating audio filenames and directories...';
    strGenAudioFileNamesDirsError = 'Something went wrong... Make sure the directory you chosen is writable.';
    strGenAudioFileNamesDirsSuccess = 'Done!';

    // frmSettings1
    strUseUsername = 'The following username will be used: %s' + #13#10 + 'Do you want to continue?';
    strUseUserNameTitle = 'Use username?';

    // AI Bark conversation Template
    strEventSpeech1 = 'Example One. TConEventSpeech.';
    strEventSpeechLabel1 = 'Example1';

    strEventSpeech2 = 'Example Two. TConEventSpeech.';
    strEventSpeechLabel2 = 'Example2';

    strEventSpeech3 = 'Example Three. TConEventSpeech.';
    strEventSpeechLabel3 = 'Example3';

    strEventComment = 'This is comment. Use it to store some additional information about conversation.';

    strAskToAddAIBarksExample = 'Add AI Bark conversation with three random speech lines?';
    strAskToAddAIBarkFutzExample = 'Add AI BarkFutz conversation with three random speech lines?';
    strConvoDescGenerated = 'Description for automatically generated conversation.';
    strConvoNotesGenerated = 'Notes for automatically generated conversation.';
    strAddPlayerFirst = 'Please add "JCDenton" to Actors/Pawns table first!';

    // end of AI Bark conversation Template

    // For "Check Persona" event
    strCheckIf = 'if ';

    strCheckCredits = 'Credits';
    strCheckHealth = 'Health';
    strCheckSkillPts = 'SkillPoints';

    strCheckConditionLessThan = ' less than (<) ';
    strCheckConditionLessThanEqualTo = ' less than or equal to (<=) ';
    strCheckConditionEqual = ' equal to (=) ';
    strCheckConditionGreaterThan = ' greater than or equial to (>=)';
    strCheckConditionGreater = ' greater than (>) ';

    strJumpToLabel = ' then JumpToLabel: ';
    // end of strings for "Check Persona" event




implementation

end.
