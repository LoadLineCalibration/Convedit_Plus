unit ConvEditPlus_Const;

interface

// Fonts and their size
const CEP_EVENT_LIST_FONT_NAME = 'Consolas';
const CEP_EVENT_LIST_FONT_SIZE = 10;

const CEP_EVENT_HEADER_LIST_FONT_NAME = 'Tahoma';
const CEP_EVENT_HEADER_LIST_FONT_SIZE = 10;

const CEP_SPEECH_EVENT_FONT = 'Tahoma';
const CEP_SPEECH_EVENT_FONT_SIZE = 10;

// For testing purposes
const CEP_TEST_STRING_MULTILINE = 'some text some text some text some textsome text some textsome text some textsome text some textsome text some text' +
                                  'Another text..... My conedit is augmented!' +
                                   #13#10 + '--==[ Delphi 4 Win! ]==--' +
                                   #13#10 + 'Implemented multiline text support!';


// maybe temporary?
const CEP_MAX_PLAYABLE_MISSIONS = 97;

const CEP_MAX_RECENT_FILES = 7; //actually 8...

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
	ET_Random_Caption         = 'Random';
	ET_Trigger_Caption        = 'Trigger';
	ET_AddGoal_Caption        = 'Add Goal';
	ET_AddNote_Caption        = 'Add Note';
	ET_AddSkillPoints_Caption = 'Add Skill Points';
	ET_AddCredits_Caption     = 'Add Credits';
	ET_CheckPersona_Caption   = 'Check Persona';
	ET_Comment_Caption        = 'Comment';
	ET_End_Caption            = 'End';


implementation

end.
