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


implementation

end.
