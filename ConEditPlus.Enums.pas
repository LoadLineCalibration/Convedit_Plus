unit ConEditPlus.Enums;

interface

type TReorderEventsModKey =  // hold xxx key to reorder events
(
    re_Ctrl,
    re_Shift,
    re_Alt
);

type TTableMode =
(
    TM_ActorsPawns,
    TM_Flags,
    TM_Skills,
    TM_Objects
);

type TConversationEditMode =
(
    em_Edit,
    em_Create
);

type TEventListColorsMode =
(
    ELCM_Default, // for classic or light themes
    ELCM_Dark     // for dark mode themes.
);

type TChoiceMP3CopyMode =
(
    CM_PathAndFilename,
    CM_OnlyPath,
    CM_OnlyMp3
);

// DEUS_EX AJY
type TBarkModes =
(
    BM_Idle,
    BM_CriticalDamage,
    BM_AreaSecure,
    BM_TargetAcquired,
    BM_TargetLost,
    BM_GoingForAlarm,
    BM_OutOfAmmo,
    BM_Scanning,
    BM_Futz,
    BM_OnFire,
    BM_TearGas,
    BM_Gore,
    BM_Surprise,
    BM_PreAttackSearching,
    BM_PreAttackSighting,
    BM_PostAttackSearching,
    BM_SearchGiveUp,
    BM_AllianceHostile,
    BM_AllianceFriendly
);





implementation

end.
