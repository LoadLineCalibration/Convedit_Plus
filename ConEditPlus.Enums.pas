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

type TBarkModes =
(
    BM_BarkIdle,
    BM_BarkCriticalDamage,
    BM_BarkAreaSecure,
    BM_BarkTargetAcquired,
    BM_BarkTargetLost,
    BM_BarkGoingForAlarm,
    BM_BarkOutOfAmmo,
    BM_BarkScanning,
    BM_BarkFutz,
    BM_BarkOnFire,
    BM_BarkTearGas,
    BM_BarkGore,
    BM_BarkSurprise,
    BM_BarkPreAttackSearching,
    BM_BarkPreAttackSighting,
    BM_BarkPostAttackSearching,
    BM_BarkSearchGiveUp,
    BM_BarkAllianceHostile,
    BM_BarkAllianceFriendly
);





implementation

end.
