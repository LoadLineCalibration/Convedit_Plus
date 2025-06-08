unit MainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, ConEditPlus.Consts,
  system.UITypes, Vcl.ComCtrls, System.Types, Vcl.Buttons, Vcl.ToolWin, System.IniFiles, System.IOUtils,
  Conversation.Classes, System.ImageList, Vcl.ImgList, Table, Vcl.GraphUtil, ES.BaseControls, ES.Layouts,
  System.Actions, Vcl.ActnList, System.Generics.Collections, System.TypInfo, xml.VerySimple, System.StrUtils,
  system.Math, Vcl.MPlayer, ConEditPlus.Enums, Winapi.ShellAPI, ConEditPlus.Helpers, Vcl.Clipbrd, system.Rtti,
  ConEditPlus.Clipboard.Helper, ConEditPlus.Templates.Factory, Vcl.AppEvnts, System.Threading,
  system.DateUtils, vcl.Styles, vcl.Themes, ConEditPlus.Colors, Winapi.DwmApi;


type
  TfrmMain = class(TForm)


    PopupTree: TPopupMenu;
    MenuMain: TMainMenu;
    File1: TMenuItem;
    TablesMenu: TMenuItem;
    View1: TMenuItem;
    mnuHelp: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Close1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    ConvoProperties: TMenuItem;
    mniRecent: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Exit1: TMenuItem;
    ActorsPawns1: TMenuItem;
    Flags1: TMenuItem;
    Skills1: TMenuItem;
    Objects1: TMenuItem;
    mnuToggleMainToolBar: TMenuItem;
    mnuStatusbar: TMenuItem;
    mnuShowAudioFiles1: TMenuItem;
    PopupConvoEventList: TPopupMenu;
    pnlConvoTree: TEsPanel;
    Splitter1: TSplitter;
    ConvoTree: TTreeView;
    Add2: TMenuItem;
    Insert2: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N11: TMenuItem;
    Cut3: TMenuItem;
    Copy3: TMenuItem;
    PasteConvoEvent: TMenuItem;
    Speech1: TMenuItem;
    Choice1: TMenuItem;
    Setflag1: TMenuItem;
    Checkflag1: TMenuItem;
    CheckObject1: TMenuItem;
    TransferObject1: TMenuItem;
    MoveCamera1: TMenuItem;
    PlayAnimation1: TMenuItem;
    BuySellTrade1: TMenuItem;
    Jump1: TMenuItem;
    Random1: TMenuItem;
    Trigger1: TMenuItem;
    AddCompleteGoal1: TMenuItem;
    AddNote1: TMenuItem;
    AddSkillPoints1: TMenuItem;
    AddCredits1: TMenuItem;
    CheckPersona1: TMenuItem;
    Comment1: TMenuItem;
    End1: TMenuItem;
    Speech2: TMenuItem;
    Choice2: TMenuItem;
    Setflag2: TMenuItem;
    Checkflag2: TMenuItem;
    CheckObject2: TMenuItem;
    TransferObject2: TMenuItem;
    MoveCamera2: TMenuItem;
    PlayAnimation2: TMenuItem;
    BuySellTrade2: TMenuItem;
    Jump2: TMenuItem;
    Random2: TMenuItem;
    Trigger2: TMenuItem;
    AddCompleteGoal2: TMenuItem;
    AddNote2: TMenuItem;
    AddSkillPoints2: TMenuItem;
    AddCredits2: TMenuItem;
    CheckPersona2: TMenuItem;
    Comment2: TMenuItem;
    End2: TMenuItem;
    Add3: TMenuItem;
    Delete2: TMenuItem;
    N12: TMenuItem;
    Cut4: TMenuItem;
    Copy4: TMenuItem;
    Paste4: TMenuItem;
    N13: TMenuItem;
    menuConvoProperties: TMenuItem;
    N14: TMenuItem;
    TreeExpandAll: TMenuItem;
    CollapseAll2: TMenuItem;
    ImageListToolbar: TImageList;
    N15: TMenuItem;
    About1: TMenuItem;
    StatusBar: TStatusBar;
    MenusImageList: TImageList;
    N16: TMenuItem;
    Darkmode1: TMenuItem;
    FileOpenDialog: TFileOpenDialog;
    TreeImages: TImageList;
    ConEventList: TListBox;
    HeaderControl1: THeaderControl;
    Options1: TMenuItem;
    RecentFile0: TMenuItem;
    RecentFile1: TMenuItem;
    RecentFile2: TMenuItem;
    RecentFile3: TMenuItem;
    RecentFile4: TMenuItem;
    RecentFile5: TMenuItem;
    RecentFile6: TMenuItem;
    RecentFile7: TMenuItem;
    mnuGithub: TMenuItem;
    pnlEventList: TEsPanel;
    ActionList1: TActionList;
    FileOpen: TAction;
    FileNew: TAction;
    FileClose: TAction;
    FileSave: TAction;
    FileSaveAs: TAction;
    FileGenerateAudioNames: TAction;
    FileProperties: TAction;
    AddConversation: TAction;
    Conversation_Delete: TAction;
    Conversation_Cut: TAction;
    Conversation_Copy: TAction;
    Conversation_Paste: TAction;
    Conversation_Properties: TAction;
    Conversation_Find: TAction;
    Event_Add: TAction;
    Event_Insert: TAction;
    Event_Cut: TAction;
    Event_Copy: TAction;
    Event_Paste: TAction;
    Event_Delete: TAction;
    ShowOptions: TAction;
    FileSaveDialog: TFileSaveDialog;
    N18: TMenuItem;
    ViewoutputTMemo1: TMenuItem;
    mmoOutput: TMemo;
    pmOutput: TPopupMenu;
    ConFileParameters1: TMenuItem;
    Clear1: TMenuItem;
    ConversationsListCount1: TMenuItem;
    IndexEvents1: TMenuItem;
    btnCloseLog: TButton;
    N19: TMenuItem;
    ClearForNewFile1: TMenuItem;
    CreateTestFile1: TMenuItem;
    tmrEventWinPosSync: TTimer;
    DateTimeToDouble1: TMenuItem;
    EventListItems1: TMenuItem;
    CurrentConversationEvents1: TMenuItem;
    SelectDirDialog: TFileOpenDialog;
    mainToolBar: TToolBar;
    tbNewConversationFile: TToolButton;
    tbOpenFile: TToolButton;
    tbSaveFile: TToolButton;
    ToolButton4: TToolButton;
    tbCloseFile: TToolButton;
    ToolButton8: TToolButton;
    tbPrint: TToolButton;
    ToolButton9: TToolButton;
    tbSearch: TToolButton;
    ToolButton11: TToolButton;
    tbProperties: TToolButton;
    ToolButton7: TToolButton;
    tbGenAudio: TToolButton;
    tbGenerateAudioDirs: TToolButton;
    ToolButton6: TToolButton;
    tbSettings: TToolButton;
    ToolButton2: TToolButton;
    btnReorder: TToolButton;
    ToolButton3: TToolButton;
    tbStickyWindow: TToolButton;
    ToolButton1: TToolButton;
    btnViewLog: TToolButton;
    StaticText1: TStaticText;
    EsPanel1: TEsPanel;
    edtSearchBox: TEdit;
    Conversation_CheckLabels: TAction;
    tbVerifyLabels: TToolButton;
    ToolButton12: TToolButton;
    lblQSearch: TLabel;
    N5: TMenuItem;
    Duplicate1: TMenuItem;
    Event_Duplicate: TAction;
    N6: TMenuItem;
    ExpandTreeWithoutFlags: TMenuItem;
    Conversation_Rename: TAction;
    ConversationRename1: TMenuItem;
    ImageListToolbar_Hot: TImageList;
    ImageList_Toolbar_Disabled: TImageList;
    N7: TMenuItem;
    GenAudiofilenames: TMenuItem;
    AutoSaveTimer: TTimer;
    lblSelectedEvent: TLabel;
    mnuAITools: TMenuItem;
    CopySpeechtext1: TMenuItem;
    Event_CopySpeechText: TAction;
    Event_CopyMp3FileAndPath: TAction;
    Copymp3filepath1: TMenuItem;
    Event_CopyMp3FilePath: TAction;
    Event_CopyMp3File: TAction;
    EventCopyMp3File1: TMenuItem;
    Copymp3path1: TMenuItem;
    N9: TMenuItem;
    OpenExplorerforthisevent1: TMenuItem;
    Event_BrowseTo: TAction;
    CheckDpiRatio: TMenuItem;
    N10: TMenuItem;
    Copyalltext1: TMenuItem;
    SimulateDEED: TMenuItem;
    edtConvoTreeQSearch: TEdit;
    N20: TMenuItem;
    mnuChoiceItemSub0: TMenuItem;
    mnuChoiceItemSub1: TMenuItem;
    mnuChoiceItemSub2: TMenuItem;
    mnuChoiceItemSub3: TMenuItem;
    mnuChoiceItemSub4: TMenuItem;
    mnuChoiceItemSub5: TMenuItem;
    mnuChoiceItemSub6: TMenuItem;
    mnuChoiceItemSub7: TMenuItem;
    mnuChoiceItemSub8: TMenuItem;
    mnuChoiceItemSub9: TMenuItem;
    Copymp3pathfilename1: TMenuItem;
    CopyonlyPathtomp31: TMenuItem;
    Copyonlymp3filename1: TMenuItem;
    Copymp3pathfilename2: TMenuItem;
    CopyonlyPathtomp32: TMenuItem;
    Copyonlymp3filename2: TMenuItem;
    Copymp3pathfilename3: TMenuItem;
    CopyonlyPathtomp33: TMenuItem;
    Copyonlymp3filename3: TMenuItem;
    Copymp3pathfilename4: TMenuItem;
    CopyonlyPathtomp34: TMenuItem;
    Copyonlymp3filename4: TMenuItem;
    Copymp3pathfilename5: TMenuItem;
    CopyonlyPathtomp35: TMenuItem;
    Copyonlymp3filename5: TMenuItem;
    Copymp3pathfilename6: TMenuItem;
    CopyonlyPathtomp36: TMenuItem;
    Copyonlymp3filename6: TMenuItem;
    Copymp3pathfilename7: TMenuItem;
    CopyonlyPathtomp37: TMenuItem;
    Copyonlymp3filename7: TMenuItem;
    Copymp3pathfilename8: TMenuItem;
    CopyonlyPathtomp38: TMenuItem;
    Copyonlymp3filename8: TMenuItem;
    Copymp3pathfilename9: TMenuItem;
    CopyonlyPathtomp39: TMenuItem;
    Copyonlymp3filename9: TMenuItem;
    Copymp3pathfilename10: TMenuItem;
    CopyonlyPathtomp310: TMenuItem;
    Copyonlymp3filename10: TMenuItem;
    N21: TMenuItem;
    CopyChoicetext1: TMenuItem;
    CopyChoicetext2: TMenuItem;
    N22: TMenuItem;
    CopyChoicetext3: TMenuItem;
    N23: TMenuItem;
    CopyChoicetext4: TMenuItem;
    N24: TMenuItem;
    CopyChoicetext5: TMenuItem;
    N25: TMenuItem;
    CopyChoicetext6: TMenuItem;
    N26: TMenuItem;
    CopyChoicetext7: TMenuItem;
    N27: TMenuItem;
    CopyChoicetext8: TMenuItem;
    N28: TMenuItem;
    CopyChoicetext9: TMenuItem;
    N29: TMenuItem;
    CopyChoicetext10: TMenuItem;
    N30: TMenuItem;
    btnStartSearch: TButton;
    mnuCharcoalDarkSlate: TMenuItem;
    mnuLunaTheme: TMenuItem;
    mnuSilverTheme: TMenuItem;
    mnuSystemTheme: TMenuItem;
    mnuOnyxBlueTheme: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    SpeechGeneratortest1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    mnuChoiceItemSub10: TMenuItem;
    Copyonlymp3filename11: TMenuItem;
    CopyonlyPathtomp311: TMenuItem;
    Copymp3pathfilename11: TMenuItem;
    N34: TMenuItem;
    CopyChoicetext11: TMenuItem;
    mnuChoiceItemSub11: TMenuItem;
    Copyonlymp3filename12: TMenuItem;
    CopyonlyPathtomp312: TMenuItem;
    Copymp3pathfilename12: TMenuItem;
    N35: TMenuItem;
    CopyChoicetext12: TMenuItem;
    mnuChoiceItemSub12: TMenuItem;
    Copyonlymp3filename13: TMenuItem;
    CopyonlyPathtomp313: TMenuItem;
    Copymp3pathfilename13: TMenuItem;
    N36: TMenuItem;
    CopyChoicetext13: TMenuItem;
    mnuChoiceItemSub13: TMenuItem;
    Copyonlymp3filename14: TMenuItem;
    CopyonlyPathtomp314: TMenuItem;
    Copymp3pathfilename14: TMenuItem;
    N37: TMenuItem;
    CopyChoicetext14: TMenuItem;
    mnuChoiceItemSub14: TMenuItem;
    Copyonlymp3filename15: TMenuItem;
    CopyonlyPathtomp315: TMenuItem;
    Copymp3pathfilename15: TMenuItem;
    N38: TMenuItem;
    CopyChoicetext15: TMenuItem;
    mnuCopyConvoTextSub: TMenuItem;
    Wholeconversation1: TMenuItem;
    Withchoicesifany1: TMenuItem;
    Wholeconversation2: TMenuItem;
    Partial1: TMenuItem;
    Alllinesofselectedspeaker1: TMenuItem;
    tbViewConeventJump: TToolButton;
    pnlTreeSearch: TEsPanel;
    lbTreeSearchResults: TListBox;
    chkTreeSearchExactMatch: TCheckBox;
    Conversation_Create_AIBark_Template: TAction;
    AddTemplateConversation1: TMenuItem;
    AddAIBarktemplateconversation1: TMenuItem;
    Conversation_Create_AIBarkFutz_Template: TAction;
    emplateforAIBarkFutz1: TMenuItem;
    N8: TMenuItem;
    Testfactory1: TMenuItem;
    Defaultrecordvalue1: TMenuItem;
    pnlEventFilter: TEsPanel;
    grpEventFilter: TGroupBox;
    chkSpeech: TCheckBox;
    chkChoice: TCheckBox;
    chkComment: TCheckBox;
    chkTransferObject: TCheckBox;
    chkTrigger: TCheckBox;
    chkRandom: TCheckBox;
    chkCheckObject: TCheckBox;
    chkTrade: TCheckBox;
    chkAnimation: TCheckBox;
    chkAddGoal: TCheckBox;
    chkSetFlag: TCheckBox;
    chkAddCredits: TCheckBox;
    chkCheckPersona: TCheckBox;
    chkCheckFlag: TCheckBox;
    chkMoveCamera: TCheckBox;
    chkJump: TCheckBox;
    chkAddSkillPoints: TCheckBox;
    chkAddNote: TCheckBox;
    btnDisplayAllEvents: TButton;
    btnOnlyTextEvents: TButton;
    chkEnd: TCheckBox;
    chkEventIdx: TCheckBox;
    Setfilter1: TMenuItem;
    btnApplyFilter: TButton;
    FileExport: TAction;
    Exportastext1: TMenuItem;
    N17: TMenuItem;
    With3Speechevents1: TMenuItem;
    With4Speechevents1: TMenuItem;
    With5Speechevents1: TMenuItem;
    With6Speechevents1: TMenuItem;
    With6Speechevents2: TMenuItem;
    With8Speechevents1: TMenuItem;
    With9Speechevents1: TMenuItem;
    With10Speechevents1: TMenuItem;
    With11Speechevents1: TMenuItem;
    N39: TMenuItem;
    With4Speechevents2: TMenuItem;
    With5Speechevents2: TMenuItem;
    With6Speechevents3: TMenuItem;
    With7Speechevents1: TMenuItem;
    With8Speechevents2: TMenuItem;
    With9Speechevents2: TMenuItem;
    With10Speechevents2: TMenuItem;
    With11Speechevents2: TMenuItem;
    procedure mnuToggleMainToolBarClick(Sender: TObject);
    procedure mnuStatusbarClick(Sender: TObject);
    procedure PopupTreePopup(Sender: TObject);
    procedure PopupConvoEventListPopup(Sender: TObject);
    procedure Exit1Click(Sender: TObject);

    procedure AddEvent(TargetPage: Integer); // Add event to end
    procedure InsertEvent(TargetPage: Integer); // Insert event at current position in the list
    procedure EditCurrentEvent(EventToEdit: TConEvent);
    procedure ToggleLV_FlagValue(lstv: TListView);

    procedure ApplyStyle(styleName: string);

    procedure SetEventsListScrollbars();

    procedure SendStringToEditValue(control: TControl);

    procedure FillEventLabels(const con: TConversation; listToFill: TCustomListControl);

    function GetAppVersionStr(): string; //https://delphihaven.wordpress.com/2012/12/08/retrieving-the-applications-version-string/
    function HasConvoEventToPaste(): Boolean;
    function HasConversationToPaste(): Boolean;
    function GetReorderButtonHint(): string;

    function CountLineWraps(str: string): Integer;
    function CanRenameConversation(convoName: string): Boolean;

    function GetSetFlagsItemHeight(events: array of TConEvent): Integer;
    function GetCheckFlagsItemHeight(events: array of TConEvent): Integer;
    function GetSpeechEventItemHeight(events: array of TConEvent): Integer;
    function GetChoiceItemHeight(events: array of TConEvent): Integer;
    function GetRandomEventItemHeight(events: array of TConEvent): Integer;

    function GetAddGoalItemHeight(events: array of TConEvent): Integer;
    function GetAddNoteItemHeight(events: array of TConEvent): Integer;
    function GetAddSkillPtsItemHeight(events: array of TConEvent): Integer;
    function GetCommentItemHeight(events: array of TConEvent): Integer;

    function FindConversationObjByString(conName: string): TConversation; // Find conversation by name return as TObject
    function FindConversationObjById(idToLookFor: Integer): TConversation; // Returns object
    function FindConversationById(id: Integer): string; // Find conversation by id and return it's name as string;

    function FindTableIdByName(tableMode: TTableMode; NameToLookFor: string): Integer;
    function FindTableNameById(tableMode: TTableMode; idToLookFor: Integer): String;

    function TreeHasItemsOfLevel(Tree: TTreeView; LevelToCheck: Integer): Boolean;
    function ItemExistsInTreeView(TreeView: TTreeView; ItemText: string): Boolean;
    function FindConvoOwnerInTree(OwnerName: string): TTreeNode;
    function FindConversationInTree(ConName: string): TTreeNode;

    function CheckLabelExistInConversation(labelName: string): Boolean; // Check if event label already exists

    function bIsEventFilterActive(): Boolean;

    procedure SelectTreeItemByObject(TreeView: TTreeView; Obj: TObject);
    procedure SelectEventByObject(obj: TObject);


    procedure SetMemoFont(FontSize: Integer; FontName: string);
    procedure PickTableObject(newTableMode: TTableMode; control: TControl);
    procedure FirstTimeLaunch();

    procedure CreateConFile(bCreatingNew: Boolean);
    procedure ClearForNewFile();

    procedure GenerateAudioFileNames();
    procedure SetEventIndexes();

    // loading and saving configuration file
    procedure LoadSettings();
    procedure SaveSettings();

    procedure AddRecentFile(aFile: string); // add opened file to "recent" list
    procedure ClearRecentFiles();
    procedure OpenRecentFile(aFile: string);

    procedure LoadConXMLFile(aFileName: string);
    procedure BuildConvoTree();

    procedure ProcessCommandline(const cmdLine: string);

    procedure UpdateEventListHeights();
    procedure UpdateEventListFixedHeights();

    // Events Filter
    procedure ResetEventFilter();
    procedure ApplyEventFilter();
    procedure LoadFilters(); // Set checkboxes.Checked from variables

    procedure AddLog(msg: string);

    procedure DeleteCurrentEvent();
    procedure DeleteCurrentConversation();

    procedure CreateObjectLists();

    procedure ToggleMenusPanels(bVisible: Boolean);

    // to draw special items...
    procedure DrawET_Speech(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Choice(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_SetFlag(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure DrawET_CheckFlag(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_CheckObject(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_TransferObject(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure DrawET_MoveCamera(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Animation(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Trade(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure DrawET_Jump(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Random(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Trigger(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure DrawET_AddGoal(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_AddNote(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_AddSkillPoints(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure DrawET_AddCredits(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_CheckPersona(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_Comment(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DrawET_End(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    procedure ToggleEventIdx();

    // to highlight events
    procedure HighlightSelectedEvent(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure HighlightEvents(labelStr: string);
    procedure HighlightRelatedEvents();
    procedure UnhighlightRelatedEvents();

    // selected event
    procedure DrawEventSelection(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

    // To copy/paste events
    procedure CopyEventToClipboard(var Event: TConEvent);
    procedure PasteEventFromClipboard();

    // to copy/paste conversations
    procedure CopyConversationToClipboard(const Convo: TConversation);
    procedure PasteConversationFromClipboard();


    // To duplicate selected event
    procedure CopyEventFields(Source, Dest: TConEvent);
    procedure CopyChoiceItems(Source, Dest: TConEventChoice);

    // To expand tree without flags
    procedure ExpandTreeViewToLevel(TreeView: TTreeView; Level: Integer);

    // to load file using drag and drop
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;

    procedure CopyChoiceMp3Path(ChoiceMP3CopyMode: TChoiceMP3CopyMode; idx: Integer);

    procedure CreateAIBarksExample(bBarkFutz: Boolean; SpeechCount: Integer = 3);

    procedure ExportConversationAsText(const filename: string);



    procedure FormResize(Sender: TObject);
    procedure CollapseAll2Click(Sender: TObject);
    procedure ConvoTreeEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
    procedure Speech1Click(Sender: TObject);
    procedure Choice1Click(Sender: TObject);
    procedure Setflag1Click(Sender: TObject);
    procedure Checkflag1Click(Sender: TObject);
    procedure CheckObject1Click(Sender: TObject);
    procedure TransferObject1Click(Sender: TObject);
    procedure MoveCamera1Click(Sender: TObject);
    procedure PlayAnimation1Click(Sender: TObject);
    procedure BuySellTrade1Click(Sender: TObject);
    procedure Jump1Click(Sender: TObject);
    procedure Random1Click(Sender: TObject);
    procedure Trigger1Click(Sender: TObject);
    procedure AddCompleteGoal1Click(Sender: TObject);
    procedure AddNote1Click(Sender: TObject);
    procedure AddSkillPoints1Click(Sender: TObject);
    procedure AddCredits1Click(Sender: TObject);
    procedure CheckPersona1Click(Sender: TObject);
    procedure Comment1Click(Sender: TObject);
    procedure End1Click(Sender: TObject);
    procedure Speech2Click(Sender: TObject);
    procedure Choice2Click(Sender: TObject);
    procedure Setflag2Click(Sender: TObject);
    procedure Checkflag2Click(Sender: TObject);
    procedure CheckObject2Click(Sender: TObject);
    procedure TransferObject2Click(Sender: TObject);
    procedure MoveCamera2Click(Sender: TObject);
    procedure PlayAnimation2Click(Sender: TObject);
    procedure BuySellTrade2Click(Sender: TObject);
    procedure Jump2Click(Sender: TObject);
    procedure Random2Click(Sender: TObject);
    procedure Trigger2Click(Sender: TObject);
    procedure AddCompleteGoal2Click(Sender: TObject);
    procedure AddNote2Click(Sender: TObject);
    procedure AddSkillPoints2Click(Sender: TObject);
    procedure AddCredits2Click(Sender: TObject);
    procedure CheckPersona2Click(Sender: TObject);
    procedure Comment2Click(Sender: TObject);
    procedure End2Click(Sender: TObject);
    procedure ActorsPawns1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Flags1Click(Sender: TObject);
    procedure Skills1Click(Sender: TObject);
    procedure Objects1Click(Sender: TObject);
    procedure Add3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuMainChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
    procedure About1Click(Sender: TObject);
    procedure HeaderControl1DrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect;Pressed: Boolean);
    procedure HeaderControl1SectionResize(HeaderControl: THeaderControl; Section: THeaderSection);
    procedure ConEventListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure ConEventListMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
    procedure Splitter1Moved(Sender: TObject);
    procedure ConEventListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuShowAudioFiles1Click(Sender: TObject);
    procedure RecentFile0Click(Sender: TObject);
    procedure ConEventListDblClick(Sender: TObject);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
    procedure ShowOptionsExecute(Sender: TObject);
    procedure FilePropertiesExecute(Sender: TObject);
    procedure FileOpenExecute(Sender: TObject);
    procedure FileSaveAsExecute(Sender: TObject);
    procedure ConvoTreeChange(Sender: TObject; Node: TTreeNode);
    procedure ConEventListMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ViewoutputTMemo1Click(Sender: TObject);
    procedure ConFileParameters1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure ConversationsListCount1Click(Sender: TObject);
    procedure Event_DeleteExecute(Sender: TObject);
    procedure AddConversationExecute(Sender: TObject);
    procedure Conversation_DeleteExecute(Sender: TObject);
    procedure ConEventListDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ConEventListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnReorderClick(Sender: TObject);
    procedure tbStickyWindowClick(Sender: TObject);
    procedure ClearForNewFile1Click(Sender: TObject);
    procedure CreateTestFile1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Conversation_PropertiesExecute(Sender: TObject);
    procedure ConvoTreeEdited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure FileGenerateAudioNamesExecute(Sender: TObject);
    procedure FileCloseExecute(Sender: TObject);
    procedure FileNewExecute(Sender: TObject);
    procedure FileSaveExecute(Sender: TObject);
    procedure tmrEventWinPosSyncTimer(Sender: TObject);
    procedure DateTimeToDouble1Click(Sender: TObject);
    procedure EventListItems1Click(Sender: TObject);
    procedure CurrentConversationEvents1Click(Sender: TObject);
    procedure tbGenerateAudioDirsClick(Sender: TObject);
    procedure Conversation_CheckLabelsExecute(Sender: TObject);
    procedure mainToolBarCustomDrawButton(Sender: TToolBar; Button: TToolButton;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure mnuGithubClick(Sender: TObject);
    procedure edtSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure Event_DuplicateExecute(Sender: TObject);
    procedure IndexEvents1Click(Sender: TObject);
    procedure Event_CutExecute(Sender: TObject);
    procedure Event_CopyExecute(Sender: TObject);
    procedure Event_PasteExecute(Sender: TObject);
    procedure ConvoTreeDblClick(Sender: TObject);
    procedure ExpandTreeWithoutFlagsClick(Sender: TObject);
    procedure TreeExpandAllClick(Sender: TObject);
    procedure FileOpenDialogTypeChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ConEventListEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ConvoTreeDeletion(Sender: TObject; Node: TTreeNode);
    procedure Conversation_RenameExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Conversation_FindExecute(Sender: TObject);
    procedure AutoSaveTimerTimer(Sender: TObject);
    procedure Conversation_CutExecute(Sender: TObject);
    procedure Conversation_CopyExecute(Sender: TObject);
    procedure Conversation_PasteExecute(Sender: TObject);
    procedure ConvoTreeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Event_CopySpeechTextExecute(Sender: TObject);
    procedure Event_CopyMp3FileAndPathExecute(Sender: TObject);
    procedure Event_CopyMp3FilePathExecute(Sender: TObject);
    procedure Event_CopyMp3FileExecute(Sender: TObject);
    procedure Event_BrowseToExecute(Sender: TObject);
    procedure CheckDpiRatioClick(Sender: TObject);
    procedure Copyalltext1Click(Sender: TObject);
    procedure SimulateDEEDClick(Sender: TObject);
    procedure edtConvoTreeQSearchChange(Sender: TObject);
    procedure CopyChoicetext1Click(Sender: TObject);
    procedure CopyChoiceItemObj_Path_Filename(Sender: TObject);
    procedure CopyChoiceItemObj_Path(Sender: TObject);
    procedure CopyChoiceItemObj_Filename(Sender: TObject);
    procedure btnStartSearchClick(Sender: TObject);
    procedure mnuCharcoalDarkSlateClick(Sender: TObject);
    procedure mnuLunaThemeClick(Sender: TObject);
    procedure mnuSilverThemeClick(Sender: TObject);
    procedure mnuSystemThemeClick(Sender: TObject);
    procedure mnuOnyxBlueThemeClick(Sender: TObject);
    procedure ApplicationEvents1ShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure ConEventListKeyPress(Sender: TObject; var Key: Char);
    procedure Wholeconversation1Click(Sender: TObject);
    procedure Withchoicesifany1Click(Sender: TObject);
    procedure Alllinesofselectedspeaker1Click(Sender: TObject);
    procedure SpeechGeneratortest1Click(Sender: TObject);
    procedure tbViewConeventJumpClick(Sender: TObject);
    procedure edtConvoTreeQSearchEnter(Sender: TObject);
    procedure lbTreeSearchResultsDblClick(Sender: TObject);
    procedure lbTreeSearchResultsExit(Sender: TObject);
    procedure ConvoTreeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Conversation_Create_AIBark_TemplateExecute(Sender: TObject);
    procedure Conversation_Create_AIBarkFutz_TemplateExecute(Sender: TObject);
    procedure Testfactory1Click(Sender: TObject);
    procedure Defaultrecordvalue1Click(Sender: TObject);
    procedure btnDisplayAllEventsClick(Sender: TObject);
    procedure btnOnlyTextEventsClick(Sender: TObject);
    procedure Setfilter1Click(Sender: TObject);
    procedure btnApplyFilterClick(Sender: TObject);
    procedure FileExportExecute(Sender: TObject);
  private
    { Private declarations }
    FFileModified: Boolean;
    FAutoSaveEnabled: Boolean;

    function GetFileModified(): Boolean; // Getter function
    procedure SetFileModified(const Value: Boolean); // Setter procedure

    function GetAutoSaveEnabled(): Boolean;
    procedure SetAutoSaveEnabled(const Value: Boolean);

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;

    // For autosave.
    procedure AutoSaveFile(const aFileName: string);
  public
    { Public declarations }

    var conFileParameters: TConFileParameters; // To store basic data (header)

    var ConversationsList: TObjectList<TConversation>; // To store conversations and their events
    var CurrentConversation: TConversation; // Conversation currently selected in ConvoTree
    var CurrentEvent: TConEvent; // Current (selected) event in event list

    // sets of strings to store Tables
    var listPawnsActors: TStringList;
    var listFlags: TStringList;
    var listSkills: TStringList;
    var listObjects: TStringList;

    // Configuration file variables begin
    // Override some colors (e.g. theme is ok, but user wants to change some colors)
    var clrHighlightEvent, clrHighlightEventFrom, clrHighlightEventTo, clrGrid: TColor;
    var clPlayerBindNameColor: TColor;
    var clPlayerSpeechBGColor: TColor;

    // Events colors
    var EventListColors: ConEditPlus.Colors.TEventListColors;

    // boolean variables for configuration file
    var bShowAudioFiles,
        bShowStatusBar,
        bShowToolbar,
        bHighlightRelatedEvents,
        bAskForConvoDelete,
        bAskForEventDelete,
        bHglEventWithNoAudio,
        bHglEventsGradient,
        bFlatToolbar,
        bUse3DSelectionFrame,
        bUseWhiteSelectedText,
        bDrawEventIdx,
        bUseLogging,
        bVerifyEventLabel,
        bUsePlayerBindNameColor,
        bUsePlayerSpeechBGColor,
        bUseCustomHighlightEventColor,
//        bUseCustomGradientHighlightEventColor,
        bUseCustomGridColor : Boolean;

    property bAutoSaveEnabled: Boolean read GetAutoSaveEnabled write SetAutoSaveEnabled;

    // strings
    var ConversationUserName, ConFilePath, ConFileBakPath, ConFileAudioPath: string;
    var CurrentTheme: string; // save and restore theme (skin).

    // Integer values
    var AutoSaveMinutes: Integer;
    var OpenFileFilterIndex, SaveFileFilterIndex: Integer; // save last selected file filter when opening/saving file.

    // to store recent files!
    var RecentFiles: array[0..CEP_MAX_RECENT_FILES] of string;

    // Hold xxx key to reorder events
    var ReorderModKey: TReorderEventsModKey;

    var bEnableDblClickTreeFlag: Boolean;
    // Configuration file variables end

    // variables for Event Filter
    var bchkSpeech: Boolean;
    var bchkChoice: Boolean;
    var bchkComment: Boolean;
    var bchkTransferObject: Boolean;
    var bchkTrigger: Boolean;
    var bchkRandom: Boolean;
    var bchkCheckObject: Boolean;
    var bchkTrade: Boolean;
    var bchkAnimation: Boolean;
    var bchkAddGoal: Boolean;
    var bchkSetFlag: Boolean;
    var bchkAddCredits: Boolean;
    var bchkCheckPersona: Boolean;
    var bchkCheckFlag: Boolean;
    var bchkMoveCamera: Boolean;
    var bchkJump: Boolean;
    var bchkAddSkillPoints: Boolean;
    var bchkAddNote: Boolean;
    var bchkEnd: Boolean;


    var MainFormIni: TIniFile;     // ini file

    var currentConFile: string; // global variable, so I can use it anywhere...

    // set to True when file has been modified. Converted to property
    property bFileModified: Boolean read GetFileModified write SetFileModified;

    var SysScrollBarWidth: Integer;

    var CF_ConEditPlus: Word; // Custom clipboard format

    var TreeBuildTask: ITask;
    var AutoSaveTask: ITask;
    var frmEventInsAddOffset: TPoint;
  end;

var
  frmMain: TfrmMain;

type
  TListBoxCracker = class(TListBox);


implementation


{$R *.dfm}
{$R SoundResources.res} // contains final.mp3

uses frmSettings1, EditValueDialog, ConFileProperties, AboutBox1, ConvoProperties, frmFind1, AddInsertEvent,
     ConXml.Reader, ConXML.Writer, confile.Reader, conFile.Writer, uFrmLabelErrors, ufrmAudioDirectories,
     UfrmConversationPlayer, uFrmFindRefs;


function TfrmMain.GetFileModified: Boolean;
begin
    Result := FFileModified;
end;

procedure TfrmMain.SetFileModified(const Value: Boolean);
begin
    FFileModified := Value;

    case Value of
        True: Caption := strAppTitle + strFileModiefied;
        False: Caption := strAppTitle;
    end;

    FileSave.Enabled := Value;
end;

function TfrmMain.GetAutoSaveEnabled(): Boolean;
begin
    Result := FAutoSaveEnabled;
end;

procedure TfrmMain.SetAutoSaveEnabled(const Value: Boolean);
begin
    FAutoSaveEnabled := Value;
    AutoSaveTimer.Enabled := Value;
end;

procedure TfrmMain.Wholeconversation1Click(Sender: TObject);
var
    TextToCopy: TStringList;
begin
    TextToCopy := TStringList.Create();

    try
        for var Event in CurrentConversation.Events do
        begin
            if Assigned(event) and (Event is TConEventSpeech) then
                TextToCopy.Add(Format(strClipboardConversationV1, [TConEventSpeech(event).ActorValue, TConEventSpeech(event).TextLine]));
        end;

        Clipboard.AsText := TextToCopy.Text;
    finally
        TextToCopy.Free();
    end;
end;

procedure TfrmMain.Withchoicesifany1Click(Sender: TObject);
var
    TextToCopy: TStringList;
begin
    TextToCopy := TStringList.Create();

    try
        for var Event in CurrentConversation.Events do
        begin
            if Assigned(event) then
            begin
                if (Event is TConEventSpeech) then
                    TextToCopy.Add(Format('%s: %s', [TConEventSpeech(event).ActorValue, TConEventSpeech(event).TextLine]));

                if (Event is TConEventChoice) then
                begin
                    for var i:= 0 to High(TConEventChoice(Event).Choices) do
                        TextToCopy.Add(Format(PLAYER_BINDNAME + strClipboardConversationV2, [i,  TConEventChoice(Event).Choices[i].textline]));
                end;
            end;
        end;

        Clipboard.AsText := TextToCopy.Text;
    finally
        TextToCopy.Free();
    end;
end;

procedure TfrmMain.WMDropFiles(var Msg: TWMDropFiles);
var
    FileName: array[0..MAX_PATH] of Char;
begin
    try
        for var i := 0 to Screen.FormCount - 1 do
        begin
            if (Screen.Forms[i] <> Application.MainForm) and (Screen.Forms[i].Visible = True) then // Не открывать файл если открыто какое-либо окно программы
            begin
                Exit();
            end;
        end;

        if DragQueryFile(Msg.Drop, 0, FileName, MAX_PATH) > 0 then
        begin
            if FileExists(FileName) = False then
            begin
                MessageBox(Handle, PChar(Format(strFileDoesNotExists, [FileName])), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
                Exit();
            end;

            FileCloseExecute(Self);             // Close current file first!

            if UpperCase(ExtractFileExt(FileName)) = '.XML' then
            begin
                LoadConXMLFile(FileName);
                BuildConvoTree();
            end else
            if UpperCase(ExtractFileExt(FileName)) = '.CON' then
            begin
                LoadConFile(FileName);
                BuildConvoTree();
            end else
            begin
                //MessageDlg(strSelectConXML,  mtError, [mbOK], 0);
                MessageBox(Handle, PChar(strSelectConXML), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
                Exit();
            end;

            currentConFile := FileName;  // Assign filename to global variable
            StatusBar.Panels[0].Text := '';
            StatusBar.Panels[1].Text := FileName; // filename in StatusBar
            AddRecentFile(FileName);  // Add to recent
            ToggleMenusPanels(True);

            Caption := strAppTitle;
        end;
    finally
        DragFinish(Msg.Drop);
    end;
    // Note we handled message
    Msg.Result := 0;
    inherited;
end;

procedure TfrmMain.WMEnterSizeMove(var Msg: TMessage);
begin
    tmrEventWinPosSync.Enabled := True;

    frmEventInsAddOffset.X := frmEventInsAdd.Left - Self.Left;
    frmEventInsAddOffset.Y := frmEventInsAdd.Top - Self.Top;

    inherited;
end;

procedure TfrmMain.WMExitSizeMove(var Msg: TMessage);
begin
    tmrEventWinPosSync.Enabled := False;

    inherited;
end;

function TfrmMain.GetSetFlagsItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventSetFlag then
           aLength := TConEventSetFlag(events[L]).numFlags; //ArrayLength;
    end;

    if bchkSetFlag = True then
        dResult := 20 + (17 * aLength) // 20 for name and 17 for each flag string
    else
        dResult := FILTER_ITEM_HEIGHT;
    //dResult := Round(20 * GetDPIAsRatio()) + Round(17 * GetDpiAsRatio()) * aLength; // 20 for name and 17 for each flag string

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetCheckFlagsItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventCheckFlag then
           aLength := TConEventCheckFlag(events[L]).numFlags; //ArrayLength;
    end;

    if bchkCheckFlag = True then
        dResult := 20 + (17 * aLength) // 20 for name and 17 for each flag string
    else
        dResult := FILTER_ITEM_HEIGHT;
    //dResult := Round(20 * GetDPIAsRatio()) + (Round(17 * GetDPIAsRatio()) * aLength); // 20 for name and 17 for each flag string
    //dResult := Round(20 * GetDPIAsRatio()) + (Round(17 * GetDPIAsRatio()) * aLength);

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetChoiceItemHeight(events: array of TConEvent): Integer;
begin
    var dResult: Integer;
    var fLength := 0;
    var tLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventChoice then
        begin
            var choiceEvent := TConEventChoice(events[L]);

            for var chi in choiceEvent.Choices do
            begin
                if Length(chi.RequiredFlags) > 0 then
                Inc(fLength);
            end;

            var cLength := choiceEvent.NumChoices;

            tLength := cLength + fLength;
            Break;
        end;
    end;

    //dResult := 20 + (17 * tLength); // 20 for name and 17 for each Choice Item + space for flags
    if bchkChoice = True then
        dResult := Round(20 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(17 * ConEditPlus.Helpers.GetDPIAsRatio()) * tLength) // 20 for name and 17 for each Choice Item + space for flags
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.CountLineWraps(str: string): Integer;
begin
    var TextMetric: TTextMetric;
    var RealWidth := ConEventList.ClientWidth - (HeaderControl1.Sections[0].Width + SysScrollBarWidth); // Width of first column + scrollbar width for easier reading

    if RealWidth < 1 then RealWidth := 1; // division by zero fix

    Canvas.Font.Name := CEP_SPEECH_EVENT_FONT;
    Canvas.Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

    GetTextMetrics(Canvas.Handle, TextMetric);

    var WrapWidth := RealWidth - TextMetric.tmOverhang;

    Result := Ceil(Canvas.TextWidth(str) / WrapWidth) + 1;
    //Result := (Canvas.TextWidth(str) + (RealWidth - TextMetric.tmOverhang) - 1) div RealWidth;
end;

function TfrmMain.GetSpeechEventItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventSpeech then
        begin
           aLength := TConEventSpeech(events[L]).LineWrapCount;
        end;
    end;

    //dResult := 18 + (16 * aLength); // 20 for name and 17 for each speech string
    if bchkSpeech = True then
        dResult := Round(18 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 20 for name and 17 for each speech string
    else
        dResult := FILTER_ITEM_HEIGHT;


    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

procedure TfrmMain.mnuCharcoalDarkSlateClick(Sender: TObject);
begin
    ApplyStyle('Charcoal Dark Slate');
end;

function TfrmMain.GetRandomEventItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventRandom then
        begin
           aLength := Length(TConEventRandom(events[L]).GoToLabels);
        end;
    end;

    //dResult := 38 + (17 * aLength); // 38 for name and 17 for each flag string
    if bchkRandom = True then
        dResult := Round(38 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(17 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 38 for name and 17 for each flag string
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetAddGoalItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventAddGoal then
        begin
           aLength := TConEventAddGoal(events[L]).LineWrapCount;
        end;
    end;

    //dResult := 20 + (16 * aLength); // 18 for event name and 17 for each comment string
    if bchkAddGoal = True then
        dResult := Round(20 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 18 for event name and 17 for each comment string
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetAddNoteItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventAddNote then
        begin
           aLength := TConEventAddNote(events[L]).LineWrapCount;
        end;
    end;

    //dResult := 5 + (16 * aLength); // 18 for event name and 17 for each comment string
    if bchkAddNote = True then
        dResult := Round(5 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 18 for event name and 17 for each note string
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetAddSkillPtsItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventAddSkillPoints then
        begin
           aLength := TConEventAddSkillPoints(events[L]).LineWrapCount;
        end;
    end;

    //dResult := 20 + (16 * aLength); // 18 for event name and 17 for each comment string
    if bchkAddSkillPoints = True then
        dResult := Round(20 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 18 for event name and 17 for each comment string
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetCommentItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventComment then
        begin
           aLength := TConEventComment(events[L]).LineWrapCount;
        end;
    end;

    //dResult := 5 + (16 * aLength); // 18 for event name and 17 for each comment string
    if bchkComment = True then
        dResult := Round(5 * ConEditPlus.Helpers.GetDPIAsRatio()) + (Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()) * aLength) // 18 for event name and 17 for each comment string
    else
        dResult := FILTER_ITEM_HEIGHT;

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

procedure TfrmMain.TreeExpandAllClick(Sender: TObject);
begin
    ConvoTree.FullExpand();
end;

function TfrmMain.TreeHasItemsOfLevel(Tree: TTreeView; LevelToCheck: Integer): Boolean;
var
    Node: TTreeNode;
begin
    Result := False;

    for Node in Tree.Items do
    begin
        if Node.Level = LevelToCheck then
        begin
            Result := True;
            Break;
        end;
    end;
end;

function TfrmMain.ItemExistsInTreeView(TreeView: TTreeView; ItemText: string): Boolean;
var
    i: Integer;
begin
    Result := False;

    for i := 0 to TreeView.Items.Count - 1 do
    begin
        // Compare the text of each item with the desired item text
        if LowerCase(TreeView.Items[i].Text) = LowerCase(ItemText) then
        begin
            Result := True;
            Exit(); // Exit the loop if the item is found
        end
    end;
end;

procedure TfrmMain.SelectTreeItemByObject(TreeView: TTreeView; Obj: TObject);
var
    Node: TTreeNode;
begin
    Node := TreeView.Items.GetFirstNode;

    while Node <> nil do
    begin
        if Node.Data = Obj then
        begin
            TreeView.Selected := Node;
            Node.MakeVisible;
            Exit();
        end;
        Node := Node.GetNext;
    end;
end;

procedure TfrmMain.SelectEventByObject(obj: TObject);
begin
    if Obj <> nil then
    begin
        for var i:= 0 to ConEventList.Count -1 do
        begin
            if ConEventList.Items.Objects[i] = Obj then
            begin
                ConEventList.ItemIndex := i;
                ConEventListClick(self); // select event
                Break;
            end;
        end;
    end;
end;

function TfrmMain.FindConversationObjByString(conName: string): TConversation; // Find conversation by name and return as TObject
begin
    for var i:= 0 to ConversationsList.Count -1 do
    begin
        if LowerCase(conName) = LowerCase(ConversationsList.Items[i].conName) then
        Exit(ConversationsList.Items[i]);
    end;

    Result := nil;
end;

function TfrmMain.FindConversationInTree(ConName: string): TTreeNode;
begin
    Result := nil;
    if ConName = '' then Exit(nil);

    for var item in ConvoTree.Items do
    begin
        if (item.Level = 1) and (lowerCase(ConName) = LowerCase(Item.Text)) then
        begin
            Result := item;
            Break;
        end;
    end;
end;

function TfrmMain.FindConvoOwnerInTree(OwnerName: string): TTreeNode; // only first level
begin
    Result := nil;
    if OwnerName = '' then Exit(nil);

    for var item in ConvoTree.Items do
    begin
        if (item.Level = 0) and (lowerCase(OwnerName) = LowerCase(Item.Text)) then
        begin
            Result := item;
            Break;
        end;
    end;
end;

function TfrmMain.FindConversationById(id: Integer): string;
var tempStr: string;
begin
    for var K:= 0 to ConversationsList.Count -1 do
    begin
        if ConversationsList.Items[K].id = id then begin
           tempStr := ConversationsList.Items[K].conName;
           Break;
        end;
    end;

    Result := tempStr;
end;

function TfrmMain.FindConversationObjById(idToLookFor: Integer): TConversation;
begin
    var tempCon: TConversation := nil;

    for var K:= 0 to ConversationsList.Count -1 do
    begin
        if ConversationsList.Items[K].id = idToLookFor then
        begin
           tempCon := ConversationsList.Items[K];
           Break;
        end;
    end;

//    ShowMessage('Found conversation: ' + tempCon.conName + ' id=' + tempCon.id.ToString);

    Result := tempCon;
end;

function TfrmMain.FindTableIdByName(tableMode: TTableMode; NameToLookFor: string): Integer;
var
    tempInteger: Integer;
begin
    result := -1;

    case tableMode of
      TM_ActorsPawns:
        begin
           tempInteger := listPawnsActors.IndexOf(NameToLookFor);
           if tempInteger <> -1 then
              result := tempInteger;
        end;

      TM_Flags:
        begin
           tempInteger := listFlags.IndexOf(NameToLookFor);
           if tempInteger <> -1 then
              result := tempInteger;
        end;

      TM_Skills:
        begin
           tempInteger := listSkills.IndexOf(NameToLookFor);
           if tempInteger <> -1 then
              result := tempInteger;
        end;

      TM_Objects:
        begin
           tempInteger := listObjects.IndexOf(NameToLookFor);
           if tempInteger <> -1 then
              result := tempInteger;
        end;
    end;
end;

function TfrmMain.FindTableNameById(tableMode: TTableMode; idToLookFor: Integer): String;
var
    tempStr: string;
begin
    case tableMode of
       TM_ActorsPawns:
         begin
             tempStr:= listPawnsActors.Strings[idToLookFor];
             result := tempStr;
         end;

       TM_Flags:
         begin
             tempStr:= listFlags.Strings[idToLookFor];
             result := tempStr;
         end;

        TM_Skills:
         begin
             tempStr:= listSkills.Strings[idToLookFor];
             result := tempStr;
         end;

        TM_Objects:
        begin
             tempStr:= listObjects.Strings[idToLookFor];
             result := tempStr;
        end;
    end;
end;

procedure TfrmMain.AddLog(msg: string);
begin
    if bUseLogging = True then
        mmoOutput.Lines.Add(TimeToStr(Now()) + ': '+ msg);
end;

procedure TfrmMain.ProcessCommandline(const cmdLine: string);
begin
    if ExtractFileExt(cmdLine) = LowerCase('.con') then
    begin
        LoadConFile(cmdLine);
        BuildConvoTree();
        ToggleMenusPanels(True);
        currentConFile := cmdLine;  // Assign filename to global variable
        StatusBar.Panels[0].Text := '';
        StatusBar.Panels[1].Text := cmdLine; // filename in StatusBar
        AddRecentFile(cmdLine);  // Add to recent
    end;

    if ExtractFileExt(cmdLine) = LowerCase('.xml') then
    begin
        LoadConXMLFile(cmdLine);
        BuildConvoTree();
        ToggleMenusPanels(True);
        currentConFile := cmdLine;  // Assign filename to global variable
        StatusBar.Panels[0].Text := '';
        StatusBar.Panels[1].Text := cmdLine; // filename in StatusBar
        AddRecentFile(cmdLine);  // Add to recent
    end;
end;

procedure TfrmMain.LoadConXMLFile(aFileName: string);
begin
    if FileExists(aFileName) = false then
    begin
        MessageBox(0, PChar(Format(strFileDoesNotExists, [aFileName])), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit();
    end;

    LoadConXMLHeader(aFileName);
    LoadConXMLConversations(aFileName);
end;

procedure TfrmMain.mainToolBarCustomDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
    if bFlatToolbar = False then
    begin
        var TempRect := Button.BoundsRect;

        Frame3D(Sender.Canvas, TempRect, clBtnHighlight, clBtnShadow, 1);
    end;
end;

procedure TfrmMain.BuildConvoTree();
var
    StartTime, EndTime: TDateTime;
begin
    StartTime := Now();

    TreeBuildTask := TTask.Run(
    procedure
    begin
        for var cList := 0 to ConversationsList.Count -1 do
        begin
            var NodeConName, NodeConOwnerName, NodeDependsOnFlags: TTreeNode;
            var tempConvo := ConversationsList.Items[cList];

            TThread.Synchronize(nil,
            procedure
            begin

            if ItemExistsInTreeView(ConvoTree, tempConvo.conOwnerName) = false then
            begin
                NodeConOwnerName:= frmMain.ConvoTree.Items.Add(nil, tempConvo.conOwnerName);
                NodeConOwnerName.ImageIndex := 0;
                NodeConOwnerName.ExpandedImageIndex := 0;
                NodeConOwnerName.SelectedIndex := 0;
            end
            else
            begin
                NodeConOwnerName := ConvoTree.Items.GetFirstNode;
                while NodeConOwnerName <> nil do
                begin
                    if NodeConOwnerName.Text = tempConvo.conOwnerName then
                        Break;
                    NodeConOwnerName := NodeConOwnerName.GetNextSibling;
                end;
            end;

            // Add owner's conversations
            NodeConName:= frmMain.ConvoTree.Items.AddChildObject(NodeConOwnerName, tempConvo.conName, tempConvo);
            NodeConName.ImageIndex := 1;
            NodeConName.ExpandedImageIndex := 1;
            NodeConName.SelectedIndex := 1;

            // Flags required by this conversation
            for var DOF:= 0 to Length(tempConvo.conDependsOnFlags) -1 do
            begin
                NodeDependsOnFlags:= frmMain.ConvoTree.Items.AddChild(NodeConName,
                tempConvo.conDependsOnFlags[DOF].flagName + ' = '
                + BoolToStr(tempConvo.conDependsOnFlags[DOF].flagValue, true));

                // red icon = false, green icon = true
                if NodeDependsOnFlags.Text.EndsText('true', NodeDependsOnFlags.Text) then
                begin
                    NodeDependsOnFlags.ImageIndex := 2;
                    NodeDependsOnFlags.ExpandedImageIndex := 2;
                    NodeDependsOnFlags.SelectedIndex := 2;
                end else
                begin
                    NodeDependsOnFlags.ImageIndex := 3;
                    NodeDependsOnFlags.ExpandedImageIndex := 3;
                    NodeDependsOnFlags.SelectedIndex := 3;
                end;
            end;
        end);
    end;

        TThread.Synchronize(nil,
        procedure
        begin
            EndTime := Now();
            lblSelectedEvent.Caption := 'Tree built in ' + IntToStr(MilliSecondsBetween(EndTime, StartTime)) + ' ms';
            ConvoTree.AlphaSort(True);
            SetEventIndexes();
        end);

//    EndTime := Now();
//    lblSelectedEvent.Caption := 'Tree built in ' + IntToStr(MilliSecondsBetween(EndTime, StartTime)) + ' ms';

//    ConvoTree.AlphaSort(True);

    end);

//    SetEventIndexes();

{
    for var cList := 0 to ConversationsList.Count -1 do
    begin
        var NodeConName, NodeConOwnerName, NodeDependsOnFlags: TTreeNode;
        var tempConvo := ConversationsList.Items[cList];

        if ItemExistsInTreeView(ConvoTree, tempConvo.conOwnerName) = false then
        begin
           NodeConOwnerName:= frmMain.ConvoTree.Items.Add(nil, tempConvo.conOwnerName);
           NodeConOwnerName.ImageIndex := 0;
           NodeConOwnerName.ExpandedImageIndex := 0;
           NodeConOwnerName.SelectedIndex := 0;
        end
        else
        begin
           NodeConOwnerName := ConvoTree.Items.GetFirstNode;
           while NodeConOwnerName <> nil do
           begin
               if NodeConOwnerName.Text = tempConvo.conOwnerName then
                   Break;
               NodeConOwnerName := NodeConOwnerName.GetNextSibling;
           end;
        end;

        // Add owner's conversations
        NodeConName:= frmMain.ConvoTree.Items.AddChildObject(NodeConOwnerName, tempConvo.conName, tempConvo);
        NodeConName.ImageIndex := 1;
        NodeConName.ExpandedImageIndex := 1;
        NodeConName.SelectedIndex := 1;

        // Flags required by this conversation
        for var DOF:= 0 to Length(tempConvo.conDependsOnFlags) -1 do
        begin
            NodeDependsOnFlags:= frmMain.ConvoTree.Items.AddChild(NodeConName,
            tempConvo.conDependsOnFlags[DOF].flagName + ' = '
            + BoolToStr(tempConvo.conDependsOnFlags[DOF].flagValue, true));

            // red icon = false, green icon = true
            if NodeDependsOnFlags.Text.EndsText('true', NodeDependsOnFlags.Text) then
            begin
                NodeDependsOnFlags.ImageIndex := 2;
                NodeDependsOnFlags.ExpandedImageIndex := 2;
                NodeDependsOnFlags.SelectedIndex := 2;
            end else
            begin
                NodeDependsOnFlags.ImageIndex := 3;
                NodeDependsOnFlags.ExpandedImageIndex := 3;
                NodeDependsOnFlags.SelectedIndex := 3;
            end;
        end;
    end;
}
end;

procedure TfrmMain.FirstTimeLaunch();// First launch?
var iniName, aPath: string;
begin
    aPath := ExtractFilePath(Application.ExeName);
    iniName := TPath.GetFileNameWithoutExtension(Application.ExeName) + '.ini';

    if FileExists(aPath + iniName) = false then
        frmSettings.ShowModal();
end;

procedure TfrmMain.CreateConFile(bCreatingNew: Boolean);
begin
    ClearForNewFile();

    if (bCreatingNew = True) then
    begin
        Caption := strAppTitle + strNewFile;
        frmConvoFileProperties.ShowModal();
    end;
end;

procedure TfrmMain.ClearForNewFile();
begin
    ConEventList.Clear();
    ConvoTree.Items.Clear();
    ConversationsList.Clear();  // Clear conversations list
    conFileParameters.Clear(); // Clear header info
    conFileParameters.fpCreatedByName  := ConversationUserName; // fill UserName in conParameters
    conFileParameters.fpModifiedByName := ConversationUserName;

    with frmConvoFileProperties do
    begin
        PageControl1.ActivePageIndex := 0; // Set first page

        edtConFileVersion.Text := conFileParameters.fpFileVersion.ToString;

        edtConFileCreatedOn.Text := conFileParameters.fpCreatedByDate; // add text to editbox
        edtConFileCreatedBy.Text := conFileParameters.fpCreatedByName;

        edtConFileLastModifiedOn.Text := conFileParameters.fpModifiedByDate; // add text to editbox
        edtConFileLastModifiedBy.Text := conFileParameters.fpModifiedByName;
        // Примечание: даты не заполняем, они подставляются автоматически в конструкторе или в методе Clear()
    end;

    with frmConvoProperties do
    begin
        editConvoName.Clear();
        editConvoDescription.Clear();
        cmbConvoOwner.Clear();
        memoConversationNotes.Clear();

        lvConvoDependsOnFlags.Clear();

        chkPCfrobsNPC.Checked := True;
        chkPCbumpsNPC.Checked := True;
        chkNPCseesPlayer.Checked := False;
        chkNPCentersPCRadius.Checked := False;
        editDistFromPlayer.Value := 0;

        chkDisplayConvoOnlyOnce.Checked := True;
        chkAdd_PlayedFlag.Checked := False;
        chkDataLinkConvo.Checked := False;
        chkNonInteractive.Checked := False;
        chkFPMode.Checked := False;
        chkRandomCameraPlacement.Checked := False;
        chkCanBeInterruptedByAnotherConvo.Checked := False;
        chkAbsolutelyCannotInterrupt.Checked := False;
    end;

    bFileModified := False;
end;

procedure TfrmMain.GenerateAudioFileNames();
begin
    // ToDo: Add special case for InfoLink convos!
    // Example: C:\Games\DeusEx_RTX\GameConversations\Audio\Chapter2\InfoLink\DL_Startup
    // But C:\Games\DeusEx_RTX\GameConversations\Audio\Chapter2\JCDenton\DL_Startup Will NOT work!

    // speech events
    for var con in ConversationsList do
    begin
        var tempDict:= TDictionary<string,integer>.Create();
        var ConNameDirectory: string;

        if con.bInfoLink = True then
            ConNameDirectory := INFOLINK_CONVERSATION_DIRECTORY
        else
            ConNameDirectory := con.conOwnerName;


        for var i:= 0 to High(con.Events) do
        begin
            if con.Events[i] is TConEventSpeech then
            begin
                var speechEvent := TConEventSpeech(con.Events[i]);
                var counter := 0;

                tempDict.TryGetValue(speechEvent.ActorValue, counter);
                Inc(counter);
                tempDict.AddOrSetValue(speechEvent.ActorValue, counter);

                if counter < 10 then // maybe just use Format() function?
                    speechEvent.mp3File := conFileParameters.fpAudioPackage + '\'
                                         + {con.conOwnerName} ConNameDirectory + '\'
                                         + con.conName + '\'
                                         + speechEvent.ActorValue
                                         + '0' + counter.ToString + '.mp3'
                else
                    speechEvent.mp3File := conFileParameters.fpAudioPackage + '\'
                                         + {con.conOwnerName} ConNameDirectory + '\'
                                         + con.conName + '\'
                                         + speechEvent.ActorValue
                                         + counter.ToString + '.mp3';
            end;
        end;

        tempDict.Free();
    end;

    for var con2 in ConversationsList do
    begin
        var ChoiceEventCounter := 0;
        //var ChoiceItemCounter := -1;

        for var k := 0 to High(con2.Events) do
        begin
            if con2.Events[k] is TConEventChoice then
            begin
                var Choice := TConEventChoice(con2.Events[k]);

                Inc(ChoiceEventCounter);

                for var ci := 0 to High(Choice.Choices) do
                begin
                    var choiceItem := Choice.Choices[ci];

                    if ChoiceItem.bDisplayAsSpeech = True then
                    begin
                        //Inc(ChoiceItemCounter);

                        if ci < 10 then
                            ChoiceItem.mp3 := conFileParameters.fpAudioPackage + '\' + con2.conOwnerName + '\' + con2.conName + '\'
                                                + 'Choice0' + ChoiceEventCounter.ToString + Chr(Ord('a') + ci) + '.mp3'
                        else if ci > 9 then
                            ChoiceItem.mp3 := conFileParameters.fpAudioPackage + '\' + con2.conOwnerName + '\' + con2.conName + '\'
                                                + 'Choice' + ChoiceEventCounter.ToString + Chr(Ord('a') + ci) + '.mp3'

                        //ChoiceItem.mp3 := 'Choice0' + ChoiceEventCounter.ToString + Chr(Ord('a') + ci) + '.mp3';
                    end;
                    //else
                      //  ChoiceItem.mp3 := '';

                end;
                    //ChoiceItemCounter := -1; // Reset this counter
            end;
        end;
    end;

    bFileModified := True;


    // choices. Должно быть так:
    // choice1
    //        choiceitem1a
    //        choiceitem1b
    //        choiceitem1c
    //        choiceitem1d

    // choice2
    //        choiceitem2a
    //        choiceitem2b
    //        choiceitem2c
    // и так далее
    // Только если  bDisplayAsSpeech = True
    // Примечание: счетчик ChoiceEventCounter увеличивается в любом случае,
    // даже если ChoiceItem.bDisplayAsSpeech = False для всех дочерних элементов
end;

procedure TfrmMain.SetEventIndexes();
//var
//    NewIndex: Integer;
begin
    for var con in ConversationsList do
//    begin
        ConEditPlus.Helpers.SetConversationEventsIdx(con);
{        NewIndex := 0;

        //for var i:= 0 to High(con.Events) do
        for var Event in con.Events do
        begin
            //con.Events[i].EventIdx := NewIndex; //i;
            Event.EventIdx := NewIndex;
            Event.unknown1 := Event.EventIdx + 1;
            Inc(NewIndex);
        end;}
//    end;

//    bFileModified := True;
end;

procedure TfrmMain.SetEventsListScrollbars(); // Always show vertical scrollbar for EventList
var
    Style: Longint;
begin
   // Получение текущего стиля окна
    Style := GetWindowLong(ConEventList.Handle, GWL_STYLE);

    // Проверка, есть ли уже вертикальная полоса прокрутки
    if (Style and WS_VSCROLL = 0) then
    begin
        // Установка нового стиля окна с вертикальной полосой прокрутки
        SetWindowLong(ConEventList.Handle, GWL_STYLE, Style or WS_VSCROLL);

        // Обновление окна для применения изменений
        SetWindowPos(ConEventList.Handle, 0, 0, 0, 0, 0,
            SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED);
    end;
//    Style := GetWindowLong(ConEventList.Handle, GWL_STYLE);
//    SetWindowLong(ConEventList.Handle, GWL_STYLE, Style or WS_VSCROLL);
end;

procedure TfrmMain.CopyEventToClipboard(var Event: TConEvent);
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinWriter: TBinaryWriter;
begin
    mStream := TMemoryStream.Create();
    BinWriter := TBinaryWriter.Create(mStream, TEncoding.ANSI);

    try
        if Event is TConEventSpeech then
        begin
            var Speech := TConEventSpeech(Event);

            WriteSpeech(Speech, BinWriter);
        end;

        if Event is TConEventChoice then
        begin
            var Choice := TConEventChoice(Event);

            WriteChoice(Choice, BinWriter);
        end;

        if Event is TConEventSetFlag then
        begin
            var SetFlag := TConEventSetFlag(Event);

            WriteSetFlag(SetFlag, BinWriter);
        end;

        if Event is TConEventCheckFlag then
        begin
            var CheckFlag := TConEventCheckFlag(Event);

            WriteCheckFlag(CheckFlag, BinWriter);
        end;

        if Event is TConEventCheckObject then
        begin
            var CheckObj := TConEventCheckObject(Event);

            WriteCheckObject(CheckObj, BinWriter);
        end;

        if Event is TConEventTransferObject then
        begin
            var TransObj := TConEventTransferObject(Event);

            WriteTransObject(TransObj, BinWriter);
        end;

        if Event is TConEventMoveCamera then
        begin
            var MoveCam := TConEventMoveCamera(Event);

            WriteMoveCam(MoveCam, BinWriter);
        end;

        if Event is TConEventAnimation then
        begin
            var Anim := TConEventAnimation(Event);

            WriteAnim(Anim, BinWriter);
        end;

        if Event is TConEventTrade then
        begin
            var Trade := TConEventTrade(Event);

            WriteTrade(Trade, BinWriter);
        end;

        if Event is TConEventJump then
        begin
            var Jump := TConEventJump(Event);

            WriteJump(Jump, BinWriter);
        end;

        if Event is TConEventRandom then
        begin
            var Rand := TConEventRandom(Event);

            WriteRandom(Rand, BinWriter);
        end;

        if Event is TConEventTrigger then
        begin
            var Trigger := TConEventTrigger(Event);

            WriteTrigger(Trigger, BinWriter);
        end;

        if Event is TConEventAddGoal then
        begin
            var AddGoal := TConEventAddGoal(Event);

            WriteAddGoal(AddGoal, BinWriter);
        end;

        if Event is TConEventAddNote then
        begin
            var AddNote := TConEventAddNote(Event);

            WriteAddNote(AddNote, BinWriter);
        end;

        if Event is TConEventAddSkillPoints then
        begin
            var AddSkillPts := TConEventAddSkillPoints(Event);

            WriteAddSkillPts(AddSkillPts, BinWriter);
        end;

        if Event is TConEventAddCredits then
        begin
            var AddCredits := TConEventAddCredits(Event);

            WriteAddCredits(AddCredits, BinWriter);
        end;

        if Event is TConEventCheckPersona then
        begin
            var CheckPersona := TConEventCheckPersona(Event);

            WriteCheckPersona(CheckPersona, BinWriter);
        end;

        if Event is TConEventComment then
        begin
            var Comment := TConEventComment(Event);

            WriteComment(Comment, BinWriter);
        end;

        if Event is TConEventEnd then
        begin
            var EventEnd := TConEventEnd(Event);

            WriteEnd(EventEnd, BinWriter);
        end;


        hBuf := GlobalAlloc(GMEM_MOVEABLE, mStream.Size);
        try
            BufPtr := GlobalLock(hBuf);
            try
                Move(mStream.Memory^, BufPtr^, mStream.Size);
                Clipboard.SetAsHandle(CF_ConEditPlus, hBuf);

            finally
                GlobalUnlock(hBuf);
            end;
        except
            GlobalFree(hBuf);
            raise;
        end;
    finally
        BinWriter.Free();
        mStream.Free();
    end;
end;

procedure TfrmMain.CopyChoiceItemObj_Path_Filename(Sender: TObject);
begin
    if Sender is TMenuItem then
        CopyChoiceMp3Path(CM_PathAndFilename, TMenuItem(Sender).Tag);
end;

procedure TfrmMain.CopyChoiceItems(Source, Dest: TConEventChoice);
var
  I, J: Integer;
  SourceChoice: TChoiceItemObject;
  DestChoice: TChoiceItemObject;
begin
    // Ensure the destination choices array is correctly sized
    SetLength(Dest.Choices, Length(Source.Choices));

    for I := 0 to High(Source.Choices) do
    begin
        SourceChoice := Source.Choices[I];
        if Assigned(SourceChoice) then
        begin
            // Create a new instance of TChoiceItemObject for DestChoice
            DestChoice := TChoiceItemObject.Create;
            try
                // Copy each field from SourceChoice to DestChoice
                DestChoice.Index := SourceChoice.Index;
                DestChoice.textline := SourceChoice.textline;
                DestChoice.bDisplayAsSpeech := SourceChoice.bDisplayAsSpeech;
                DestChoice.bSkillNeeded := SourceChoice.bSkillNeeded;
                DestChoice.Skill := SourceChoice.Skill;
                DestChoice.SkillLevel := SourceChoice.SkillLevel;
                DestChoice.GoToLabel := SourceChoice.GoToLabel;
                DestChoice.mp3 := SourceChoice.mp3;

                // Copy the RequiredFlags array
                SetLength(DestChoice.RequiredFlags, Length(SourceChoice.RequiredFlags));

                for J := 0 to High(SourceChoice.RequiredFlags) do
                begin
                  DestChoice.RequiredFlags[J] := SourceChoice.RequiredFlags[J];
                end;

                // Assign the newly created choice to the destination array
                Dest.Choices[I] := DestChoice;
            except
                // Handle exceptions or cleanup if necessary
                DestChoice.Free();
                raise; // Re-raise the exception if needed
            end;
        end;
    end;
end;

procedure TfrmMain.CopyEventFields(Source, Dest: TConEvent);
begin
    var Ctx: TRttiContext;
    var SourceType: TRttiType;
    var Field: TRttiField;

    Ctx := TRttiContext.Create();
    try
        SourceType := Ctx.GetType(Source.ClassType);

        for Field in SourceType.GetFields do
        begin
            Field.SetValue(Dest, Field.GetValue(Source));
        end;

    finally
        Ctx.Free();
    end;
end;

procedure TfrmMain.CopyChoiceItemObj_Filename(Sender: TObject);
begin
    if Sender is TMenuItem then
        CopyChoiceMp3Path(CM_OnlyMp3, TMenuItem(Sender).Tag);
end;

procedure TfrmMain.CopyChoiceItemObj_Path(Sender: TObject);
begin
    if Sender is TMenuItem then
        CopyChoiceMp3Path(CM_OnlyPath, TMenuItem(Sender).Tag);
end;

procedure TfrmMain.PasteEventFromClipboard();
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinReader: TBinaryReader;
    EventToPaste: string;
    ItemIdx: Integer;
begin
    ItemIdx := ConEventList.ItemIndex;
    if ItemIdx = -1 then ItemIdx := 0;

    hBuf := Clipboard.GetAsHandle(CF_ConEditPlus);
    if hBuf <> 0 then
    begin
        BufPtr := GlobalLock(hBuf);
        if BufPtr <> nil then
        begin
            try
                mStream := TMemoryStream.Create();
                try
                    mStream.WriteBuffer(bufPtr^, GlobalSize(hBuf));
                    mStream.Position := 0;

                    BinReader := TBinaryReader.Create(mStream, TEncoding.ANSI);
                    EventToPaste := GetEventTypeInClipboard(BinReader, mStream);

                    if EventToPaste = ET_Speech_Caption then
                    begin
                        var NewSpeech := TConEventSpeech.Create(); // Create new event

                        DeSerializeSpeech(BinReader, NewSpeech); // fill fields here (ConEditPlus.Clipboard.Helper.pas)

                        if CheckLabelExistInConversation(NewSpeech.EventLabel) = True then NewSpeech.EventLabel := '';

                        if FindTableIdByName(TM_ActorsPawns, NewSpeech.ActorValue) = -1 then
                        begin
                            listPawnsActors.Add(NewSpeech.ActorValue);
                            NewSpeech.ActorIndex := FindTableIdByName(TM_ActorsPawns,NewSpeech.ActorValue); // set id from table
                            AddLog('Added ' + NewSpeech.ActorValue + ' to the table');
                        end;

                        if FindTableIdByName(TM_ActorsPawns, NewSpeech.ActorToValue) = -1 then
                        begin
                            listPawnsActors.Add(NewSpeech.ActorToValue);
                            NewSpeech.ActorToIndex := FindTableIdByName(TM_ActorsPawns,NewSpeech.ActorToValue); // set id from table
                            AddLog('Added ' + NewSpeech.ActorToValue + ' to the table');
                        end;

                        Insert(NewSpeech, CurrentConversation.Events, ItemIdx); // and finally we can add it to array!

                        var ListItemHeight := GetSpeechEventItemHeight([NewSpeech]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Speech_Caption+HeightStr, NewSpeech);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewSpeech);

                        AddLog('Added event from Clipboard:' + NewSpeech.ClassName);
                    end;

                    if EventToPaste = ET_Choice_Caption then
                    begin
                        var NewChoice := TConEventChoice.Create();

                        DeSerializeChoice(BinReader, NewChoice);

                        if CheckLabelExistInConversation(NewChoice.EventLabel) = True then NewChoice.EventLabel := '';

                        for var choiceItem in NewChoice.Choices do // Choice in Clipboard can contain flags and skills
                        begin                                       // (skills? Really?), so add them to corresponding tables
                            for var i := 0 to High(choiceItem.RequiredFlags) do
                            begin
                                if FindTableIdByName(TM_Flags, choiceItem.RequiredFlags[i].flagName) = -1 then
                                begin
                                    var flag := choiceItem.RequiredFlags[i];

                                    listFlags.Add(flag.flagName);
                                    flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName);
                                    AddLog('Added flag ' + flag.flagName + ' to the table');
                                end;
                            end;

                            if choiceItem.bSkillNeeded <> -1 then
                            begin
                                if FindTableIdByName(TM_Skills, choiceItem.Skill) = -1 then
                                begin
                                    listSkills.Add(choiceItem.Skill);
                                    choiceItem.bSkillNeeded := FindTableIdByName(TM_Skills, choiceItem.Skill); // set id from table
                                    AddLog('Added skill ' + choiceItem.Skill + ' to the table');
                                end;
                            end;
                        end;

                        Insert(NewChoice, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetChoiceItemHeight([NewChoice]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Choice_Caption+HeightStr, NewChoice);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewChoice);

                        AddLog('Added event from Clipboard:' + NewChoice.ClassName);
                    end;

                    if EventToPaste = ET_SetFlag_Caption then
                    begin
                        var NewSetFlag := TConEventSetFlag.Create();

                        DeSerializeSetFlag(BinReader, NewSetFlag);

                        if CheckLabelExistInConversation(NewSetFlag.EventLabel) = True then NewSetFlag.EventLabel := '';

                        for var i:= 0 to High(NewSetFlag.SetFlags) do
                        begin
                            if FindTableIdByName(TM_Flags, NewSetFlag.SetFlags[i].flagName) = -1 then
                            begin
                                var flag := NewSetFlag.SetFlags[i];

                                listFlags.Add(flag.flagName);
                                flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName); // set id from table
                                AddLog('Added flag ' + flag.flagName + ' to the table');
                            end;
                        end;

                        Insert(NewSetFlag, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetSetFlagsItemHeight([NewSetFlag]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_SetFlag_Caption+HeightStr, NewSetFlag);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewSetFlag);

                        AddLog('Added event from Clipboard:' + NewSetFlag.ClassName);
                    end;

                    if EventToPaste = ET_CheckFlag_Caption then
                    begin
                        var NewCheckFlag := TConEventCheckFlag.Create();

                        DeSerializeCheckFlag(BinReader, NewCheckFlag);

                        if CheckLabelExistInConversation(NewCheckFlag.EventLabel) = True then NewCheckFlag.EventLabel := '';

                        for var i:= 0 to High(NewCheckFlag.FlagsToCheck) do
                        begin
                            if FindTableIdByName(TM_Flags, NewCheckFlag.FlagsToCheck[i].flagName) = -1 then
                            begin
                                var flag := NewCheckFlag.FlagsToCheck[i];

                                listFlags.Add(Flag.flagName);
                                flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName); // set id from table
                                AddLog('Added flag ' + Flag.flagName + ' to the table');
                            end;
                        end;

                        Insert(NewCheckFlag, CurrentConversation.Events, ItemIdx); // Add to array

                        var ListItemHeight := GetCheckFlagsItemHeight([NewCheckFlag]);
                        var HeightStr := '=' + ListItemHeight.ToString();

                        ConEventList.Items.InsertObject(ItemIdx, ET_CheckFlag_Caption+HeightStr, NewCheckFlag);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewCheckFlag);

                        AddLog('Added event from Clipboard:' + NewCheckFlag.ClassName);
                    end;

                    if EventToPaste = ET_CheckObject_Caption then
                    begin
                        var NewCheckObj := TConEventCheckObject.Create();

                        DeSerializeCheckObject(BinReader, NewCheckObj);

                        if CheckLabelExistInConversation(NewCheckObj.EventLabel) = True then NewCheckObj.EventLabel := '';

                        if FindTableIdByName(TM_Objects, NewCheckObj.ObjectValue) = -1 then
                        begin
                            listObjects.Add(NewCheckObj.ObjectValue);
                            NewCheckObj.ObjectIndex := FindTableIdByName(TM_Objects, NewCheckObj.ObjectValue); // set id from table
                            AddLog('Added Object ' + NewCheckObj.ObjectValue + ' to the table');
                        end;

                        // set new id from table
                        NewCheckObj.ObjectIndex := FindTableIdByName(TM_Objects, NewCheckObj.ObjectValue);

                        Insert(NewCheckObj, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_CheckObject_Caption, NewCheckObj);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewCheckObj);

                        AddLog('Added event from Clipboard:' + NewCheckObj.ClassName);
                    end;

                    if EventToPaste = ET_TransferObject_Caption then
                    begin
                        var NewTransObject := TConEventTransferObject.Create();

                        DeSerializeTransferObject(BinReader, NewTransObject);

                        if CheckLabelExistInConversation(NewTransObject.EventLabel) = True then NewTransObject.EventLabel := '';

                        if FindTableIdByName(TM_Objects, NewTransObject.ObjectValue) = -1 then
                        begin
                            listObjects.Add(NewTransObject.ObjectValue);
                            NewTransObject.ObjectIndex := FindTableIdByName(TM_Objects, NewTransObject.ObjectValue); // set id from table
                            AddLog('Added Object ' + NewTransObject.ObjectValue + ' to the table');
                        end;

                        if FindTableIdByName(TM_ActorsPawns, NewTransObject.ActorFromValue) = -1 then
                        begin
                            listPawnsActors.Add(NewTransObject.ActorFromValue);
                            NewTransObject.ActorFromIndex := FindTableIdByName(TM_ActorsPawns, NewTransObject.ActorFromValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewTransObject.ActorFromValue + ' to the table');
                        end;

                        if FindTableIdByName(TM_ActorsPawns, NewTransObject.ActorToValue) = -1 then
                        begin
                            listPawnsActors.Add(NewTransObject.ActorToValue);
                            NewTransObject.ActorToIndex := FindTableIdByName(TM_ActorsPawns, NewTransObject.ActorToValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewTransObject.ActorToValue + ' to the table');
                        end;

                        Insert(NewTransObject, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_TransferObject_Caption, NewTransObject);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewTransObject);

                        AddLog('Added event from Clipboard:' + NewTransObject.ClassName);
                    end;

                    if EventToPaste = ET_MoveCamera_Caption then
                    begin
                        var NewMoveCam := TConEventMoveCamera.Create();

                        DeSerializeMoveCamera(BinReader, NewMoveCam);

                        if CheckLabelExistInConversation(NewMoveCam.EventLabel) = True then NewMoveCam.EventLabel := '';

                        Insert(NewMoveCam, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_MoveCamera_Caption, NewMoveCam);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewMoveCam);
                    end;

                    if EventToPaste = ET_Animation_Caption then
                    begin
                        var NewAnim := TConEventAnimation.Create();

                        DeSerializeAnimation(BinReader, NewAnim);

                        if FindTableIdByName(TM_ActorsPawns, NewAnim.ActorValue) = -1 then
                        begin
                            listPawnsActors.Add(NewAnim.ActorValue);
                            NewAnim.ActorIndex := FindTableIdByName(TM_ActorsPawns, NewAnim.ActorValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewAnim.ActorValue + ' to the table');
                        end;

                        Insert(NewAnim, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Animation_Caption, NewAnim);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewAnim);
                    end;

                    if EventToPaste = ET_Trade_Caption then
                    begin
                        var NewTrade := TConEventTrade.Create();

                        DeSerializeTrade(BinReader, NewTrade);

                        if CheckLabelExistInConversation(NewTrade.EventLabel) = True then NewTrade.EventLabel := '';

                        if FindTableIdByName(TM_ActorsPawns, NewTrade.TradeActorValue) = -1 then
                        begin
                            listPawnsActors.Add(NewTrade.TradeActorValue);
                            NewTrade.TradeActorIndex := FindTableIdByName(TM_ActorsPawns, NewTrade.TradeActorValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewTrade.TradeActorValue + ' to the table');
                        end;

                        Insert(NewTrade, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Trade_Caption, NewTrade);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewTrade);
                    end;

                    if EventToPaste = ET_Jump_Caption then
                    begin
                        var NewJump := TConEventJump.Create();

                        DeSerializeJump(BinReader, NewJump);

                        if CheckLabelExistInConversation(NewJump.EventLabel) = True then NewJump.EventLabel := '';

                        Insert(NewJump, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Jump_Caption, NewJump);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewJump);
                    end;

                    if EventToPaste = ET_Random_Caption then
                    begin
                        var NewRandom := TConEventRandom.Create();

                        DeSerializeRandom(BinReader, NewRandom);

                        if CheckLabelExistInConversation(NewRandom.EventLabel) = True then NewRandom.EventLabel := '';

                        Insert(NewRandom, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetRandomEventItemHeight([NewRandom]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Random_Caption+HeightStr, NewRandom);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewRandom);
                    end;

                    if EventToPaste = ET_Trigger_Caption then
                    begin
                        var NewTrigger := TConEventTrigger.Create();

                        DeSerializeTrigger(BinReader, NewTrigger);

                        if CheckLabelExistInConversation(NewTrigger.EventLabel) = True then NewTrigger.EventLabel := '';

                        Insert(NewTrigger, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Trigger_Caption, NewTrigger);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewTrigger);
                    end;

                    if EventToPaste = ET_AddGoal_Caption then
                    begin
                        var NewAddGoal := TConEventAddGoal.Create();

                        DeSerializeAddGoal(BinReader, NewAddGoal);

                        if CheckLabelExistInConversation(NewAddGoal.EventLabel) = True then NewAddGoal.EventLabel := '';

                        Insert(NewAddGoal, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddGoalItemHeight([NewAddGoal]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddGoal_Caption+HeightStr, NewAddGoal);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewAddGoal);
                    end;

                    if EventToPaste = ET_AddNote_Caption then
                    begin
                        var NewAddNote := TConEventAddNote.Create();

                        DeSerializeAddNote(BinReader, NewAddNote);

                        if CheckLabelExistInConversation(NewAddNote.EventLabel) = True then NewAddNote.EventLabel := '';

                        Insert(NewAddNote, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddNoteItemHeight([NewAddNote]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddNote_Caption+HeightStr, NewAddNote);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewAddNote);
                    end;

                    if EventToPaste = ET_AddSkillPoints_Caption then
                    begin
                        var NewAddSkillPts := TConEventAddSkillPoints.Create();

                        DeSerializeAddSkillPts(BinReader, NewAddSkillPts);

                        if CheckLabelExistInConversation(NewAddSkillPts.EventLabel) = True then NewAddSkillPts.EventLabel := '';

                        Insert(NewAddSkillPts, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddSkillPtsItemHeight([NewAddSkillPts]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddSkillPoints_Caption+HeightStr, NewAddSkillPts);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewAddSkillPts);
                    end;

                    if EventToPaste = ET_AddCredits_Caption then
                    begin
                        var NewAddCredits := TConEventAddCredits.Create();

                        DeSerializeAddCredits(BinReader, NewAddCredits);

                        if CheckLabelExistInConversation(NewAddCredits.EventLabel) = True then NewAddCredits.EventLabel := '';

                        Insert(NewAddCredits, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddCredits_Caption, NewAddCredits);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewAddCredits);
                    end;

                    if EventToPaste = ET_CheckPersona_Caption then
                    begin
                        var NewCheckPersona := TConEventCheckPersona.Create();

                        DeSerializeCheckPersona(BinReader, NewCheckPersona);

                        if CheckLabelExistInConversation(NewCheckPersona.EventLabel) = True then NewCheckPersona.EventLabel := '';

                        Insert(NewCheckPersona, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_CheckPersona_Caption, NewCheckPersona);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewCheckPersona);
                    end;

                    if EventToPaste = ET_Comment_Caption then
                    begin
                        var NewComment := TConEventComment.Create();

                        DeSerializeComment(BinReader, NewComment);

                        if CheckLabelExistInConversation(NewComment.EventLabel) = True then NewComment.EventLabel := '';

                        Insert(NewComment, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetCommentItemHeight([NewComment]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Comment_Caption+HeightStr, NewComment);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewComment);
                    end;

                    if EventToPaste = ET_End_Caption then
                    begin
                        var NewEnd := TConEventEnd.Create();

                        DeSerializeEnd(BinReader, NewEnd);

                        if CheckLabelExistInConversation(NewEnd.EventLabel) = True then NewEnd.EventLabel := '';

                        Insert(NewEnd, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_End_Caption, NewEnd);
                        ConEventList.ItemIndex := ConEventList.Items.IndexOfObject(NewEnd);
                    end;

                finally
                    mStream.Free();
                    BinReader.Free();
                end;
            finally
                GlobalUnlock(hBuf);
            end;
            UpdateEventListHeights();
            SetEventIndexes();
        end;
    end
    else
    begin
        PasteConvoEvent.Enabled := False; // Just in case...
        Exit();
    end;
end;

procedure TfrmMain.Copyalltext1Click(Sender: TObject);
begin
    Clipboard.AsText := mmoOutput.Text;
end;

procedure TfrmMain.CopyChoiceMp3Path(ChoiceMP3CopyMode: TChoiceMP3CopyMode; idx: Integer);
begin
    var ChoiceObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if ChoiceObj is TConEventChoice then
    begin
        case ChoiceMP3CopyMode of
            CM_PathAndFilename:
            begin
                if TConEventChoice(ChoiceObj).Choices[idx] <> nil then
                    Clipboard.AsText := IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventChoice(ChoiceObj).Choices[idx].mp3;
            end;

            CM_OnlyPath:
            begin
                if TConEventChoice(ChoiceObj).Choices[idx] <> nil then
                begin
                    var TempPath := ExtractFilePath(IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventChoice(ChoiceObj).Choices[idx].mp3);
                    Clipboard.AsText := TempPath;
                end;
            end;

            CM_OnlyMp3:
            begin
                if TConEventChoice(ChoiceObj).Choices[idx] <> nil then
                    Clipboard.AsText := ExtractFileName(TConEventChoice(ChoiceObj).Choices[idx].mp3);
            end;
        end;
    end;
end;

procedure TfrmMain.CreateAIBarksExample(bBarkFutz: Boolean; SpeechCount: Integer = 3);
begin
    // Initial setup
    var ConvoOwnerName: string;
    var OwnerNode: TTreeNode;
    var JCDentonIdx := FindTableIdByName(TM_ActorsPawns, PLAYER_BINDNAME); // Find conversation owner ID in the table

    if (bBarkFutz = True) and (JCDentonIdx = -1) then
    begin
        MessageBox(Handle, PChar(strAddPlayerFirst), PChar(strWarningTitle), MB_OK + MB_ICONWARNING + MB_TOPMOST);
        Exit();
    end;

    OwnerNode := ConvoTree.Selected;

    while OwnerNode.Level > 0 do
        OwnerNode := OwnerNode.Parent;

    ConvoOwnerName := OwnerNode.Text;
    var ConvoOwnerIdx := FindTableIdByName(TM_ActorsPawns, ConvoOwnerName); // Find conversation owner ID in the table

    var AIBarksConvo := TConversation.Create(); // Create TConversation object
    with AIBarksConvo do
    begin
        ConversationsList.Add(AIBarksConvo); // Add new to the list
        id := ConversationsList.IndexOfItem(AIBarksConvo, TList.TDirection.FromBeginning); // set id from list

        conDescription := strConvoDescGenerated;

        conCreatedByName := ConversationUserName; // Начальное значение
        conModifiedByName := ConversationUserName; // Изменится когда диалог будет обновлён

        conNotes := strConvoNotesGenerated;

        if bBarkFutz = True then
        begin
            var temp := Copy(GetEnumName(TypeInfo(TBarkModes), Ord(BM_BarkFutz)), 3, MaxInt); // Just don't use hardcoded string, okay?
            conName := ConEditPlus.Consts.GENERATED_CONVO + temp + ConEditPlus.Helpers.GenerateRandomSuffix(6) // Generate random
        end
            else
        conName := ConEditPlus.Consts.GENERATED_CONVO + ConEditPlus.Helpers.GenerateRandomSuffix(6); // Generate random

        conOwnerIndex:= ConvoOwnerIdx;
        conOwnerName:= ConvoOwnerName;

        bOnlyOnce       := False; // Fill fields...
        bFirstPerson    := True;
        bNonInteract    := True;
        bRandomCamera   := False;
        bCanInterrupt   := False;
        bCannotInterrupt:= False;
        bPCBumps        := False;
        bPCFrobs        := False;
        bNPCSees        := False;
        bNPCEnters      := False;
        distance        := 0;

        // Now events...
        {numEventList:= 8;
        unknown0 := 8;
        SetLength(Events, 8);}
                // Гибкая генерация событий
        numEventList := 1 + SpeechCount * 2;  // 1 Random + (Speech + End) * SpeechCount
        unknown0 := numEventList;
        SetLength(Events, numEventList);

        Events[0] := TConEventRandom.Create();
        with Events[0] as TConEventRandom do
        begin
            bCycle := True;
            bCycleOnce := False;
            bCycleRandom := True;
            numLabels := SpeechCount;
            SetLength(GoToLabels, numLabels);
            for var i := 0 to SpeechCount - 1 do
                GoToLabels[i] := Format('Label%d', [i + 1]);
        end;

        for var i := 0 to SpeechCount - 1 do
        begin
            // Speech Event
            Events[1 + i * 2] := TConEventSpeech.Create();
            with Events[1 + i * 2] as TConEventSpeech do
            begin
                EventLabel := Format('Label%d', [i + 1]);
                //TextLine   := Format('Speech Text Example %d', [i + 1]);
                var JokeIdx := Random(Length(ConEditPlus.Consts.AIBarkJokes));

                if bBarkFutz = True then
                    TextLine := ConEditPlus.Consts.AIBarkFutz[JokeIdx]
                else
                    TextLine := ConEditPlus.Consts.AIBarkJokes[JokeIdx];

                ActorIndex := AIBarksConvo.conOwnerIndex;
                ActorValue := AIBarksConvo.conOwnerName;

                if bBarkFutz = True then
                begin
                    ActorToIndex := JCDentonIdx;
                    ActorToValue := PLAYER_BINDNAME;
                end
                else
                begin
                    ActorToIndex := AIBarksConvo.conOwnerIndex;
                    ActorToValue := AIBarksConvo.conOwnerName;
                end;
            end;

            // End Event
            Events[2 + i * 2] := TConEventEnd.Create();
        end;
    end;



        {
        Events[0] := TConEventRandom.Create(); // Create TConEventRandom
        with Events[0] as TConEventRandom do
        begin
            bCycle := True;
            bCycleOnce := False;
            bCycleRandom := True;
            numLabels := 3;
            SetLength(GoToLabels, numLabels); // array length
            GoToLabels[0] := strEventSpeechLabel1;
            GoToLabels[1] := strEventSpeechLabel2;
            GoToLabels[2] := strEventSpeechLabel3;
        end;

        Events[1] := TConEventEnd.Create(); // create End event

        Events[2] := TConEventSpeech.Create(); // Speech 1
        with Events[2] as TConEventSpeech do
        begin
            EventLabel := strEventSpeechLabel1;
            TextLine := strEventSpeech1;

            ActorIndex := AIBarksConvo.conOwnerIndex; // Speaker
            ActorValue := AIBarksConvo.conOwnerName;

            if bBarkFutz = True then
            begin
                ActorToIndex := JCDentonIdx;  // Speaking To PlayerPawn
                ActorToValue := PLAYER_BINDNAME;
            end
            else
            begin
                ActorToIndex := AIBarksConvo.conOwnerIndex; // Speaking To self
                ActorToValue := AIBarksConvo.conOwnerName;
            end;
        end;

        Events[3] := TConEventEnd.Create(); // create End event

        Events[4] := TConEventSpeech.Create(); // Speech 2
        with Events[4] as TConEventSpeech do
        begin
            EventLabel := strEventSpeechLabel2;
            TextLine := strEventSpeech2;

            ActorIndex := AIBarksConvo.conOwnerIndex; // Speaker
            ActorValue := AIBarksConvo.conOwnerName;

            if bBarkFutz = True then
            begin
                ActorToIndex := JCDentonIdx;  // Speaking To PlayerPawn
                ActorToValue := PLAYER_BINDNAME;
            end
            else
            begin
                ActorToIndex := AIBarksConvo.conOwnerIndex; // Speaking To self
                ActorToValue := AIBarksConvo.conOwnerName;
            end;
        end;

        Events[5] := TConEventEnd.Create(); // create End event

        Events[6] := TConEventSpeech.Create(); // Speech 3
        with Events[6] as TConEventSpeech do
        begin
            EventIdx := 6;
            unknown1 := EventIdx + 1;
            EventLabel := strEventSpeechLabel3;
            TextLine := strEventSpeech3;

            ActorIndex := AIBarksConvo.conOwnerIndex; // Speaker
            ActorValue := AIBarksConvo.conOwnerName;

            if bBarkFutz = True then
            begin
                ActorToIndex := JCDentonIdx;  // Speaking To PlayerPawn
                ActorToValue := PLAYER_BINDNAME;
            end
            else
            begin
                ActorToIndex := AIBarksConvo.conOwnerIndex; // Speaking To self
                ActorToValue := AIBarksConvo.conOwnerName;
            end;
        end;

        Events[7] := TConEventEnd.Create(); // create End event
        }
//    end;


    ConEditPlus.Helpers.SetConversationEventsIdx(AIBarksConvo);

    // Now add it to ConversationTree
    var NewConvoNode := ConvoTree.Items.AddChildObject(OwnerNode, AIBarksConvo.conName, AIBarksConvo);
    ConvoTree.Select(NewConvoNode); // Highlight

    NewConvoNode.ImageIndex := 1; // set icons
    NewConvoNode.ExpandedImageIndex := 1;
    NewConvoNode.SelectedIndex := 1;

    bFileModified := True;
end;

procedure TfrmMain.ExportConversationAsText(const filename: string);
begin
    var TxtFile := TStringList.Create();

    try
        for var con in ConversationsList do
        begin
            TxtFile.Add(TEX_CONVERSATION_SEPARATOR); // Добавить разделитель диалогов
            TxtFile.Add(Format(TEX_OWNER, [con.conOwnerName]));
            TxtFile.Add(Format(TEX_NAME, [con.conName]) + sLineBreak);

            for var e := 0 to High(con.Events) do
            begin
                if con.Events[e] is TConEventSpeech then
                begin
                    TxtFile.Add(Format(TEX_SPEECH_TEXT, [con.conOwnerName ,TConEventSpeech(con.Events[e]).TextLine]) + sLineBreak);
                end;

                if con.Events[e] is TConEventChoice then
                begin
                    var ChoiceEvent := TConEventChoice(con.Events[e]);

                    TxtFile.Add(Format(TEX_NUM_CHOICES, [ChoiceEvent.NumChoices]) + sLineBreak);

                    for var choiceItem in ChoiceEvent.Choices do
                    begin
                        TxtFile.Add(Format(TEX_CHOICE_TEXT, [choiceItem.textline]) + sLineBreak);
                    end;
                end;

                if (con.Events[e] is TConEventAddGoal) and (TConEventAddGoal(con.Events[e]).bComplete = False) then // Не экспортировать завершённые цели
                begin
                    TxtFile.Add(Format(TEX_GOAL_TEXT, [TConEventAddGoal(con.Events[e]).GoalText]) + sLineBreak);
                end;

                if con.Events[e] is TConEventAddNote then
                begin
                    TxtFile.Add(Format(TEX_NOTE_TEXT, [TConEventAddNote(con.Events[e]).TextLine]) + sLineBreak);
                end;

                if (con.Events[e] is TConEventAddSkillPoints) and (TConEventAddSkillPoints(con.Events[e]).TextLine.IsEmpty = False)  then // Экспорт только если строка не пустая
                begin
                    TxtFile.Add(Format(TEX_ADDSKILLPTS_TEXT, [TConEventAddSkillPoints(con.Events[e]).TextLine]) + sLineBreak);
                end;

                if con.Events[e] is TConEventComment then
                begin
                    TxtFile.Add(Format(TEX_COMMENT_TEXT, [TConEventComment(con.Events[e]).TextLine]) + sLineBreak);
                end;
            end;
        end;

    finally
        TxtFile.SaveToFile(filename);
        TxtFile.Free();

        MessageBox(Handle, PChar('File has been exported as ' + filename), 'Done!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

    end;
end;


procedure TfrmMain.CopyChoicetext1Click(Sender: TObject);
begin
    if Sender is TMenuItem then
    begin
        var ChoiceTextMenu := TMenuItem(Sender).Parent;

        if ChoiceTextMenu <> nil then
            Clipboard.AsText := ChoiceTextMenu.Caption; // copy parent menuitem caption
    end;
end;

procedure TfrmMain.CopyConversationToClipboard(const Convo: TConversation);
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinWriter: TBinaryWriter;
begin
    mStream := TMemoryStream.Create();
    BinWriter := TBinaryWriter.Create(mStream, TEncoding.ANSI);

    try
        SerializeConversation(CurrentConversation, BinWriter);

        hBuf := GlobalAlloc(GMEM_MOVEABLE, mStream.Size);
        try
            BufPtr := GlobalLock(hBuf);
            try
                Move(mStream.Memory^, BufPtr^, mStream.Size);
                Clipboard.SetAsHandle(CF_ConEditPlus, hBuf);

            finally
                GlobalUnlock(hBuf);
            end;
        except
            GlobalFree(hBuf);
            raise;
        end;
    finally
        BinWriter.Free();
        mStream.Free();
    end;
end;

procedure TfrmMain.PasteConversationFromClipboard();
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinReader: TBinaryReader;
    ConversationIdString: string;
begin
    hBuf := Clipboard.GetAsHandle(CF_ConEditPlus);
    if hBuf <> 0 then
    begin
        BufPtr := GlobalLock(hBuf);
        if BufPtr <> nil then
        begin
            try
                mStream := TMemoryStream.Create();
                try
                    mStream.WriteBuffer(bufPtr^, GlobalSize(hBuf));
                    mStream.Position := 0;

                    BinReader := TBinaryReader.Create(mStream, TEncoding.ANSI);
                    ConversationIdString := ReadContentHeader(BinReader, mStream);

                    if ConversationIdString <> CLIPBOARD_CONVERSATION_ID then
                    begin
                        mStream.Free();
                        BinReader.Free();
                        Exit();
                    end;

                    var NewConversation := TConversation.Create();
                    DeSerializeConversation(BinReader, NewConversation);

                    // First of all, try to find owner of conversation in the table. Add if not found.
                    if FindTableIdByName(TM_ActorsPawns, NewConversation.conOwnerName) = -1 then
                    begin
                        listPawnsActors.Add(NewConversation.conOwnerName); // try to find such actor in table, add if failed
                        NewConversation.conOwnerIndex := FindTableIdByName(TM_ActorsPawns, NewConversation.conOwnerName); // set id
                    end;

                    if FindConversationObjByString(NewConversation.conName) <> nil then
                        NewConversation.conName := NewConversation.conName + GenerateRandomSuffix(); // don't allow duplicates

                    // Same with flags used by this conversations.
                    for var fl := 0 to High(NewConversation.conDependsOnFlags) do
                    begin
                        var TempFlag := NewConversation.conDependsOnFlags[fl];

                        if FindTableIdByName(TM_Flags, TempFlag.flagName) = -1 then
                        begin
                            listFlags.Add(TempFlag.flagName);
                            TempFlag.flagIndex := FindTableIdByName(TM_Flags, TempFlag.flagName);
                        end;
                    end;

                    for var e := 0 to High(NewConversation.Events) do
                    begin
                        if NewConversation.Events[e] is TConEventSpeech then
                        begin
                            var TempSpeech := TConEventSpeech(NewConversation.Events[e]);

                            if FindTableIdByName(TM_ActorsPawns, TempSpeech.ActorValue) = -1 then
                            begin
                                listPawnsActors.Add(TempSpeech.ActorValue);
                                TempSpeech.ActorIndex := FindTableIdByName(TM_ActorsPawns,TempSpeech.ActorValue); // set id from table
                                AddLog('Added ' + TempSpeech.ActorValue + ' to the table');
                            end;

                            if FindTableIdByName(TM_ActorsPawns, TempSpeech.ActorToValue) = -1 then
                            begin
                                listPawnsActors.Add(TempSpeech.ActorToValue);
                                TempSpeech.ActorToIndex := FindTableIdByName(TM_ActorsPawns,TempSpeech.ActorToValue); // set id from table
                                AddLog('Added ' + TempSpeech.ActorToValue + ' to the table');
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventChoice then
                        begin
                            var TempChoice := TConEventChoice(NewConversation.Events[e]);

                            for var choiceItem in TempChoice.Choices do // Choice in Clipboard can contain flags and skills
                            begin                                       // (skills? Really?), so add them to corresponding tables
                                for var i := 0 to High(choiceItem.RequiredFlags) do
                                begin
                                    if FindTableIdByName(TM_Flags, choiceItem.RequiredFlags[i].flagName) = -1 then
                                    begin
                                        var flag := choiceItem.RequiredFlags[i];

                                        listFlags.Add(flag.flagName);
                                        flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName);
                                        AddLog('Added flag ' + flag.flagName + ' to the table');
                                    end;
                                end;

                                if choiceItem.bSkillNeeded <> -1 then
                                begin
                                    if FindTableIdByName(TM_Skills, choiceItem.Skill) = -1 then
                                    begin
                                        listSkills.Add(choiceItem.Skill);
                                        choiceItem.bSkillNeeded := FindTableIdByName(TM_Skills, choiceItem.Skill); // set id from table
                                        AddLog('Added skill ' + choiceItem.Skill + ' to the table');
                                    end;
                                end;
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventSetFlag then
                        begin
                            var TempSetFlag := TConEventSetFlag(NewConversation.Events[e]);

                            for var i:= 0 to High(TempSetFlag.SetFlags) do
                            begin
                                if FindTableIdByName(TM_Flags, TempSetFlag.SetFlags[i].flagName) = -1 then
                                begin
                                    var flag := TempSetFlag.SetFlags[i];

                                    listFlags.Add(flag.flagName);
                                    flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName); // set id from table
                                    AddLog('Added flag ' + flag.flagName + ' to the table');
                                end;
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventCheckFlag then
                        begin
                            var TempCheckFlag := TConEventCheckFlag(NewConversation.Events[e]);

                            for var i:= 0 to High(TempCheckFlag.FlagsToCheck) do
                            begin
                                if FindTableIdByName(TM_Flags, TempCheckFlag.FlagsToCheck[i].flagName) = -1 then
                                begin
                                    var flag := TempCheckFlag.FlagsToCheck[i];

                                    listFlags.Add(Flag.flagName);
                                    flag.flagIndex := FindTableIdByName(TM_Flags, flag.flagName); // set id from table
                                    AddLog('Added flag ' + Flag.flagName + ' to the table');
                                end;
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventCheckObject then
                        begin
                            var TempCheckObj := TConEventCheckObject(NewConversation.Events[e]);

                            if FindTableIdByName(TM_Objects, TempCheckObj.ObjectValue) = -1 then
                            begin
                                listObjects.Add(TempCheckObj.ObjectValue);
                                TempCheckObj.ObjectIndex := FindTableIdByName(TM_Objects, TempCheckObj.ObjectValue); // set id from table
                                AddLog('Added Object ' + TempCheckObj.ObjectValue + ' to the table');
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventTransferObject then
                        begin
                            var TempTransObj := TConEventTransferObject(NewConversation.Events[e]);

                            if FindTableIdByName(TM_Objects, TempTransObj.ObjectValue) = -1 then
                            begin
                                listObjects.Add(TempTransObj.ObjectValue);
                                TempTransObj.ObjectIndex := FindTableIdByName(TM_Objects, TempTransObj.ObjectValue); // set id from table
                                AddLog('Added Object ' + TempTransObj.ObjectValue + ' to the table');
                            end;

                            if FindTableIdByName(TM_ActorsPawns, TempTransObj.ActorFromValue) = -1 then
                            begin
                                listPawnsActors.Add(TempTransObj.ActorFromValue);
                                TempTransObj.ActorFromIndex := FindTableIdByName(TM_ActorsPawns, TempTransObj.ActorFromValue); // set id from table
                                AddLog('Added Actor/Pawn ' + TempTransObj.ActorFromValue + ' to the table');
                            end;

                            if FindTableIdByName(TM_ActorsPawns, TempTransObj.ActorToValue) = -1 then
                            begin
                                listPawnsActors.Add(TempTransObj.ActorToValue);
                                TempTransObj.ActorToIndex := FindTableIdByName(TM_ActorsPawns, TempTransObj.ActorToValue); // set id from table
                                AddLog('Added Actor/Pawn ' + TempTransObj.ActorToValue + ' to the table');
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventAnimation then
                        begin
                            var TempAnim := TConEventAnimation(NewConversation.Events[e]);

                            if FindTableIdByName(TM_ActorsPawns, TempAnim.ActorValue) = -1 then
                            begin
                                listPawnsActors.Add(TempAnim.ActorValue);
                                TempAnim.ActorIndex := FindTableIdByName(TM_ActorsPawns, TempAnim.ActorValue); // set id from table
                                AddLog('Added Actor/Pawn ' + TempAnim.ActorValue + ' to the table');
                            end;
                        end;

                        if NewConversation.Events[e] is TConEventTrade then
                        begin
                            var TempTrade := TConEventTrade(NewConversation.Events[e]);

                            if FindTableIdByName(TM_ActorsPawns, TempTrade.TradeActorValue) = -1 then
                            begin
                                listPawnsActors.Add(TempTrade.TradeActorValue);
                                TempTrade.TradeActorIndex := FindTableIdByName(TM_ActorsPawns, TempTrade.TradeActorValue); // set id from table
                                AddLog('Added Actor/Pawn ' + TempTrade.TradeActorValue + ' to the table');
                            end;
                        end;
                    end;


                    ConversationsList.Add(NewConversation); // Add to object list

                    // Now add to tree
                    var OwnerNode := FindConvoOwnerInTree(NewConversation.conOwnerName);

                    if OwnerNode = nil then
                        OwnerNode := ConvoTree.Items.Add(nil, NewConversation.conOwnerName);

                    OwnerNode.ImageIndex := 0;
                    OwnerNode.ExpandedImageIndex := 0;
                    OwnerNode.SelectedIndex := 0;

                    var ConvoNode := ConvoTree.Items.AddChildObject(OwnerNode, NewConversation.conName, NewConversation);

                    ConvoNode.ImageIndex := 1;
                    ConvoNode.ExpandedImageIndex := 1;
                    ConvoNode.SelectedIndex := 1;

                    // flags
                    var NodeDependsOnFlags: TTreeNode;

                    for var tfl := 0 to High(NewConversation.conDependsOnFlags) do
                    begin
                        NodeDependsOnFlags:= ConvoTree.Items.AddChild(ConvoNode,
                        NewConversation.conDependsOnFlags[tfl].flagName + ' = '
                        + BoolToStr(NewConversation.conDependsOnFlags[tfl].flagValue, true));

                        // red icon = false, green icon = true
                        if NodeDependsOnFlags.Text.EndsText('true', NodeDependsOnFlags.Text) then
                        begin
                            NodeDependsOnFlags.ImageIndex := 2;
                            NodeDependsOnFlags.ExpandedImageIndex := 2;
                            NodeDependsOnFlags.SelectedIndex := 2;
                        end else
                        begin
                            NodeDependsOnFlags.ImageIndex := 3;
                            NodeDependsOnFlags.ExpandedImageIndex := 3;
                            NodeDependsOnFlags.SelectedIndex := 3;
                        end;
                    end;

                finally
                    mStream.Free();
                    BinReader.Free();
                end;
            finally
                GlobalUnlock(hBuf);
            end;
            UpdateEventListHeights();
            SetEventIndexes();
            bFileModified := True;
        end;
    end
    else
    begin
        PasteConvoEvent.Enabled := False; // Just in case...
        Exit();
    end;
end;

procedure TfrmMain.ClearForNewFile1Click(Sender: TObject);
begin
    ClearForNewFile();
end;

procedure TfrmMain.OpenRecentFile(aFile: string);
begin
    ClearForNewFile();
    ToggleMenusPanels(True);

    if LowerCase(ExtractFileExt(aFile)) = '.xml' then
    begin
        LoadConXMLFile(aFile);
        BuildConvoTree();
    end else
    if LowerCase(ExtractFileExt(aFile)) = '.con' then
    begin
        LoadConFile(aFile);
        BuildConvoTree();
    end else
    begin
        MessageDlg(strUnknownFile,  mtWarning, [mbOK], 0);
        Exit();
    end;

    currentConFile := aFile;
    StatusBar.Panels[0].Text := '';
    StatusBar.Panels[1].Text := currentConFile;

    bFileModified := False;
end;

procedure TfrmMain.AddRecentFile(aFile: string);
var i: Integer;
begin
    var bListIsFull := True;

    for i := 0 to Length(RecentFiles) - 1 do
    begin
        if RecentFiles[i] = aFile then
          Exit;

        if RecentFiles[i] = '' then
        begin
            RecentFiles[i] := aFile;
            mniRecent.Items[i].Caption := aFile;
            mniRecent.Items[i].Visible := True;
            bListIsFull := False;
            Break;
        end;
    end;

    if bListIsFull then
    begin
        // Shift all items down by 1
        for i := Length(RecentFiles) - 1 downto 1 do
        begin
            RecentFiles[i] := RecentFiles[i - 1];
            mniRecent.Items[i].Caption := mniRecent.Items[i - 1].Caption;
            mniRecent.Items[i].Visible := mniRecent.Items[i - 1].Visible;
        end;

        RecentFiles[0] := aFile;
        mniRecent.Items[0].Caption := aFile;
        mniRecent.Items[0].Visible := True;
    end;
{    for i:=0 to Length(RecentFiles) -1 do
    begin
        if RecentFiles[i] = aFile then Exit();
        if RecentFiles[i] = '' then
        begin
           RecentFiles[i] := aFile;
           mniRecent.Items[i].Caption := aFile;
           mniRecent.Items[i].Visible := True;
           Break
        end else
        Continue;
    end;}
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
begin
    mmoOutput.Lines.Clear();
end;

procedure TfrmMain.ClearRecentFiles();
var i: Integer;
begin
    for i := 0 to CEP_MAX_RECENT_FILES do
    begin
        RecentFiles[i] := '';
        mniRecent.Items[i].Caption := RecentFiles[i];
    end;
end;

procedure TfrmMain.Close1Click(Sender: TObject);
begin
    ClearForNewFile();
end;

procedure TfrmMain.mnuSilverThemeClick(Sender: TObject);
begin
    ApplyStyle('Silver');
end;

procedure TfrmMain.LoadSettings();
begin
    MainFormIni := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
    try
    with MainFormIni do
    begin
        // Main Form
        pnlConvoTree.Width  := ReadInteger('frmMain', 'SplitterPosition',pnlConvoTree.Width);
        Height  := ReadInteger('frmMain', 'Height',Height);
        Width   := ReadInteger('frmMain', 'Width',Width);

        if ReadBool('frmMain', 'bMaximized', false) then WindowState := wsMaximized else WindowState := wsNormal;

        bShowAudioFiles := ReadBool('frmMain', 'bShowAudioFiles', true);
        mnuShowAudioFiles1.Checked := bShowAudioFiles;

        bShowStatusBar := ReadBool('frmMain', 'bShowStatusBar', true);
        StatusBar.Visible := bShowStatusBar;
        mnuStatusbar.Checked := bShowStatusBar;

        bShowToolbar := ReadBool('frmMain', 'bShowToolbar', true);
        MainToolBar.Visible := bShowToolbar;
        mnuToggleMainToolBar.Checked := bShowToolbar;

        bDrawEventIdx := ReadBool('frmMain', 'bDrawEventIdx', true);
        chkEventIdx.Checked := bDrawEventIdx;


        // Settings form
        ConversationUserName := ReadString('frmMain', 'UserName', strAppTitle);
        ConFilePath := ReadString('frmMain', 'ConFilePath', '');
        ConFileBakPath := ReadString('frmMain', 'ConFileBakPath', '');
        ConFileAudioPath := ReadString('frmMain', 'ConFileAudioPath', '');

        // Skin/Theme
        CurrentTheme := ReadString('frmMain', 'CurrentTheme', TStyleManager.cSystemStyleName);
        ApplyStyle(CurrentTheme);

        bHighlightRelatedEvents := ReadBool('frmMain', 'bHighlightRelatedEvents',true);
        bAskForConvoDelete := ReadBool('frmMain', 'bAskForConvoDelete', true);
        bAskForEventDelete := ReadBool('frmMain', 'bAskForEventDelete', true);
        bHglEventWithNoAudio := ReadBool('frmMain', 'bHglEventWithNoAudio', true);
        bHglEventsGradient := ReadBool('frmMain', 'bHglEventsGradient', true);
        bFlatToolbar := ReadBool('frmMain', 'bFlatToolbar', false);
          mainToolBar.Flat := bFlatToolbar;
          if bFlatToolbar = true then HeaderControl1.Style := hsFlat else HeaderControl1.Style := hsButtons;

        bAutoSaveEnabled := ReadBool('frmMain', 'bAutoSaveEnabled', false);
        AutoSaveMinutes := ReadInteger('frmMain', 'AutoSaveMinutes', 5);
        AutoSaveTimer.Interval := AutoSaveMinutes * 60000;

        clPlayerBindNameColor := ReadInteger('frmMain', 'clPlayerBindNameColor', clNavy);
        clPlayerSpeechBGColor := ReadInteger('frmMain', 'clPlayerSpeechBGColor', clMoneyGreen);
        clrHighlightEvent := ReadInteger('frmMain', 'clrHighlightEvent', 16767927);
        clrHighlightEventFrom := ReadInteger('frmMain', 'clrHighlightEventFrom', 16767927);
        clrHighlightEventTo := ReadInteger('frmMain', 'clrHighlightEventTo', 16777215);
        clrGrid := ReadInteger('frmMain', 'clrGrid',  clGray);

        bUsePlayerBindNameColor := ReadBool('frmMain','bUsePlayerBindNameColor', False);
        bUsePlayerSpeechBGColor := ReadBool('frmMain','bUsePlayerSpeechBGColor',False);
        bUseCustomHighlightEventColor := ReadBool('frmMain','bUseCustomHighlightEventColor',False);
        //bUseCustomGradientHighlightEventColor := ReadBool('frmMain','bUseCustomGradientHighlightEventColor',False);
        bUseCustomGridColor := ReadBool('frmMain','bUseCustomGridColor', False);

        bUseWhiteSelectedText := ReadBool('frmMain', 'bUseWhiteSelectedText', false);

        // ConEventList theme
        var TempEventListColors := ReadString('frmMain', 'EventListColors', ELC_DEFAULT);

        if TempEventListColors = ELC_DEFAULT then
            EventListColors := ConEditPlus.Colors.DefaultTEventsColors
        else if TempEventListColors = ELC_SOFTER then
            EventListColors := ConEditPlus.Colors.SofterTEventsColors
        else if TempEventListColors = ELC_SOFTER_DARKER then
            EventListColors := ConEditPlus.Colors.SofterDarkerTEventsColors
        else if TempEventListColors = ELC_SHADES_OF_GRAY then
            EventListColors := ConEditPlus.Colors.ShadesOfGrayTEventsColors;
        // end of ConEventList theme


        bUse3DSelectionFrame := ReadBool('frmMain', 'bUse3DSelectionFrame', true);
        bUseLogging := ReadBool('frmMain', 'bUseLogging', false);
        bVerifyEventLabel := ReadBool('frmMain', 'bVerifyEventLabel', True); // проверять правильность метки события илити нет?

        ReorderModKey := TReorderEventsModKey(ReadInteger('frmMain', 'ReorderModKey', 0));

        btnReorder.Hint := GetReorderButtonHint(); // Update button tooltip

        // up to 8 recent files
        for var i := 0 to CEP_MAX_RECENT_FILES do
        begin
            RecentFiles[i] := ReadString('RecentFiles', 'RecentFile'+i.ToString , '');
            mniRecent.Items[i].Caption := RecentFiles[i];
        end;

        OpenFileFilterIndex := ReadInteger('OpenFileDialog', 'OpenFileFilterIndex', 1);
        SaveFileFilterIndex := ReadInteger('SaveFileDialog', 'SaveFileFilterIndex', 2);


        bEnableDblClickTreeFlag := ReadBool('frmMain', 'bEnableDblClickTreeFlag', True);

        // Events List header
        HeaderControl1.Sections[0].Width := ReadInteger('frmMain', 'HeaderControl1.Sections[0].Width', CLH_WIDTH_COL1);
        HeaderControl1.Sections[1].Width := ReadInteger('frmMain', 'HeaderControl1.Sections[1].Width', CLH_WIDTH_COL2);
        HeaderControl1.Sections[2].Width := ReadInteger('frmMain', 'HeaderControl1.Sections[2].Width', CLH_WIDTH_COL3);
    end;

    finally
       MainFormIni.Free();
    end;
end;

procedure TfrmMain.SaveSettings();
begin
    MainFormIni := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
    try
        with MainFormIni do
        begin
            WriteInteger('frmMain', 'SplitterPosition', pnlConvoTree.Width);
            WriteInteger('frmMain', 'Height', Height);
            WriteInteger('frmMain', 'Width', Width);
            WriteBool('frmMain', 'bMaximized', WindowState = wsMaximized);
            WriteBool('frmMain', 'bShowAudioFiles', bShowAudioFiles);
            WriteBool('frmMain', 'bShowStatusBar', bShowStatusBar);
            WriteBool('frmMain', 'bShowToolbar', bShowToolbar);
            WriteBool('frmMain', 'bDrawEventIdx', bDrawEventIdx);

            // strings...
            WriteString('frmMain', 'UserName', ConversationUserName);
            WriteString('frmMain', 'ConFilePath', ConFilePath);
            WriteString('frmMain', 'ConFileBakPath', ConFileBakPath);
            WriteString('frmMain', 'ConFileAudioPath', ConFileAudioPath);
            WriteString('frmMain', 'CurrentTheme', CurrentTheme);


            // ConEventList theme
            if EventListColors = ConEditPlus.Colors.DefaultTEventsColors then
                WriteString('frmMain', 'EventListColors', ELC_DEFAULT)
            else if EventListColors = ConEditPlus.Colors.SofterTEventsColors then
                WriteString('frmMain', 'EventListColors', ELC_SOFTER)
            else if EventListColors = ConEditPlus.Colors.SofterDarkerTEventsColors then
                WriteString('frmMain', 'EventListColors', ELC_SOFTER_DARKER)
            else if EventListColors = ConEditPlus.Colors.ShadesOfGrayTEventsColors then
                WriteString('frmMain', 'EventListColors', ELC_SHADES_OF_GRAY);
            // end of ConEventList theme



            WriteBool('frmMain', 'bHighlightRelatedEvents', bHighlightRelatedEvents);
            WriteBool('frmMain', 'bAskForConvoDelete', bAskForConvoDelete);
            WriteBool('frmMain', 'bAskForEventDelete', bAskForEventDelete);
            WriteBool('frmMain', 'bHglEventWithNoAudio', bHglEventWithNoAudio);
            WriteBool('frmMain', 'bHglEventsGradient', bHglEventsGradient);
            WriteBool('frmMain', 'bFlatToolbar', bFlatToolbar);
            WriteBool('frmMain', 'bAutoSaveEnabled', bAutoSaveEnabled);
            WriteBool('frmMain', 'bUsePlayerBindNameColor', bUsePlayerBindNameColor);
            WriteBool('frmMain', 'bUsePlayerSpeechBGColor', bUsePlayerSpeechBGColor);

            WriteInteger('frmMain', 'AutoSaveMinutes', AutoSaveMinutes);
            // Colors...
            WriteInteger('frmMain', 'clrHighlightEvent', clrHighlightEvent);
            WriteInteger('frmMain', 'clrHighlightEventFrom', clrHighlightEventFrom);
            WriteInteger('frmMain', 'clrHighlightEventTo', clrHighlightEventTo);
            WriteInteger('frmMain', 'clrGrid', clrGrid);
            WriteInteger('frmMain', 'clPlayerBindNameColor', clPlayerBindNameColor);
            WriteInteger('frmMain', 'clPlayerSpeechBGColor', clPlayerSpeechBGColor);

            WriteBool('frmMain', 'bUse3DSelectionFrame', bUse3DSelectionFrame);
            WriteBool('frmMain', 'bUseWhiteSelectedText', bUseWhiteSelectedText);
            WriteBool('frmMain', 'bVerifyEventLabel', bVerifyEventLabel); // проверять правильность метки события или нет?

            WriteBool('frmMain', 'bUseLogging', bUseLogging);

            WriteInteger('frmMain', 'ReorderModKey',Ord(ReorderModKey));

            // up to 8 recent files
            for var i := 0 to CEP_MAX_RECENT_FILES do
               WriteString('RecentFiles', 'RecentFile'+i.ToString, RecentFiles[i]);

            WriteInteger('OpenFileDialog', 'OpenFileFilterIndex', OpenFileFilterIndex);
            WriteInteger('SaveFileDialog', 'SaveFileFilterIndex', SaveFileFilterIndex);

            WriteBool('frmMain', 'bEnableDblClickTreeFlag', bEnableDblClickTreeFlag);

            // Events List header
            WriteInteger('frmMain', 'HeaderControl1.Sections[0].Width', HeaderControl1.Sections[0].Width);
            WriteInteger('frmMain', 'HeaderControl1.Sections[1].Width', HeaderControl1.Sections[1].Width);
            WriteInteger('frmMain', 'HeaderControl1.Sections[2].Width', HeaderControl1.Sections[2].Width);

            // Новые параметры
            WriteBool('frmMain','bUsePlayerBindNameColor',bUsePlayerBindNameColor);
            WriteBool('frmMain','bUsePlayerSpeechBGColor',bUsePlayerSpeechBGColor);
            WriteBool('frmMain','bUseCustomHighlightEventColor',bUseCustomHighlightEventColor);
            //WriteBool('frmMain','bUseCustomGradientHighlightEventColor',bUseCustomGradientHighlightEventColor);
            WriteBool('frmMain','bUseCustomGridColor',bUseCustomGridColor);
        end;

    finally
        MainFormIni.Free();
    end;
end;

procedure TfrmMain.DrawET_Speech(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    mp3str, SpeechStr,
    ActorNameStr,
    ActorToNameStr: string;
    SpeechEvent: TConEventSpeech;
begin
    SpeechEvent := TConEventSpeech(ConEventList.Items.Objects[Index]);
    if SpeechEvent = nil then Exit();

    // load data from event
    //if ((CurrentConversation <> nil) and (TConEventSpeech(ConEventList.Items.Objects[Index]) <> nil)) then
    if ((CurrentConversation <> nil) and (SpeechEvent <> nil)) then
    begin
        {mp3str := TConEventSpeech(ConEventList.Items.Objects[Index]).mp3File;
        ActorNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorValue;
        ActorToNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorToValue;
        SpeechStr := TConEventSpeech(ConEventList.Items.Objects[Index]).TextLine;}
        mp3str         := SpeechEvent.mp3File;
        ActorNameStr   := SpeechEvent.ActorValue;
        ActorToNameStr := SpeechEvent.ActorToValue;
        SpeechStr      := SpeechEvent.TextLine;
    end;

    if bchkSpeech = False then Exit();  // Filter

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка

            if bHglEventsGradient = True then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else
            begin
                //Brush.Color := clrHighlightEvent;
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect); // Заполнение цветом
            end
            }
        end else
        begin
            if (bHglEventWithNoAudio = True) and (mp3str = '') then // what the point?
                Brush.Color := EventListColors.SpeechBGNoAudio
                //Brush.Color := RGB(192,255,255)
            else
            begin
                if (bUsePlayerSpeechBGColor = True) and (ActorNameStr = PLAYER_BINDNAME) then
                begin
                    if clPlayerSpeechBGColor <> clNone then // Если цвет отличается от clNone, то берём его.
                        Brush.Color := clPlayerSpeechBGColor
                    else
                        Brush.Color := EventListColors.PlayerSpeechBG // В противном случае берём из темы.
                end
                else
                    Brush.Color := EventListColors.SpeechBG;
                    //Brush.Color := RGB(192,255,192); // green
            end;

            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = True)) then
        begin
            //if clPlayerBindNameColor <> clNone then
            //    Font.Color := clPlayerBindNameColor
            //else
                Font.Color := clWhite;
        end
        else
        begin
            if (ActorNameStr = PLAYER_BINDNAME) and (bUsePlayerBindNameColor = True) then
            begin
                if clPlayerBindNameColor <> clNone then
                    Font.Color := clPlayerBindNameColor
                else
                    Font.Color := EventListColors.PlayerSpeechBindName
            end
                else Font.Color := EventListColors.PlayerSpeechBindName;
                //Font.Color := EventListColors.PlayerSpeechBindName else Font.Color := EventListColors.EventHeaderText;
                //Font.Color := clPlayerBindNameColor else Font.Color := clBlack;
        end;

        Font.Style := [fsBold];

        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Speech_Caption); // Event header

        // NPC/Actor/Player BindName
        TextOut(Rect.Left + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[0].Width, Rect.Top, ActorNameStr + '');

        if bShowAudioFiles = true then
        begin
            TempRect := Rect;
            TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;
            DrawText(Handle, mp3str, -1, TempRect, DT_END_ELLIPSIS);  // mp3 file path
        end;

        tempRect := Rect;
        tempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        //tempRect.Top := Rect.Top + 16;
        tempRect.Top := Rect.Top + Round(16 * ConEditPlus.Helpers.GetDPIAsRatio());
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset

        Font.Style := [];

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite
            else
            begin
                if (ActorNameStr = PLAYER_BINDNAME) and (bUsePlayerBindNameColor = True) then
                    Font.Color := EventListColors.PlayerSpeechText  // player speech text - selected
                    else Font.Color := EventListColors.SpeechText;  // NPC speech text - selected
            end;
            //(bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

        Font.Name := CEP_SPEECH_EVENT_FONT;
        Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

        DrawText(Handle, SpeechStr, -1, TempRect,  DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL); // and draw it!
    end;
end;

procedure TfrmMain.DrawET_Choice(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    EventChoice: TConEventChoice;
    FlagsStr: string;
begin
    //EventChoice:= nil;
    EventChoice := TConEventChoice(ConEventList.Items.Objects[Index]);
    if EventChoice = nil then Exit();

//    if ((CurrentConversation <> nil) and (TConEventChoice(ConEventList.Items.Objects[Index]) <> nil)) then
    if ((CurrentConversation <> nil) and (EventChoice <> nil)) then
        EventChoice := TConEventChoice(ConEventList.Items.Objects[Index]);
//    begin
//        EventChoice := TConEventChoice(ConEventList.Items.Objects[Index]);
//    end;

    if bchkChoice = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                 //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else
            begin
                //Brush.Color := clrHighlightEvent;
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect); // Заполнение цветом
            end
            }
        end else
        begin
            var bHasMP3String:= True;

            for var d:= 0 to EventChoice.NumChoices -1 do
            begin
                if EventChoice.Choices[d].mp3 = '' then
                begin
                    bHasMP3String := False;
                    Break;
                end;
            end;

            if (bHglEventWithNoAudio = True) and (bHasMP3String = False) then
                //Brush.Color := RGB(192,255,255)
                Brush.Color := EventListColors.ChoiceBGNoAudio
            else
                Brush.Color := EventListColors.ChoiceBG;
                //Brush.Color := RGB(255,250,200);

                FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.ChoiceText;

        Brush.Style := bsClear;
        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Choice_Caption); // Event header
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_SPEECH_EVENT_FONT;
        Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.ChoiceText;

        for var E:= 0 to EventChoice.NumChoices -1 do
        begin
            //Inc(tempRect.Top, 17);
            Inc(tempRect.Top, Round(ConEditPlus.Helpers.GetDPIAsRatio() * 17));

            if EventChoice.Choices[E].bSkillNeeded <> -1 then
            begin // bSkillNedded <>  -1, i.e. true
                //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.ChoiceText;

                if EventChoice.Choices[E].bDisplayAsSpeech = True then
                    DrawText(handle, Format(strChoiceWithSkills, [EventChoice.Choices[E].textline,
                                                                  EventChoice.Choices[E].GoToLabel,
                                                                  EventChoice.Choices[E].Skill,
                                                                  EventChoice.Choices[E].mp3]),
                                                                  -1, TempRect, DT_END_ELLIPSIS)
                else
                    DrawText(handle, Format(strChoiceWithSkillsNoAudio, [EventChoice.Choices[E].textline, // Hide mp3 field if bDisplayAsSpeech = False
                                                                         EventChoice.Choices[E].GoToLabel,
                                                                         EventChoice.Choices[E].Skill]),
                                                                         -1, TempRect, DT_END_ELLIPSIS);

                if Length(EventChoice.Choices[E].RequiredFlags) > 0 then
                begin
                    Font.Name := CEP_EVENT_LIST_FONT_NAME;
                    Font.Size := CEP_EVENT_LIST_FONT_SIZE;
                    //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := EventListColors.ChoiceFlagsText;

                    FlagsStr := '';

                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do
                    begin
                        FlagsStr := FlagsStr + '[' + EventChoice.Choices[E].RequiredFlags[F].flagName + '='
                                         + BoolToStr(EventChoice.Choices[E].RequiredFlags[F].flagValue, True) + '] ';
                    end;

                    //Inc(tempRect.Top, 17);
                    Inc(tempRect.Top, Round(ConEditPlus.Helpers.GetDPIAsRatio() * 17));
                    DrawText(Handle,strDependsOnFlag + FlagsStr, -1, tempRect, DT_END_ELLIPSIS);

                    Font.Name := CEP_SPEECH_EVENT_FONT;
                    Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;
                end;
            end else
            begin // bSkillNeeded = 0 or greater
                //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.ChoiceText;

                if EventChoice.Choices[E].bDisplayAsSpeech = True then
                    DrawText(handle, Format(strChoiceNoSkills, [EventChoice.Choices[E].textline,
                                                                EventChoice.Choices[E].GoToLabel,
                                                                EventChoice.Choices[E].mp3]),
                                                                -1, TempRect, DT_END_ELLIPSIS)
                else
                    DrawText(Handle, Format(strChoiceNoSkillsNoAudio, [EventChoice.Choices[E].textline, // Hide mp3 field if bDisplayAsSpeech = False
                                                                       EventChoice.Choices[E].GoToLabel]),
                                                                       -1, TempRect, DT_END_ELLIPSIS);

                if Length(EventChoice.Choices[E].RequiredFlags) > 0 then
                begin
                    Font.Name := CEP_EVENT_LIST_FONT_NAME;
                    Font.Size := CEP_EVENT_LIST_FONT_SIZE;
                    //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := EventListColors.ChoiceFlagsText;

                    FlagsStr := '';

                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do
                    begin
                        FlagsStr := FlagsStr + '[' + EventChoice.Choices[E].RequiredFlags[F].flagName + '='
                                  + BoolToStr(EventChoice.Choices[E].RequiredFlags[F].flagValue, True) + '] ';
                    end;

                    //Inc(tempRect.Top, 17);
                    Inc(tempRect.Top, Round(ConEditPlus.Helpers.GetDPIAsRatio() * 17));
                    DrawText(Handle,strDependsOnFlag + FlagsStr, -1, tempRect, DT_END_ELLIPSIS);

                    Font.Name := CEP_SPEECH_EVENT_FONT;
                    Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;
                end;
            end;
        end;
    end;
end;

procedure TfrmMain.DrawET_SetFlag(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    EventSetFlags: TConEventSetFlag;
    flagvalue,
    FlagExpiresStr: string;
begin
    EventSetFlags := nil;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventSetFlag(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        EventSetFlags:= TConEventSetFlag(ConEventList.Items.Objects[Index]);
    end;

    if bchkSetFlag = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(240,240,240);
            Brush.Color := EventListColors.SetFlagBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_SetFlag_Caption); // Event header
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        // font color when event is selected
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.SetFlagText;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        //Inc(tempRect.Top, 16);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));

        for var i := 0 to Length(EventSetFlags.SetFlags) -1 do
        begin
            flagvalue := BoolToStr(EventSetFlags.SetFlags[i].FlagValue, true);
            if EventSetFlags.SetFlags[i].flagExpiration = 0 then FlagExpiresStr := 'Never' else
                FlagExpiresStr := EventSetFlags.SetFlags[i].flagExpiration.ToString;

            DrawText(Handle,EventSetFlags.SetFlags[i].FlagName + '=' + flagvalue +
            ' Expires: ' + FlagExpiresStr, -1, TempRect, DT_END_ELLIPSIS);
            Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
            //Inc(tempRect.Top, 16); // Отступ вниз
        end;
    end;
end;

procedure TfrmMain.DrawET_CheckFlag(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    EventCheckFlag: TConEventCheckFlag;
begin
    EventCheckFlag := nil;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventCheckFlag(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        EventCheckFlag:= TConEventCheckFlag(ConEventList.Items.Objects[Index]);
    end;

    if bchkCheckFlag = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(245,245,245);
            Brush.Color := EventListColors.CheckFlagBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckFlag_Caption);  // Event header

        var Indent := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        TextOut(Indent, Rect.Top, strChkFlgJumpToLabel + EventCheckFlag.GotoLabel);
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.CheckFlagText;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        for var i := 0 to Length(EventCheckFlag.FlagsToCheck) -1 do
        begin
            var flagvalue := BoolToStr(EventCheckFlag.FlagsToCheck[i].FlagValue, true);

            DrawText(Handle,EventCheckFlag.FlagsToCheck[i].FlagName + '=' + flagvalue, -1, TempRect, DT_END_ELLIPSIS);
            Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
            //Inc(tempRect.Top, 16); // Отступ вниз
        end;
    end;
end;

procedure TfrmMain.DrawET_CheckObject(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    objName, failLabel: string;
begin
    if ((CurrentConversation <> nil) and (TConEventCheckObject(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        objName := TConEventCheckObject(ConEventList.Items.Objects[Index]).ObjectValue;
        failLabel := TConEventCheckObject(ConEventList.Items.Objects[Index]).GoToLabel;
    end;

    if bchkCheckObject = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(240,240,240);
            Brush.Color := EventListColors.CheckObjectBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckObject_Caption); // Event header

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.CheckObjectText;

        DrawText(Handle, Format(strCheckObject, [objName, failLabel]) , -1, tempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_TransferObject(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    ObjectValue: string;
//    Amount: Integer;
    ActorFromValue: string;
    ActorToValue: string;
    GotoLabel: string;
begin
    if ((CurrentConversation <> nil) and (TConEventTransferObject(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        ObjectValue  := TConEventTransferObject(ConEventList.Items.Objects[Index]).ObjectValue;
//        Amount       := TConEventTransferObject(ConEventList.Items.Objects[Index]).Amount;
        ActorFromValue := TConEventTransferObject(ConEventList.Items.Objects[Index]).ActorFromValue;
        ActorToValue := TConEventTransferObject(ConEventList.Items.Objects[Index]).ActorToValue;
        GotoLabel    := TConEventTransferObject(ConEventList.Items.Objects[Index]).GotoLabel;
    end;

    if bchkTransferObject = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(245,245,245);
            Brush.Color := EventListColors.TransferObjectBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_TransferObject_Caption);

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;

        DrawText(Handle, ActorFromValue, -1, tempRect, DT_END_ELLIPSIS);

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        Font.Style := [];
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.TransferObjectText;

        DrawText(Handle, Format(strTransferObject, [ObjectValue, ActorFromValue, ActorToValue, GotoLabel]) , -1, tempRect,
        DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
    end;
end;

procedure TfrmMain.DrawET_MoveCamera(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    camTypeStr: string;
    camAngleStr: string;
begin
    if ((CurrentConversation <> nil) and (TConEventMoveCamera(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        case TConEventMoveCamera(ConEventList.Items.Objects[Index]).CameraType of
              CT_Predefined: camTypeStr := strCT_Predefined;
              CT_Speakers: camTypeStr := 'Not Implemented';
              CT_Actor: camTypeStr := 'Not Implemented';
              CT_Random: camTypeStr := strRandomCam;
        end;

        case TConEventMoveCamera(ConEventList.Items.Objects[Index]).CameraAngle of
              CP_SideTight:             camAngleStr := strCP_SideTight;
              CP_SideMid:               camAngleStr := strCP_SideMid;
              CP_SideAbove:             camAngleStr := strCP_SideAbove;
              CP_SideAbove45:           camAngleStr := strCP_SideAbove45;
              CP_ShoulderLeft:          camAngleStr := strCP_ShoulderLeft;
              CP_ShoulderRight:         camAngleStr := strCP_ShoulderRight;
              CP_HeadShotTight:         camAngleStr := strCP_HeadShotTight;
              CP_HeadShotMid:           camAngleStr := strCP_HeadShotMid;
              CP_HeadShotLeft:          camAngleStr := strCP_HeadShotLeft;
              CP_HeadShotRight:         camAngleStr := strCP_HeadShotRight;
              CP_HeadShotSlightRight:   camAngleStr := strCP_HeadShotSlightRight;
              CP_HeadShotSlightLeft:    camAngleStr := strCP_HeadShotSlightLeft;
              CP_StraightAboveLookingDown: camAngleStr := strCP_StraightAboveLookingDown;
              CP_StraightBelowLookingUp:camAngleStr := strCP_StraightBelowLookingUp;
              CP_BelowLookingUp:        camAngleStr := strCP_BelowLookingUp;
        end;
    end;

    if bchkMoveCamera = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(240,240,240);
            Brush.Color := EventListColors.MoveCameraBG;
            FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_MoveCamera_Caption); // event header

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.MoveCameraText;

        if camTypeStr = strRandomCam then
            DrawText(Handle, camTypeStr, -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL)
        else
            DrawText(Handle, camTypeStr + ' ' + camAngleStr, -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
    end;
end;

procedure TfrmMain.DrawET_Animation(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    EventPlayAnim: TConEventAnimation;
    PlayAnimActor: string;
    PlayAnimSeq: string;
    //bPlayAnimOnce: Boolean;
    PlayAnimMode: string;
    PlayAnimDurationSec: Integer;
    bPlayAnimWaitToFinish: Boolean;
begin
    //bPlayAnimOnce:= False;
    bPlayAnimWaitToFinish:= False;

    if ((CurrentConversation <> nil) and (TConEventAnimation(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        EventPlayAnim := TConEventAnimation(ConEventList.Items.Objects[Index]);

        PlayAnimActor:= EventPlayAnim.ActorValue;
        PlayAnimSeq:= EventPlayAnim.AnimSequence;
        //bPlayAnimOnce:= EventPlayAnim.bAnimPlayOnce;
        PlayAnimMode := GetEnumName(TypeInfo(TAnimationModes), Ord(EventPlayAnim.AnimPlayMode));
        PlayAnimDurationSec:= EventPlayAnim.AnimPlayForSeconds;
        bPlayAnimWaitToFinish:= EventPlayAnim.bAnimWaitToFinish;
    end;

    if bchkAnimation = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(240,240,240);
            Brush.Color := EventListColors.AnimationBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Animation_Caption); // Event header

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.AnimationText;

        DrawText(Handle, PlayAnimActor, -1, tempRect, DT_END_ELLIPSIS);

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        DrawText(Handle, 'Play Animation: ' + PlayAnimSeq, -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        //Inc(tempRect.Top, 16);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio())); //
        DrawText(Handle, 'Play mode: ' + PlayAnimMode, -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        //DrawText(Handle, 'Play Once: ' + BoolToStr(bPlayAnimOnce, true) + '', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        //Inc(tempRect.Top, 16);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        DrawText(Handle, 'Wait Anim to finish: ' + BoolToStr(bPlayAnimWaitToFinish, true) + '', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        if PlayAnimDurationSec > 0 then
        begin
           //Inc(tempRect.Top, 16);
            Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
            DrawText(Handle, 'Play duration: ' + PlayAnimDurationSec.ToString + ' seconds', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        end;

    end;
end;

procedure TfrmMain.DrawET_Trade(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState); // This event is not implemented, so I will skip it for now...
begin
    if bchkTrade = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        Font.Color := clBlack;
        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Trade_Caption);
    end;
end;

procedure TfrmMain.DrawET_Jump(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    TempRect: TRect;
    ButtonRect: TRect;
    JumpToLabelStr: string;
    JumpToConversation: string;
    JumpToConversationId: Integer;
    CurrentConversationId: Integer;
    CombinedJumpToStr: string;
begin
    JumpToConversationId := -1;
    CurrentConversationId:= -1;

    if ((CurrentConversation <> nil) and (TConEventJump(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        CurrentConversationId := CurrentConversation.id;
        JumpToConversationId := TConEventJump(ConEventList.Items.Objects[Index]).conversationId;
        JumpToLabelStr := TConEventJump(ConEventList.Items.Objects[Index]).gotoLabel;

        JumpToConversation := FindConversationById(JumpToConversationId);

        if CurrentConversationId = JumpToConversationId then
        begin
            CombinedJumpToStr := strJumpInCurrentConversation + JumpToLabelStr;
        end else
        begin
            CombinedJumpToStr := Format(strJumpInAnotherConversation, [JumpToConversation,  JumpToLabelStr]);
        end;
    end;

    if bchkJump = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
               DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(250,255,240);
            Brush.Color := EventListColors.JumpBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Jump_Caption); // Event header

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.JumpText;

        DrawText(Handle,CombinedJumpToStr, -1, TempRect, DT_END_ELLIPSIS);

        ButtonRect := Rect;
        ButtonRect.Left := Rect.Left + 5;
        ButtonRect.Width := HeaderControl1.Sections[0].Width - 10; //135;
        ButtonRect.Top:= Rect.Top + 20;
        ButtonRect.Bottom:= Rect.Bottom - 5;
        Font.Style := [TFontStyle.fsUnderline];

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.JumpLink;

        if (CurrentConversationId <> JumpToConversationId) then
            DrawText(Handle,strJumpToConversation, -1, ButtonRect,DT_END_ELLIPSIS)
        else
            DrawText(Handle,strJumpToEvent, -1, ButtonRect, DT_END_ELLIPSIS)
    end;
end;

procedure TfrmMain.DrawET_Random(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    labelsArray: array of string;
    strCycle, strCycleOnce, strRandCycle: string;
begin
    if ((CurrentConversation <> nil) and (TConEventRandom(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        SetLength(labelsArray, Length(TConEventRandom(ConEventList.Items.Objects[Index]).GoToLabels));

        for var A:=0 to Length(TConEventRandom(ConEventList.Items.Objects[Index]).GoToLabels) -1 do
            labelsArray[A] := TConEventRandom(ConEventList.Items.Objects[Index]).GoToLabels[A];

        strCycle := BoolToStr(TConEventRandom(ConEventList.Items.Objects[Index]).bCycle, True);
        strCycleOnce := BoolToStr(TConEventRandom(ConEventList.Items.Objects[Index]).bCycleOnce, True);
        strRandCycle := BoolToStr(TConEventRandom(ConEventList.Items.Objects[Index]).bCycleRandom, True);
    end;

    if bchkRandom = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(245,245,245);
            Brush.Color := EventListColors.RandomBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Random_Caption); // Event header


        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.RandomText; // Labels text color
        Font.Style := [];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top + Round(12 * ConEditPlus.Helpers.GetDPIAsRatio()), ET_Random_TargetLabels);
        //TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top + 12, ET_Random_TargetLabels);

        tempRect := Rect;

        Font.Name := CEP_EVENT_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;

        // Draw event flags like CycleOnce, etc.
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;
        DrawText(Handle, Format(strRandomEventOptions,[strCycle, strCycleOnce, strRandCycle]) , -1, TempRect, DT_END_ELLIPSIS);
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Top := Rect.Top + Round(12 * ConEditPlus.Helpers.GetDPIAsRatio());
        //tempRect.Top := Rect.Top + 12;

        //Inc(tempRect.Top, 16);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));

        //var r,g,b: Byte;
        //var rr,gg,bb: Byte;

        for var i := 0 to Length(labelsArray) -1 do
        begin
            //ConEditPlus.Helpers.ExtractRGB(EventListColors.RandomText, r,g,b);

            //Randomize();
            //rr := System.Math.EnsureRange(RandomRange(r - 150, r + 150), 0, 255);
            //gg := System.Math.EnsureRange(RandomRange(g - 150, g + 150), 0, 255);
            //bb := System.Math.EnsureRange(RandomRange(b - 150, b + 150), 0, 255);

            if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := EventListColors.RandomLabels;

            DrawText(Handle,labelsArray[i], -1, TempRect, DT_END_ELLIPSIS);  // maybe someone will be using very long labels?
            Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
            //Inc(tempRect.Top, 16); // Отступ вниз
        end;
    end;
end;

procedure TfrmMain.DrawET_Trigger(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    TriggerTag: string;
begin
    if ((CurrentConversation <> nil) and (TConEventTrigger(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        TriggerTag := TConEventTrigger(ConEventList.Items.Objects[Index]).TriggerTag;
    end;

    if bchkTrigger = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
               DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
           else begin
                //Brush.Color := clrHighlightEvent;
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect); // Заполнение цветом
                end
                }
        end else
        begin
            //Brush.Color := RGB(240,255,240);
            Brush.Color := EventListColors.TriggerBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Trigger_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.TriggerText;
        DrawText(Handle,'Trigger ' + TriggerTag, -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_AddGoal(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    TempRect: TRect;
    GoalName: string;
    bComplete: Boolean;
    GoalText: string;
    bPrimaryGoal: Boolean;
begin
    bComplete:= False;
    bPrimaryGoal := False;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventAddGoal(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        var GoalObject:= TConEventAddGoal(ConEventList.Items.Objects[Index]);
        GoalName     := GoalObject.GoalName; //TConEventAddGoal(ConEventList.Items.Objects[Index]).GoalName;
        bComplete    := GoalObject.bComplete; //TConEventAddGoal(ConEventList.Items.Objects[Index]).bComplete;
        GoalText     := GoalObject.GoalText; //TConEventAddGoal(ConEventList.Items.Objects[Index]).GoalText;
        bPrimaryGoal := GoalObject.bPrimaryGoal; //TConEventAddGoal(ConEventList.Items.Objects[Index]).bPrimaryGoal;
    end;

    if bchkAddGoal = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
           else begin
                //Brush.Color := clrHighlightEvent;
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect); // Заполнение цветом
                end
                }
        end else
        begin
            //Brush.Color := RGB(255,255,245);
            Brush.Color := EventListColors.AddGoalBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddGoal_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.AddGoalText;

        DrawText(Handle,strGoalName + GoalName, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);
        TempRect.Right := Rect.Right - SysScrollBarWidth; // right offset

        if bComplete = False then
            DrawText(Handle,strGoalText + GoalText, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        if bPrimaryGoal = true then
        begin
            //Inc(tempRect.Top, 20);
            //Inc(Rect.Left, 20);
            TempRect.Top := Rect.Top;
            TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;
            DrawText(Handle, strPrimaryGoal, -1, TempRect, DT_END_ELLIPSIS);
        end;

        if bComplete = true then
        begin
            //Inc(tempRect.Top, 20);
            //Inc(Rect.Left, 20);
            TempRect.Top := Rect.Top;
            TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;
            DrawText(Handle,strGoalCompleted, -1, TempRect, DT_END_ELLIPSIS);
        end;
    end;
end;

procedure TfrmMain.DrawET_AddNote(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    NoteText: string;
begin
    if ((CurrentConversation <> nil) and (TConEventAddNote(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        NoteText := TConEventAddNote(ConEventList.Items.Objects[Index]).TextLine;
    end;

    if bchkAddNote = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
            //Brush.Color := RGB(240,255,240);
            Brush.Color := EventListColors.AddNoteBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddNote_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.AddNoteText;
        DrawText(Handle,NoteText, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
    end;
end;

procedure TfrmMain.DrawET_AddSkillPoints(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    SkillAwardMessage: string;
    SkillPoints: Integer;
begin
    SkillPoints := -1;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventAddSkillPoints(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        SkillPoints := TConEventAddSkillPoints(ConEventList.Items.Objects[Index]).Points;
        SkillAwardMessage := TConEventAddSkillPoints(ConEventList.Items.Objects[Index]).TextLine;
    end;

    if bchkAddNote = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                 //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
            end
            }
        end else
        begin
            //Brush.Color := RGB(245,240,245);
            Brush.Color := EventListColors.AddSkillPointsBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddSkillPoints_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.AddSkillPointsText;
        DrawText(Handle,Format(strAddSkillPoints, [SkillPoints]), -1, TempRect, DT_END_ELLIPSIS);
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);
        DrawText(Handle,SkillAwardMessage, -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_AddCredits(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var TempRect: TRect;
var AmountOfCredits: Integer;
begin
    AmountOfCredits := -1;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventAddCredits(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        AmountOfCredits := TConEventAddCredits(ConEventList.Items.Objects[Index]).Credits;
    end;

    if bchkAddCredits = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then // selected event
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
           //Brush.Color := RGB(255,244,245);
           Brush.Color := EventListColors.AddCreditsBG;
           FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddCredits_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.AddCreditsText;

        if AmountOfCredits > 0 then
           DrawText(Handle, Format(strAddCredits, [AmountOfCredits]), -1, TempRect, DT_END_ELLIPSIS)
        else
           DrawText(Handle, Format(strSubtractCredits, [AmountOfCredits]), -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_CheckPersona(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    CheckValue: Integer;
    CheckGoToLabel: string;
    CheckString: string;
    ConditionString: string;
    CombinedString: string;
begin
    // load data from event
    if ((CurrentConversation <> nil) and (TConEventCheckPersona(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        case TConEventCheckPersona(ConEventList.Items.Objects[Index]).AttrToCheck of
            EP_Credits: CheckString := ConEditPlus.Consts.strCheckCredits; // 'Credits';
            EP_Health: CheckString := ConEditPlus.Consts.strCheckHealth; //'Health';
            EP_SkillPoints: CheckString := ConEditPlus.Consts.strCheckSkillPts;// 'SkillPoints';
        end;

        case TConEventCheckPersona(ConEventList.Items.Objects[Index]).Condition of
            EC_Less:         ConditionString:= ConEditPlus.Consts.strCheckConditionLessThan;// ' Less than (<) ';
            EC_LessEqual:    ConditionString:= ConEditPlus.Consts.strCheckConditionLessThanEqualTo;// ' Less than or Equal to (<=) ';
            EC_Equal:        ConditionString:= ConEditPlus.Consts.strCheckConditionEqual; //' Equal to (=) ';
            EC_GreaterEqual: ConditionString:= ConEditPlus.Consts.strCheckConditionGreaterThan;// ' Greater than or Equal to (>=) ';
            EC_Greater:      ConditionString:= ConEditPlus.Consts.strCheckConditionGreater;// ' Greater than (>) ';
        end;

        CheckValue := TConEventCheckPersona(ConEventList.Items.Objects[Index]).CheckValue;
        CheckGoToLabel := TConEventCheckPersona(ConEventList.Items.Objects[Index]).CheckGoToLabel;
    end;

    //CombinedString := 'if ' + CheckString + ConditionString + CheckValue.ToString + ' then JumpToLabel: ' + CheckGoToLabel;
    CombinedString := ConEditPlus.Consts.strCheckIf + CheckString + ConditionString + CheckValue.ToString + ConEditPlus.Consts.strJumpToLabel + CheckGoToLabel;

    if bchkCheckPersona = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
           {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
               }
        end else
        begin
           //Brush.Color := RGB(244,244,255);
            Brush.Color := EventListColors.CheckPersonaBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckPersona_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.CheckPersonaText;
        DrawText(Handle,CombinedString, -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_Comment(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
begin
    var CommentString: string;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventComment(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        CommentString := TConEventComment(ConEventList.Items.Objects[Index]).TextLine;
    end;

    if bchkComment = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
               //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end}
        end else
        begin
           //Brush.Color := RGB(238,238,238);
            Brush.Color := EventListColors.CommentBG;
            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Comment_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, Round(16 * ConEditPlus.Helpers.GetDPIAsRatio()));
        //Inc(tempRect.Top, 16);

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.CommentText;
        DrawText(Handle,CommentString, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
    end;
end;

procedure TfrmMain.DrawET_End(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var TempRect: TRect;
begin
    if bchkEnd = False then Exit();

    with (Control as TListBox).Canvas do
    begin
        Brush.Style := bsClear;

        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
               DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO);

            if (bHglEventsGradient = True) then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                                  //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else begin
               //Brush.Color := clrHighlightEvent;
               Brush.Color := EventListColors.HighlightEvent;
               FillRect(Rect);
            end;
            }
        end
        else
        begin
            //Brush.Color := clWhite;
            Brush.Color := EventListColors.EndBG;
            FillRect(Rect); // Заполнение цветом
        end;

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;

        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;
        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := EventListColors.EventHeaderText;
        Font.Style := [fsBold, fsItalic];

        DrawText(Handle, ET_End_Caption, -1, TempRect, DT_SINGLELINE);
    end;
end;

procedure TfrmMain.HighlightSelectedEvent(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    labelStr, idxStr: String;
    tempRect: TRect;
    Event: TConEvent;
begin
    with (Control as TListBox).Canvas do
    begin
        if CurrentConversation <> nil then
        begin
            Event := TConEvent(ConEventList.Items.Objects[Index]);
            if Event <> nil then
            begin
               labelStr:= TConEvent(ConEventList.Items.Objects[Index]).EventLabel;
               idxStr := TConEvent(ConEventList.Items.Objects[Index]).EventIdx.ToString + '>' +
                         TConEvent(ConEventList.Items.Objects[Index]).unknown1.ToString;
            end;
        end;

        if Event = nil then Exit();

        Font.Size := CEP_EVENT_LABEL_FONT_SIZE;
        Font.Name := CEP_EVENT_LABEL_FONT;
        Font.Style := [fsBold];

        if labelStr <> '' then
        begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;

            //FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 64);
            FillRectAlpha(TListBox(Control).Canvas, tempRect, EventListColors.EventWithLabel, 64);
        end;

        case Event.EventHighlightType of
            EHT_Related:
            begin
                tempRect := Rect;

                tempRect.Left := Rect.Left;
                tempRect.Right := HeaderControl1.Sections[0].Width - 1;
                tempRect.Top := Rect.Top;
                Brush.Style := bsClear;

                //case EventListColorsMode of
                GradientFillCanvas(TListBox(Control).Canvas, EventListColors.RelatedEventFrom, EventListColors.RelatedEventTo, tempRect, gdHorizontal);
                    //ELCM_Default: GradientFillCanvas(TListBox(Control).Canvas, clYellow, clCream, tempRect, gdHorizontal);
                    //ELCM_Dark:    GradientFillCanvas(TListBox(Control).Canvas, RGB(128,121,0), clWebYellowGreen, tempRect, gdHorizontal);
                //end;
            end;

            EHT_Error:
            begin
                tempRect := Rect;

                tempRect.Left := Rect.Left;
                tempRect.Right := HeaderControl1.Sections[0].Width - 1;
                tempRect.Top := Rect.Top;
                Brush.Style := bsClear;

                GradientFillCanvas(TListBox(Control).Canvas, EventListColors.ErrorEventFrom, EventListColors.ErrorEventTo, tempRect, gdHorizontal);
                //GradientFillCanvas(TListBox(Control).Canvas, clWebOrange, clRed, tempRect, gdHorizontal);
            end;
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
            Font.Color := clWhite else Font.Color := EventListColors.EventLabelText;
           //Font.Color := clWhite else Font.Color := clMaroon;

        if bDrawEventIdx = True then
            //TextOut(Rect.Left + Round(40 * GetDPIAsRatio()), Rect.Top + 4, labelStr)
            //TextOut(Rect.Left + 20, Rect.Top + 14, labelStr)
            TextOut(Rect.Left + 2, Rect.Top + 20, labelStr)
        else
            TextOut(Rect.Left + 2, Rect.Top + 2, labelStr);

        // draw event index here (set color and draw text)
        if bDrawEventIdx = True then  // Hide Event Index when needed
        begin
            if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
               Font.Color := clYellow else Font.Color := clBlue;

            TextOut(Rect.Left, Rect.Top + 4, idxStr);
        end;
    end;
end;

procedure TfrmMain.DrawEventSelection(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState); // if event is selected
begin
    with (Control as TListBox).Canvas do
    begin
        if bUse3DSelectionFrame = True then
           DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO);

        if bUseCustomHighlightEventColor = True then // override colors?
        begin
            if (bHglEventsGradient = True) then
            begin
                GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            end
            else
            begin
                //Brush.Color := clrHighlightEventFrom;
                Brush.Color := clrHighlightEvent;
                FillRect(Rect);
            end;
        end
        else // Or use from selected theme?
        begin
            if (bHglEventsGradient = False) then
            begin
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
            end
            else
            begin
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect);
            end;
        end;
    end;
end;

procedure TfrmMain.UnhighlightRelatedEvents();
begin
    if CurrentConversation = nil then Exit();

    for var unhglEvent in CurrentConversation.Events do
        unhglEvent.EventHighlightType := EHT_None;
end;

procedure TfrmMain.UpdateEventListHeights();
begin
    for var i:= 0 to ConEventList.Count -1 do
    begin
        if ConEventList.Items.Objects[i] <> nil then
        begin
            if ConEventList.Items.Objects[i] is TConEventSpeech then
            begin
                var SpeechEvent := TConEventSpeech(ConEventList.Items.Objects[i]);

                SpeechEvent.LineWrapCount := CountLineWraps(SpeechEvent.TextLine);
                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetSpeechEventItemHeight([SpeechEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventChoice then
            begin
                var ChoiceEvent := TConEventChoice(ConEventList.Items.Objects[i]);

                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetChoiceItemHeight([ChoiceEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventSetFlag then
            begin
                var SetFlagEvent := TConEventSetFlag(ConEventList.Items.Objects[i]);

                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetSetFlagsItemHeight([SetFlagEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventCheckFlag then
            begin
                var CheckFlagEvent := TConEventCheckFlag(ConEventList.Items.Objects[i]);

                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetCheckFlagsItemHeight([CheckFlagEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventRandom then
            begin
                var RandomEvent := TConEventRandom(ConEventList.Items.Objects[i]);

                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetRandomEventItemHeight([RandomEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventAddGoal then
            begin
                var AddGoalEvent := TConEventAddGoal(ConEventList.Items.Objects[i]);

                AddGoalEvent.LineWrapCount := CountLineWraps(AddGoalEvent.GoalText);
                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetAddGoalItemHeight([AddGoalEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventAddNote then
            begin
                var AddNoteEvent := TConEventAddNote(ConEventList.Items.Objects[i]);

                AddNoteEvent.LineWrapCount := CountLineWraps(AddNoteEvent.TextLine);
                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetAddNoteItemHeight([AddNoteEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventAddSkillPoints then
            begin
                var AddSkillPtsEvent := TConEventAddSkillPoints(ConEventList.Items.Objects[i]);

                AddSkillPtsEvent.LineWrapCount := CountLineWraps(AddSkillPtsEvent.TextLine);
                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetAddSkillPtsItemHeight([AddSkillPtsEvent]));
            end;

            if ConEventList.Items.Objects[i] is TConEventComment then
            begin
                var CommentEvent := TConEventComment(ConEventList.Items.Objects[i]);

                CommentEvent.LineWrapCount := CountLineWraps(CommentEvent.TextLine);
                ConEventList.Perform(LB_SETITEMHEIGHT, i, GetCommentItemHeight([CommentEvent]));
            end;
        end;
    end;
end;

procedure TfrmMain.UpdateEventListFixedHeights();
begin
    for var i:= 0 to ConEventList.Count -1 do
    begin
        if ConEventList.Items.Objects[i] <> nil then
        begin
            if ConEventList.Items.Objects[i] is TConEventCheckObject then
            begin
                if bchkCheckObject = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(CHECK_OBJECT_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventTransferObject then
            begin
                if bchkTransferObject = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(TRANSFER_OBJECT_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventMoveCamera then
            begin
                if bchkMoveCamera = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(MOVE_CAMERA_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventAnimation then
            begin
                if bchkAnimation = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(ANIMATION_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventTrade then
            begin
                if bchkTrade = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(TRADE_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventJump then
            begin
                if bchkJump = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(JUMP_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventTrigger then
            begin
                if bchkTrigger = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(TRIGGER_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventAddCredits then
            begin
                if bchkAddCredits = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(ADD_CREDITS_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventCheckPersona then
            begin
                if bchkCheckPersona = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(CHECK_PERSONA_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;

            if ConEventList.Items.Objects[i] is TConEventEnd then
            begin
                if bchkEnd = True then
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, Round(END_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()))
                else
                    ConEventList.Perform(LB_SETITEMHEIGHT, i, FILTER_ITEM_HEIGHT);
            end;
        end;
    end;
end;

procedure TfrmMain.HighlightEvents(labelStr: string);
begin
    if CurrentConversation = nil then Exit();

    if labelStr = '' then Exit();

    for var Event in CurrentConversation.Events do
        if LowerCase(Event.EventLabel) = LowerCase(labelStr) then
            Event.EventHighlightType := EHT_Related;
end;

procedure TfrmMain.HighlightRelatedEvents();
begin
    if bHighlightRelatedEvents = False then Exit();


    // Find events with label(s) from selected event and highlight them
    if CurrentEvent is TConEventChoice then
    begin
        var TempChoice := TConEventChoice(CurrentEvent);

        for var i:= 0 to High(TempChoice.Choices) do
        begin
            var tempLabel:= TempChoice.Choices[i].GoToLabel;

            HighlightEvents(tempLabel);
        end;
    end;

    if CurrentEvent is TConEventCheckFlag then
    begin
        var TempChkFlag:= TConEventCheckFlag(CurrentEvent);
            HighlightEvents(TempChkFlag.GotoLabel);
    end;

    if CurrentEvent is TConEventCheckObject then
    begin
        var TempChkObj := TConEventCheckObject(CurrentEvent);
            HighlightEvents(TempChkObj.GotoLabel);
    end;

    if CurrentEvent is TConEventTransferObject then
    begin
        var TempTransObj:= TConEventTransferObject(CurrentEvent);
            HighlightEvents(TempTransObj.GotoLabel);
    end;

    if CurrentEvent is TConEventJump then
    begin
        var TempJump:= TConEventJump(CurrentEvent);
            HighlightEvents(TempJump.gotoLabel);
    end;

    if CurrentEvent is TConEventRandom then
    begin
        var TempRandom:= TConEventRandom(CurrentEvent);

        for var i:= 0 to High(TempRandom.GoToLabels) do
            HighlightEvents(TempRandom.GoToLabels[i]);
    end;

    if CurrentEvent is TConEventCheckPersona then
    begin
        var TempCheckPersona:= TConEventCheckPersona(CurrentEvent);
            HighlightEvents(TempCheckPersona.CheckGoToLabel);
    end;

    // we have selected event with some label, find and highlight events which use that label
    if CurrentEvent.EventLabel <> '' then
    begin
        for var i:= 0 to High(CurrentConversation.Events) do
        begin
            if CurrentConversation.Events[i] is TConEventChoice then
            begin
                var ChoiceEvent := TConEventChoice(CurrentConversation.Events[i]);

                for var ChoiceItem in ChoiceEvent.Choices do
                begin
                    if (ChoiceItem.GoToLabel <> '') and
                       (LowerCase(ChoiceItem.GoToLabel) = LowerCase(CurrentEvent.EventLabel)) then
                        ChoiceEvent.EventHighlightType := EHT_Related;
                end;
            end;

            if CurrentConversation.Events[i] is TConEventCheckFlag then
            begin
                var CheckFlagEvent := TConEventCheckFlag(CurrentConversation.Events[i]);

                if (CheckFlagEvent.GotoLabel <> '') and
                   (LowerCase(CheckFlagEvent.GotoLabel) = LowerCase(CurrentEvent.EventLabel)) then
                    CheckFlagEvent.EventHighlightType := EHT_Related;
            end;

            if CurrentConversation.Events[i] is TConEventCheckObject then
            begin
                var CheckObjEvent := TConEventCheckObject(CurrentConversation.Events[i]);

                if (CheckObjEvent.GoToLabel <> '') and
                   (LowerCase(CheckObjEvent.GotoLabel) = LowerCase(CurrentEvent.EventLabel)) then
                    CheckObjEvent.EventHighlightType := EHT_Related;
            end;

            if CurrentConversation.Events[i] is TConEventTransferObject then
            begin
                var TransObjEvent := TConEventTransferObject(CurrentConversation.Events[i]);

                if (TransObjEvent.GotoLabel <> '') and
                   (LowerCase(TransObjEvent.GotoLabel) = LowerCase(CurrentEvent.EventLabel)) then
                    TransObjEvent.EventHighlightType := EHT_Related;
            end;

            if CurrentConversation.Events[i] is TConEventJump then
            begin
                var JumpEvent := TConEventJump(CurrentConversation.Events[i]);

                if (JumpEvent.gotoLabel <> '') and
                   (LowerCase(JumpEvent.GotoLabel) = LowerCase(CurrentEvent.EventLabel)) then
                    JumpEvent.EventHighlightType := EHT_Related;
            end;

            if CurrentConversation.Events[i] is TConEventRandom then
            begin
                var RandEvent := TConEventRandom(CurrentConversation.Events[i]);

                for var RandItem in RandEvent.GoToLabels do
                    if LowerCase(RandItem) = LowerCase(CurrentEvent.EventLabel) then
                        RandEvent.EventHighlightType := EHT_Related;
            end;

            if CurrentConversation.Events[i] is TConEventCheckPersona then
            begin
                var CheckPersonaEvent := TConEventCheckPersona(CurrentConversation.Events[i]);

                if (CheckPersonaEvent.CheckGoToLabel <> '') and
                   (LowerCase(CheckPersonaEvent.CheckGoToLabel) = LowerCase(CurrentEvent.EventLabel)) then
                    CheckPersonaEvent.EventHighlightType := EHT_Related;
            end;
        end;
    end;
end;

procedure TfrmMain.PickTableObject(newTableMode: TTableMode; control: TControl);
begin
    frmTableEdit.TableMode := newTableMode;

    case newTableMode of
      TM_ActorsPawns: frmTableEdit.lstTableContents.Items := frmMain.listPawnsActors;
      TM_Flags:       frmTableEdit.lstTableContents.Items := frmMain.listFlags;
      TM_Skills:      frmTableEdit.lstTableContents.Items := frmMain.listSkills;
      TM_Objects:     frmTableEdit.lstTableContents.Items := frmMain.listObjects;
    end;

    frmTableEdit.TableItemReceiver := control;
    frmTableEdit.chkDoubleClickEditItem.Checked := False;
    frmTableEdit.ShowModal();
end;

function TfrmMain.GetAppVersionStr(): string;
var
    Size, Handle: DWORD;
    Buffer: TBytes;
    FixedPtr: PVSFixedFileInfo;
begin
    var Exe := ParamStr(0);

    Size := GetFileVersionInfoSize(PChar(Exe), Handle);
    if Size = 0 then
        RaiseLastOSError;

    SetLength(Buffer, Size);
    if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
        RaiseLastOSError;

    if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
        RaiseLastOSError;

    Result := Format('%d.%d.%d.%d',
      [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
       LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
       LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
       LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
end;

function TfrmMain.HasConvoEventToPaste(): Boolean; // to enable/disable "Paste" menu item
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinReader: TBinaryReader;
begin
    Result := False;

    hBuf := Clipboard.GetAsHandle(CF_ConEditPlus);
    if hBuf <> 0 then
    begin
        BufPtr := GlobalLock(hBuf);
        if BufPtr <> nil then
        begin
            try
                mStream := TMemoryStream.Create();
                try
                    mStream.WriteBuffer(bufPtr^, GlobalSize(hBuf));
                    mStream.Position := 0;

                    BinReader := TBinaryReader.Create(mStream, TEncoding.ANSI);

                    if ReadContentHeader(BinReader, mStream) = ET_Speech_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Choice_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_SetFlag_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_CheckFlag_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_CheckObject_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_TransferObject_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_MoveCamera_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Animation_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Trade_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Jump_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Random_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Trigger_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_AddGoal_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_AddNote_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_AddSkillPoints_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_AddCredits_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_CheckPersona_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_Comment_Caption then
                        Result := True
                    else if ReadContentHeader(BinReader, mStream) = ET_End_Caption then
                        Result := True;
                finally
                    mStream.Free();
                    BinReader.Free();
                end;
            finally
                GlobalUnlock(hBuf);
            end;
        end;
    end;
end;

function TfrmMain.HasConversationToPaste(): Boolean;
var
    hBuf: THandle;
    BufPtr: Pointer;
    mStream: TMemoryStream;
    BinReader: TBinaryReader;
begin
    Result := False;

    hBuf := Clipboard.GetAsHandle(CF_ConEditPlus);
    if hBuf <> 0 then
    begin
        BufPtr := GlobalLock(hBuf);
        if BufPtr <> nil then
        begin
            try
                mStream := TMemoryStream.Create();
                try
                    mStream.WriteBuffer(bufPtr^, GlobalSize(hBuf));
                    mStream.Position := 0;

                    BinReader := TBinaryReader.Create(mStream, TEncoding.ANSI);

                    // read conversation header for clipboard here
                    if ReadContentHeader(BinReader, mStream) = CLIPBOARD_CONVERSATION_ID then
                        Result := True;
                finally
                    mStream.Free();
                    BinReader.Free();
                end;
            finally
                GlobalUnlock(hBuf);
            end;
        end;
    end;
end;

function TfrmMain.GetReorderButtonHint(): string;
begin
    case ReorderModKey of
      re_Ctrl: Result :=  Format(tbReorderHint, ['Ctrl']);
      re_Shift: Result := Format(tbReorderHint, ['Shift']);
      re_Alt: Result :=   Format(tbReorderHint, ['Alt']);
    end;
end;

procedure TfrmMain.HeaderControl1DrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
begin
    var TempRect := Rect;
    var TempRect2 := Rect;

    with HeaderControl1.Canvas do
    begin
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME; // Шрифт
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        SetBkMode(Handle, TRANSPARENT); // Прозрачный фон.
        TempRect.Left := Rect.Left + 4; // Отступ
        TempRect.Top := Rect.Top + 1;

        // Handle style colors manually... because only first section is themed correctly.
        Font.Color := StyleServices.GetStyleFontColor(sfButtonTextNormal);
        Brush.Color := StyleServices.GetStyleColor(scButtonNormal);
        FillRect(Rect);

        DrawText(Handle, Section.Text, -1, TempRect, DT_END_ELLIPSIS); // Название
    end;

    case bFlatToolbar of
        True: Frame3D(HeaderControl1.Canvas, TempRect2, clBtnFace, clBtnShadow, 1);
        False: Frame3D(HeaderControl1.Canvas, TempRect2, clBtnHighlight, clBtnShadow, 1);
    end;
end;

procedure TfrmMain.HeaderControl1SectionResize(HeaderControl: THeaderControl; Section: THeaderSection);
begin
    ConEventList.Invalidate();
end;

procedure TfrmMain.SendStringToEditValue(control: TControl);
begin
    if control = nil then Exit();

    if control is TEdit then frmEditValue.editValue.Text := TEdit(control).Text else
    if control is TComboBox then frmEditValue.editValue.Text := TComboBox(control).Text else
    if control is TListBox then frmEditValue.editValue.Text := TListBox(control).Items[TListBox(control).ItemIndex];


    frmEditValue.Receiver := control; // назначить имя элемента управления на переменную.
    frmEditValue.ShowModal();
end;

procedure TfrmMain.FillEventLabels(const con: TConversation; listToFill: TCustomListControl);
begin
    listToFill.Clear();

    for var LBS := 0 to High(con.Events) do
    begin
        if con.Events[LBS].EventLabel.IsEmpty = False then
            listToFill.AddItem(con.Events[LBS].EventLabel, nil);
    end;
end;

procedure TfrmMain.CollapseAll2Click(Sender: TObject);
begin
    ConvoTree.FullCollapse();
end;

procedure TfrmMain.Comment1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Comment));
end;

procedure TfrmMain.Comment2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Comment));
end;

procedure TfrmMain.ConEventListClick(Sender: TObject);
    var objStr: string;
begin
    pnlEventFilter.Hide();

    SetEventsListScrollbars();

    UnhighlightRelatedEvents();

    if frmEventInsAdd.mp1.Mode = mpPlaying then // if we are playing some speech, stop it.
    begin
       frmEventInsAdd.mp1.Stop();
       frmEventInsAdd.btnPlayAudioFile.Caption := strPlayMP3;
    end;

    if TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]) <> nil then
       CurrentEvent := TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]);

    objStr:= ' EventType = ' + CurrentEvent.ClassName;

    lblSelectedEvent.Caption := 'ItemIndex=' + ConEventList.ItemIndex.ToString + objStr +
    ' Value=' + ConEventList.Items.ValueFromIndex[ConEventList.ItemIndex];

    frmLabelErrors.VerifyLabels(True);

    HighlightRelatedEvents();

    if frmEventInsAdd.Visible = True then
        ConEventListDblClick(Sender);

    ConEventList.Repaint();

    frmEventInsAdd.btnInsertEvent.Enabled := ConEventList.Count > 1;
    frmEventInsAdd.btnNextEvent.Enabled := ConEventList.ItemIndex < ConEventList.Count -1;
    frmEventInsAdd.btnPrevEvent.Enabled := ConEventList.ItemIndex > 0;

    frmEventInsAdd.bCreatingNewEvent := False; // cancel event creation
end;

procedure TfrmMain.ConEventListDblClick(Sender: TObject);
begin
    if ConEventList.ItemIndex <> -1 then
       CurrentEvent:= TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]);

    if CurrentEvent <> nil then
    begin
        case CurrentEvent.EventType of
            ET_Speech:       EditCurrentEvent(TConEventSpeech(CurrentEvent));
            ET_Choice:       EditCurrentEvent(TConEventChoice(CurrentEvent));
            ET_SetFlag:      EditCurrentEvent(TConEventSetFlag(CurrentEvent));
            ET_CheckFlag:    EditCurrentEvent(TConEventCheckFlag(CurrentEvent));
            ET_CheckObject:  EditCurrentEvent(TConEventCheckObject(CurrentEvent));
            ET_TransferObject: EditCurrentEvent(TConEventTransferObject(CurrentEvent));
            ET_MoveCamera:   EditCurrentEvent(TConEventMoveCamera(CurrentEvent));
            ET_Animation:    EditCurrentEvent(TConEventAnimation(CurrentEvent));
            ET_Trade:        EditCurrentEvent(TConEventTrade(CurrentEvent));
            ET_Jump:         EditCurrentEvent(TConEventJump(CurrentEvent));
            ET_Random:       EditCurrentEvent(TConEventRandom(CurrentEvent));
            ET_Trigger:      EditCurrentEvent(TConEventTrigger(CurrentEvent));
            ET_AddGoal:      EditCurrentEvent(TConEventAddGoal(CurrentEvent));
            ET_AddNote:      EditCurrentEvent(TConEventAddNote(CurrentEvent));
            ET_AddSkillPoints: EditCurrentEvent(TConEventAddSkillPoints(CurrentEvent));
            ET_AddCredits:   EditCurrentEvent(TConEventAddCredits(CurrentEvent));
            ET_CheckPersona: EditCurrentEvent(TConEventCheckPersona(CurrentEvent));
            ET_Comment:      EditCurrentEvent(TConEventComment(CurrentEvent));
            ET_End:          EditCurrentEvent(TConEventEnd(CurrentEvent));
        end;
    end;
end;

procedure TfrmMain.ConEventListDragDrop(Sender, Source: TObject; X, Y: Integer);
var
    DragIndex, DropIndex: Integer;
    TempEvent: TConEvent;
begin
    DragIndex := ConEventList.ItemIndex;
    DropIndex := ConEventList.ItemAtPos(Point(X, Y), True);

    if (DragIndex <> -1) and (DropIndex <> -1) then
    begin
        if (DragIndex < Length(CurrentConversation.Events)) and (DropIndex < Length(CurrentConversation.Events)) then
        begin
            TempEvent := CurrentConversation.Events[DragIndex];

            if DragIndex < DropIndex then
            begin
                //Move(CurrentConversation.Events[DragIndex + 1], CurrentConversation.Events[DragIndex], (DropIndex - DragIndex) * SizeOf(TConEvent));
                for var i := DragIndex to DropIndex - 1 do
                  CurrentConversation.Events[i] := CurrentConversation.Events[i + 1];
            end
            else
            begin
                for var i := DragIndex downto DropIndex + 1 do
                  CurrentConversation.Events[i] := CurrentConversation.Events[i - 1];
                //Move(CurrentConversation.Events[DropIndex], CurrentConversation.Events[DropIndex + 1], (DragIndex - DropIndex) * SizeOf(TConEvent));
            end;

            CurrentConversation.Events[DropIndex] := TempEvent;

            bFileModified := True;

            ConEventList.Items.BeginUpdate();
            ConEventList.Items.Move(DragIndex, DropIndex);
            ConEventList.ItemIndex := DropIndex;
            ConEventList.Items.EndUpdate();
        end;
    end;

{    if (DragIndex <> -1) and (DropIndex <> -1) then
    begin
        ConEventList.Items.Move(DragIndex, DropIndex);
        ConEventList.ItemIndex := DropIndex;

        // Move object within CurrentConversation.Events
        if (DragIndex < Length(CurrentConversation.Events)) and (DropIndex < Length(CurrentConversation.Events)) then
        begin
            TempEvent := CurrentConversation.Events[DragIndex];

            CurrentConversation.Events[DragIndex] := CurrentConversation.Events[DropIndex];
            CurrentConversation.Events[DropIndex] := TempEvent;

            ConEventList.Items.Move(DragIndex, DropIndex);
            ConEventList.ItemIndex := DropIndex;
        end;
    end;}

    SetEventIndexes();
end;

procedure TfrmMain.ConEventListDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean); // More options, yes...
begin
    case ReorderModKey of
      re_Ctrl:  Accept := (frmEventInsAdd.Visible = False) and (Source = ConEventList) and (ssCtrl in KeyboardStateToShiftState);
      re_Shift: Accept := (frmEventInsAdd.Visible = False) and (Source = ConEventList) and (ssShift in KeyboardStateToShiftState);
      re_Alt:   Accept := (frmEventInsAdd.Visible = False) and (Source = ConEventList) and (ssAlt in KeyboardStateToShiftState);
    end;
end;

procedure TfrmMain.ConEventListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    with (Control as TListBox).Canvas do
    begin
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;

        Pen.Style := psInsideFrame;
        if bUseCustomGridColor = True then
            Frame3D(TListBox(Control).Canvas, Rect, clrGrid, clrGrid, 1) // разделитель
        else
            Frame3D(TListBox(Control).Canvas, Rect, EventListColors.GridBG, EventListColors.GridColor, 1); // разделитель

        //Frame3D(TListBox(Control).Canvas, Rect, EventListColors.GridBG, EventListColors.GridColor, 1); // разделитель

        //Brush.Style := bsSolid;
        //Brush.Color := clBlack;
        //FillRect(Rect);

        // Turns out, original ConEdit highlights events with non-empty label with green color!
        // But I will implement that feature differently...
        with ConEventList do
        begin
            if Items[Index].Contains(ET_Speech_Caption) then          DrawET_Speech(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Choice_Caption) then          DrawET_Choice(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_SetFlag_Caption) then         DrawET_SetFlag(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_CheckFlag_Caption) then       DrawET_CheckFlag(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckObject_Caption then             DrawET_CheckObject(Control, Index, Rect, State) else
            if Items[Index] = ET_TransferObject_Caption then          DrawET_TransferObject(Control, Index, Rect, State) else
            if Items[Index] = ET_MoveCamera_Caption then              DrawET_MoveCamera(Control, Index, Rect, State) else
            if Items[Index] = ET_Animation_Caption then               DrawET_Animation(Control, Index, Rect, State) else
            if Items[Index] = ET_Trade_Caption then                   DrawET_Trade(Control, Index, Rect, State) else
            if Items[Index] = ET_Jump_Caption then                    DrawET_Jump(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Random_Caption) then          DrawET_Random(Control, Index, Rect, State) else
            if Items[Index] = ET_Trigger_Caption then                 DrawET_Trigger(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddGoal_Caption) then         DrawET_AddGoal(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddNote_Caption) then         DrawET_AddNote(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddSkillPoints_Caption) then  DrawET_AddSkillPoints(Control, Index, Rect, State) else
            if Items[Index] = ET_AddCredits_Caption then              DrawET_AddCredits(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckPersona_Caption then            DrawET_CheckPersona(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Comment_Caption) then         DrawET_Comment(Control, Index, Rect, State) else
            if Items[Index] = ET_End_Caption then                     DrawET_End(Control, Index, Rect, State);
        end;

        if ConEventList.Items.Objects[Index] <> nil then
        begin
            if (ConEventList.Items.Objects[Index] is TConEventSpeech)         and bchkSpeech = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventChoice)         and bchkChoice = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventSetFlag)        and bchkSetFlag = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckFlag)      and bchkCheckFlag = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckObject)    and bchkCheckObject = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTransferObject) and bchkTransferObject = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventMoveCamera)     and bchkMoveCamera = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAnimation)      and bchkAnimation = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTrade)          and bchkTrade = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventJump)           and bchkJump = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventRandom)         and bchkRandom = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTrigger)        and bchkTrigger = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddGoal)        and bchkAddGoal = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddNote)        and bchkAddNote = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddSkillPoints) and bchkAddSkillPoints = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddCredits)     and bchkAddCredits = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckPersona)   and bchkCheckPersona = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventComment)        and bchkComment = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventEnd)            and bchkEnd = True then HighlightSelectedEvent(Control, Index, Rect, State);
        end;

        //HighlightSelectedEvent(Control, Index, Rect, State);
        ConEventList.Color := EventListColors.EventListBG;
    end;
end;

procedure TfrmMain.ConEventListEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
    SetEventIndexes();
    UpdateEventListHeights();
    ConEventList.Repaint();
end;

procedure TfrmMain.ConEventListKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #32) and (CurrentEvent is TConEventSpeech) then // and (frmEventInsAdd.Visible = True) then
    begin
        if frmEventInsAdd.Visible = False then
            ConEventListDblClick(Sender); // Open window

        frmEventInsAdd.btnPlayAudioFile.Click();
    end;
end;

procedure TfrmMain.ConEventListMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
    if ConEventList.Items[Index].Contains(ET_Speech_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio());

    if ConEventList.Items[Index].Contains(ET_Choice_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio());

    if ConEventList.Items[Index].Contains(ET_SetFlag_Caption) = true then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio());

    if ConEventList.Items[Index].Contains(ET_CheckFlag_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio());

    if ConEventList.Items[Index] = ET_CheckObject_Caption then
    begin
        if bchkCheckObject = True then
            Height := Round(CHECK_OBJECT_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_TransferObject_Caption then
    begin
        if bchkTransferObject = True then
            Height := Round(TRANSFER_OBJECT_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_MoveCamera_Caption then
    begin
        if bchkMoveCamera = True then
            Height := Round(MOVE_CAMERA_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_Animation_Caption then
    begin
        if bchkAnimation = True then
            Height := Round(ANIMATION_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_Trade_Caption then
    begin
        if bchkTrade = True then
            Height := Round(TRADE_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio())  // fixed, also not implemented
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_Jump_Caption then
    begin
        if bchkJump = True then
            Height := Round(JUMP_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index].Contains(ET_Random_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio()); // variable

    if ConEventList.Items[Index] = ET_Trigger_Caption then
    begin
        if bchkTrigger = True then
            Height := Round(TRIGGER_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio())  // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    //if ConEventList.Items[Index] = ET_AddGoal_Caption then Height := 75;  // variable
    if ConEventList.Items[Index].Contains(ET_AddGoal_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio()); // variable

    //if ConEventList.Items[Index] = ET_AddNote_Caption then Height := 40;  // variable
    if ConEventList.Items[Index].Contains(ET_AddNote_Caption) = True then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio()); // variable

    //if ConEventList.Items[Index] = ET_AddSkillPoints_Caption then Height := 58;  // variable
    if ConEventList.Items[Index].Contains(ET_AddSkillPoints_Caption) then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio()); // variable

    if ConEventList.Items[Index] = ET_AddCredits_Caption then
    begin
        if bchkAddCredits = True then
            Height := Round(ADD_CREDITS_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio())  // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    if ConEventList.Items[Index] = ET_CheckPersona_Caption then
    begin
        if bchkCheckPersona = True then
            Height := Round(CHECK_PERSONA_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio())  // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;

    //if ConEventList.Items[Index] = ET_Comment_Caption then Height := 40; // variable
    if ConEventList.Items[Index].Contains(ET_Comment_Caption) then
        Height := Round(ConEventList.Items.ValueFromIndex[Index].ToInteger * ConEditPlus.Helpers.GetDPIAsRatio()); // variable

    if ConEventList.Items[Index] = ET_End_Caption then
    begin
        if bchkEnd = True then
            Height := Round(END_HEIGHT * ConEditPlus.Helpers.GetDPIAsRatio()) // fixed
        else
            Height := FILTER_ITEM_HEIGHT;
    end;
end;

procedure TfrmMain.ConEventListMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    var EventJump: TConEventJump;
    var ConvoJump: TConversation;
    var JumpToConvoAreaRect: TRect;

    if (ConEventList.ItemIndex < 0) then
        Exit();

    if ConEventList.Items[ConEventList.ItemIndex] <> ET_Jump_Caption then
        Exit();

    EventJump := TConEventJump(ConEventList.Items.Objects[ConEventList.ItemIndex]);
    ConvoJump := FindConversationObjById(EventJump.conversationId);

    if Assigned(EventJump) = False then
    begin
        ShowMessage('EventJump not assigned');
        Exit();
    end;

    if (EventJump.currentConversationId <> EventJump.conversationId) then
    begin
        JumpToConvoAreaRect:= ConEventList.ItemRect(ConEventList.ItemIndex);

        JumpToConvoAreaRect.Top:= JumpToConvoAreaRect.Top + 20;
        JumpToConvoAreaRect.Bottom:= JumpToConvoAreaRect.Bottom - 5;
        JumpToConvoAreaRect.Left := 5;
        JumpToConvoAreaRect.Width := 135;

        if PtInRect(JumpToConvoAreaRect, Point(X,Y)) and (Button = mbLeft)
        then
        begin
            SelectTreeItemByObject(ConvoTree, ConvoJump);//FindConversationObjById(EventJump.conversationId));

            for var i:= 0 to ConEventList.Count -1 do
            begin
                //var Event:= ConEventList.Items.Objects[i];

                if TConEvent(ConEventList.Items.Objects[i]).EventLabel = EventJump.gotoLabel then
                begin
                    ConEventList.ItemIndex := i;
                    ConEventListClick(self); // select event
                    Break;
                end;
            end;
        end;
    end;
end;

procedure TfrmMain.ConFileParameters1Click(Sender: TObject);
begin
    with conFileParameters do
    begin
        for var i:= 0 to Length(fpMissions) -1 do
            AddLog( 'Used Mission numbers: ' + fpMissions[i].ToString);

            AddLog(#13#10 + 'Used Actors:------------------------');

        for var k:= 0 to fpActors.Count -1 do begin
            AddLog(fpActors.Strings[k] + ' idx = ' + fpActors.IndexOf(fpActors.Strings[k]).ToString);
        end;

            AddLog(#13#10 + 'Used Flags:-------------------------');

        for var j:= 0 to fpFlags.Count -1 do begin
            AddLog(fpFlags.Strings[j] + ' idx = ' + fpFlags.IndexOf(fpFlags.Strings[j]).ToString);
        end;

            AddLog(#13#10 + 'Used Skills:------------------------');

        for var q:= 0 to fpSkills.Count -1 do begin
            AddLog(fpSkills.Strings[q] + ' idx = ' + fpSkills.IndexOf(fpSkills.Strings[q]).ToString);
        end;

            AddLog(#13#10 + 'Used Objects:-----------------------');

        for var w:= 0 to fpObjects.Count -1 do begin
            AddLog(fpObjects.Strings[w] + ' idx = ' + fpObjects.IndexOf(fpObjects.Strings[w]).ToString);
        end;

            AddLog('------------------------------------');

        AddLog('AudioPackage: ' + fpAudioPackage);
        AddLog('Notes: ' + fpNotes);
    end;
end;

procedure TfrmMain.ConversationsListCount1Click(Sender: TObject);
begin
    AddLog('Items in ConversationsList: ' + ConversationsList.Count.ToString);

    for var i:= 0 to ConversationsList.Count -1 do
    begin
        AddLog(ConversationsList.Items[i].conName + ' id: ' + ConversationsList.Items[i].id.ToString);
    end;
end;

procedure TfrmMain.Conversation_CheckLabelsExecute(Sender: TObject);
begin
    frmLabelErrors.lvLabelErrors.Clear();

    for var con in Conversationslist do
        frmLabelErrors.CheckLabelDuplicates(con);

    frmLabelErrors.VerifyLabels();

    if frmLabelErrors.lvLabelErrors.Items.Count > 0 then
        frmLabelErrors.Show() // only show if we have > 0 items!
    else
        MessageDlg(strLabelsValid,  mtInformation, [mbOK], 0);
end;

procedure TfrmMain.Conversation_CutExecute(Sender: TObject);
begin
    if CurrentConversation <> nil then // Copy conversation to clipboard and delete it
    begin
        CopyConversationToClipboard(CurrentConversation);
        DeleteCurrentConversation();
        bFileModified := True;
    end;
end;

procedure TfrmMain.Conversation_CopyExecute(Sender: TObject);
begin
    if CurrentConversation <> nil then
        CopyConversationToClipboard(CurrentConversation);
end;

procedure TfrmMain.Conversation_Create_AIBarkFutz_TemplateExecute(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strAskToAddAIBarkFutzExample), PChar(strQuiestion), MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = ID_YES then
    begin
        var NumSpeechEvents := (Sender as TMenuItem).Tag;
        CreateAIBarksExample(True, NumSpeechEvents);
    end;
end;

procedure TfrmMain.Conversation_Create_AIBark_TemplateExecute(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strAskToAddAIBarksExample), PChar(strQuiestion), MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = ID_YES then
    begin
        var NumSpeechEvents := (Sender as TMenuItem).Tag;
        CreateAIBarksExample(False, NumSpeechEvents);
    end;
end;

procedure TfrmMain.Conversation_PasteExecute(Sender: TObject);
begin
    PasteConversationFromClipboard();
end;

procedure TfrmMain.Conversation_FindExecute(Sender: TObject);
begin
    frmFind.Show();
end;

procedure TfrmMain.Conversation_PropertiesExecute(Sender: TObject);
begin
    if Assigned(CurrentConversation) = false then Exit();

    frmConvoProperties.Caption := strEditConversation;
    frmConvoProperties.EditConversation_FillFields(CurrentConversation);
end;

procedure TfrmMain.Conversation_RenameExecute(Sender: TObject);
begin
    if (ConvoTree.Selected <> nil) and (ConvoTree.Selected.Level = 1) and (ActiveControl = ConvoTree) and (Active = True) then
        ConvoTree.Selected.EditText();
end;

procedure TfrmMain.ConvoTreeChange(Sender: TObject; Node: TTreeNode);
begin
    ConEventList.Enabled := Node.Level = 1;
    Conversation_Properties.Enabled := Node.Level = 1;

    if pnlEventFilter.Visible = True then pnlEventFilter.Hide();

    //if Node.Level >= 1 then
    if Node.Level = 1 then
       CurrentConversation := TConversation(Node.Data)
    else
    begin
        CurrentConversation := nil;
        ConEventList.Clear();
    end;

    if CurrentConversation <> nil then
    begin
        ConEventList.Clear();
        for var F:=0 to Length(CurrentConversation.Events) -1 do
        begin  //
            case CurrentConversation.Events[F].EventType of
                ET_Speech: ConEventList.Items.AddPair(ET_Speech_Caption,
                                                      GetSpeechEventItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_Choice: ConEventList.Items.AddPair(ET_Choice_Caption,
                                                      GetChoiceItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_SetFlag: ConEventList.Items.AddPair(ET_SetFlag_Caption,
                                                       GetSetFlagsItemHeight(CurrentConversation.Events[F]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_CheckFlag: ConEventList.Items.AddPair(ET_CheckFlag_Caption,
                                                         GetCheckFlagsItemHeight(CurrentConversation.Events[F]).ToString,
                                                         CurrentConversation.Events[F]);

                ET_CheckObject: ConEventList.Items.AddObject(ET_CheckObject_Caption, CurrentConversation.Events[F]);
                ET_TransferObject: ConEventList.Items.AddObject(ET_TransferObject_Caption, CurrentConversation.Events[F]);
                ET_MoveCamera: ConEventList.Items.AddObject(ET_MoveCamera_Caption, CurrentConversation.Events[F]);
                ET_Animation: ConEventList.Items.AddObject(ET_Animation_Caption, CurrentConversation.Events[F]);
                ET_Trade: ConEventList.Items.AddObject(ET_Trade_Caption, CurrentConversation.Events[F]);
                ET_Jump: ConEventList.Items.AddObject(ET_Jump_Caption, CurrentConversation.Events[F]);

                ET_Random: ConEventList.Items.AddPair(ET_Random_Caption,
                                                      GetRandomEventItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_Trigger: ConEventList.Items.AddObject(ET_Trigger_Caption, CurrentConversation.Events[F]);

                //ET_AddGoal: ConEventList.Items.AddObject(ET_AddGoal_Caption, CurrentConversation.Events[F]);
                ET_AddGoal: ConEventList.Items.AddPair(ET_AddGoal_Caption,
                                                       GetAddGoalItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_AddNote: ConEventList.Items.AddPair(ET_AddNote_Caption,
                                                       GetAddNoteItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_AddSkillPoints: ConEventList.Items.AddPair(ET_AddSkillPoints_Caption,
                                                              GetAddSkillPtsItemHeight([CurrentConversation.Events[F]]).ToString,
                                                              CurrentConversation.Events[F]);

                ET_AddCredits: ConEventList.Items.AddObject(ET_AddCredits_Caption, CurrentConversation.Events[F]);
                ET_CheckPersona: ConEventList.Items.AddObject(ET_CheckPersona_Caption, CurrentConversation.Events[F]);

                ET_Comment: ConEventList.Items.AddPair(ET_Comment_Caption,
                                                       GetCommentItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_End: ConEventList.Items.AddObject(ET_End_Caption, CurrentConversation.Events[F]);
            end;
        end;

        UpdateEventListHeights();
        UnhighlightRelatedEvents();
        SetEventsListScrollbars();
    end;
end;

procedure TfrmMain.ConvoTreeDblClick(Sender: TObject);
var
    FlagNode: TTreeNode;
    FlagName: string;
    CurrentConvo: TConversation;
    flag: TFlag;
begin
    if bEnableDblClickTreeFlag = False then
        Exit();

    if (ConvoTree.Selected <> nil) and (ConvoTree.Selected.Level = 2) then
    begin
        CurrentConvo := TConversation(ConvoTree.Selected.Parent.Data);

        if CurrentConvo = nil then
        begin
            MessageDlg('Cannot find TConversation object in parent TTreeNode!',  mtError, [mbOK], 0);
            Exit();
        end;

        FlagNode := ConvoTree.Selected;
        FlagName := Copy(FlagNode.Text, 1, Pos(' =', FlagNode.Text) -1); // extract the FlagName first

        if CurrentConvo <> nil then
        begin
            for var i:= 0 to High(CurrentConvo.conDependsOnFlags) do
            begin
                flag := CurrentConvo.conDependsOnFlags[i];

                if flag.flagName = FlagName then
                begin
                    flag.flagValue := not flag.flagValue;
                    FlagNode.Text := flag.flagName + ' = ' + BoolToStr(flag.flagValue, True);

                    if flag.flagValue = True then
                        FlagNode.ImageIndex := 2 else FlagNode.ImageIndex := 3;

                    FlagNode.SelectedIndex := FlagNode.ImageIndex;

                    CurrentConvo.conDependsOnFlags[i] := flag;
                    Break;
                end;
            end;

            bFileModified := True;
        end;
    end;
end;

procedure TfrmMain.ConvoTreeDeletion(Sender: TObject; Node: TTreeNode);
begin
    //AddLog('OnDeletion ' + Node.Text);
    //bFileModified := True;
end;

procedure TfrmMain.ConvoTreeEdited(Sender: TObject; Node: TTreeNode; var S: string); // Check if conversation can be renamed from here (name is valid, etc.)
begin
    var Conversation := TConversation(Node.Data);

    if Assigned(Conversation) then
    begin
        if CanRenameConversation(S) = True then
        begin
            Conversation.conName := S;
            bFileModified := True;
        end
        else
        begin
            MessageBox(Handle, PChar(strCannotRenameConversation), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
            S := Conversation.conName;
        end;
    end;
end;

procedure TfrmMain.ConvoTreeEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
begin
    var Conversation := TConversation(Node.Data);

    if Assigned(Conversation) then
        AllowEdit := True else AllowEdit := False;
end;

procedure TfrmMain.ConvoTreeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_F1 then
    begin
        if ConvoTree.Selected <> nil then
        begin
            if TObject(ConvoTree.Selected.Data) is TConversation then
            begin
                var BuildString := ConEditPlus.Helpers.FormatConversationDetails(TConversation(ConvoTree.Selected.Data));

                MessageBox(Handle, PChar(BuildString),PChar('Information'), MB_OK + MB_TOPMOST);
            end;
        end;
    end;
end;

procedure TfrmMain.ConvoTreeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    var ScreenPos: TPoint;

    // Convert client coordinates to screen coordinates
    ScreenPos := ClientToScreen(Point(X, Y));

    // I don't know why there is exception, so I will spawn the menu manually...
    if Button = mbRight then
        PopupTree.Popup(ScreenPos.X, ScreenPos.Y + 35);
end;

procedure TfrmMain.End1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_End));
end;

procedure TfrmMain.End2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_End));
end;

procedure TfrmMain.Testfactory1Click(Sender: TObject);
var
    Labels: array of string;
begin
    var Temp := ConEditPlus.Templates.Factory.GenerateEnd('TestLabel');
    Temp.Free();

    var Temp1 := ConEditPlus.Templates.Factory.GenerateSpeech('', PLAYER_BINDNAME, 'BobPage', 'You gonna burn');
    Temp1.Free();

    SetLength(Labels, 3);
    Labels[0] := strEventSpeechLabel1;
    Labels[1] := strEventSpeechLabel2;
    Labels[2] := strEventSpeechLabel3;

    var Temp2 := ConEditPlus.Templates.Factory.GenerateRandom('', Labels, True, False, True);
    Temp2.Free();
end;

procedure TfrmMain.DateTimeToDouble1Click(Sender: TObject);
begin
    var testDT := Now();

    ShowMessage(testDT.ToString);
end;

procedure TfrmMain.Conversation_DeleteExecute(Sender: TObject);
begin
    // Don't execute this action if mainForm and ConvoTree are not focused.
    //if Focused = False and ConvoTree.Focused = False then Exit();
//    if (Focused = False) and (ActiveControl <> ConvoTree) then Exit();

    if bAskForConvoDelete = true then
    begin
        if MessageBox(Handle, PChar(strAskDeleteConvoText),
                      PChar(strAskDeleteConvoTitle),
                      MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
            DeleteCurrentConversation();
    end
        else
            DeleteCurrentConversation();
end;

procedure TfrmMain.DeleteCurrentEvent();
begin
    if Assigned(CurrentConversation.Events[ConEventList.ItemIndex]) then
        CurrentConversation.Events[ConEventList.ItemIndex].Free(); // Освобождаем объект

    Delete(CurrentConversation.Events, ConEventList.ItemIndex, 1); // Delete from array
    ConEventList.DeleteSelected(); // also delete from list

    frmMain.bFileModified := True;
end;

procedure TfrmMain.CheckDpiRatioClick(Sender: TObject);
begin
    var TestString: string;

    TestString := Round(25 * ConEditPlus.Helpers.GetDPIAsRatio()).ToString + ' (Rounded)';

    ShowMessage('25 * ' + ConEditPlus.Helpers.GetDPIAsRatio().ToString() + ' = ' + TestString);
end;

procedure TfrmMain.Defaultrecordvalue1Click(Sender: TObject);
begin
    var Test := EventListColors.SpeechBG;

    ShowMessage(ColorToString(Test));
end;

procedure TfrmMain.DeleteCurrentConversation();
begin
    if CurrentConversation = nil then Exit();

    var convoTreeItem := FindConversationInTree(CurrentConversation.conName);
    var OwnerTreeItem := FindConvoOwnerInTree(CurrentConversation.conOwnerName);

    if convoTreeItem <> nil then
    begin
        var convoToDelete:= convoTreeItem.Data;

        ConversationsList.Remove(convoToDelete);
        ConvoTree.Items.Delete(convoTreeItem); // delete from tree
    end;

    if OwnerTreeItem.Count = 0 then
        ConvoTree.Items.Delete(OwnerTreeItem); // No conversations left, delete parent node


//    if CurrentConversation <> nil then
//        ConversationsList.Remove(CurrentConversation); // delete conversation from list

    AddLog(#13#10 + '------------- ConversationsList contents:');
    for var k:= 0 to ConversationsList.Count -1 do begin
        AddLog(ConversationsList.Items[k].conName + ' k = ' + k.ToString);
    end;

    bFileModified := True
end;

procedure TfrmMain.EventListItems1Click(Sender: TObject);
begin
    for var i:= 0 to ConEventList.Count -1 do
        AddLog('ConEventList[' + i.ToString + '] ' + ConEventList.Items[i]);
end;

procedure TfrmMain.Event_BrowseToExecute(Sender: TObject);
begin
    var ConEventObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if ConEventObj is TConEventSpeech then
    begin
        var TempPath := ExtractFilePath(IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventSpeech(ConEventObj).mp3File);
        var TempFile := IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventSpeech(ConEventObj).mp3File;

        if FileExists(TempFile) then
           ShellExecute(0, 'open', 'explorer.exe', PChar('/select,' + TempFile), nil, SW_SHOWNORMAL)
        else
        if DirectoryExists(TempPath) then
            ShellExecute(0, 'open', PChar(TempPath), nil, nil, SW_SHOWNORMAL);
    end;

    if ConEventObj is TConEventChoice then
    begin
        var mp3File: string;

        for var choiceItem in TConEventChoice(ConEventObj).Choices do
        begin
            if choiceItem.mp3 <> '' then
            begin
                mp3File := choiceItem.mp3;
                Break;
            end;
        end;

        var TempPath := ExtractFilePath(IncludeTrailingPathDelimiter(ConFileAudioPath) + mp3File);
//        var TempFile := IncludeTrailingPathDelimiter(ConFileAudioPath) + mp3File;

//        if FileExists(TempFile) then
//            ShellExecute(0, 'open', 'explorer.exe', PChar('/select,' + TempFile), nil, SW_SHOWNORMAL)
//        else
        if DirectoryExists(TempPath) then
            ShellExecute(0, 'open', PChar(TempPath), nil, nil, SW_SHOWNORMAL);
    end;
end;

procedure TfrmMain.Event_CopyExecute(Sender: TObject);
begin
    if CurrentEvent <> nil then
        CopyEventToClipboard(CurrentEvent);
end;

procedure TfrmMain.Event_CopyMp3FileAndPathExecute(Sender: TObject);
begin
    var SpeechObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if SpeechObj is TConEventSpeech then
        Clipboard.AsText := IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventSpeech(SpeechObj).mp3File;
end;

procedure TfrmMain.Event_CopyMp3FileExecute(Sender: TObject);
begin
    var SpeechObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if SpeechObj is TConEventSpeech then
        Clipboard.AsText := ExtractFileName(TConEventSpeech(SpeechObj).mp3File);
end;

procedure TfrmMain.Event_CopyMp3FilePathExecute(Sender: TObject);
begin
    var SpeechObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if SpeechObj is TConEventSpeech then
    begin
        var TempPath := ExtractFilePath(IncludeTrailingPathDelimiter(ConFileAudioPath) + TConEventSpeech(SpeechObj).mp3File);
        Clipboard.AsText := TempPath;
    end;
end;

procedure TfrmMain.Event_CopySpeechTextExecute(Sender: TObject);
begin
    var SpeechObj := ConEventList.Items.Objects[ConEventList.ItemIndex];

    if SpeechObj is TConEventSpeech then
        Clipboard.AsText := TConEventSpeech(SpeechObj).TextLine;
end;

procedure TfrmMain.Event_CutExecute(Sender: TObject);
begin
    if CurrentEvent <> nil then
    begin
        CopyEventToClipboard(CurrentEvent);
        DeleteCurrentEvent();

        bFileModified := True;
    end;
end;

procedure TfrmMain.Event_DeleteExecute(Sender: TObject);
begin
    // Don't execute this action if mainForm and EventList are not focused.
    //if Focused = False and ConEventList.Focused = False then Exit();
    //if (Focused = False) and (ActiveControl <> ConEventList) then Exit();


    if bAskForEventDelete = true then
    begin
        if MessageDlg(strAskDeleteEventText, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            DeleteCurrentEvent();
    end else
        DeleteCurrentEvent();

    SetEventIndexes();
end;

procedure TfrmMain.Event_DuplicateExecute(Sender: TObject);
var
    EventToDuplicate: TConEvent;
    NewEvent: TConEvent;
begin
    var ItemIdx := ConEventList.ItemIndex;
    if ItemIdx = -1 then Exit();

    EventToDuplicate := TConEvent(ConEventList.Items.Objects[ItemIdx]);

    case EventToDuplicate.EventType of
        ET_Speech:        NewEvent := TConEventSpeech.Create();
        ET_Choice:        NewEvent := TConEventChoice.Create();
        ET_SetFlag:       NewEvent := TConEventSetFlag.Create();
        ET_CheckFlag:     NewEvent := TConEventCheckFlag.Create();
        ET_CheckObject:   NewEvent := TConEventCheckObject.Create();
        ET_TransferObject:NewEvent := TConEventTransferObject.Create();
        ET_MoveCamera:    NewEvent := TConEventMoveCamera.Create();
        ET_Animation:     NewEvent := TConEventAnimation.Create();
        ET_Trade:         NewEvent := TConEventTrade.Create();
        ET_Jump:          NewEvent := TConEventJump.Create();
        ET_Random:        NewEvent := TConEventRandom.Create();
        ET_Trigger:       NewEvent := TConEventTrigger.Create();
        ET_AddGoal:       NewEvent := TConEventAddGoal.Create();
        ET_AddNote:       NewEvent := TConEventAddNote.Create();
        ET_AddSkillPoints:NewEvent := TConEventAddSkillPoints.Create();
        ET_AddCredits:    NewEvent := TConEventAddCredits.Create();
        ET_CheckPersona:  NewEvent := TConEventCheckPersona.Create();
        ET_Comment:       NewEvent := TConEventComment.Create();
        ET_End:           NewEvent := TConEventEnd.Create();
    end;

    //if (EventToDuplicate is TConEvent) and (NewEvent is TConEvent) then
    //    CopyEventFields(TConEvent(EventToDuplicate), TConEvent(NewEvent));

    if (EventToDuplicate is TConEvent) and (NewEvent is TConEvent) then
        CopyEventFields(TConEvent(EventToDuplicate), TConEvent(NewEvent));

    if EventToDuplicate is TConEventChoice then
       CopyChoiceItems(TConEventChoice(EventToDuplicate), TConEventChoice(NewEvent));

    NewEvent.EventLabel := ''; // clear EventLabel to avoid duplicates
    NewEvent.EventIdx := -1; // Index will be set later

    Insert(NewEvent, CurrentConversation.Events, ItemIdx);

    SetEventIndexes();

    ConvoTreeChange(Self, ConvoTree.Selected); // todo: remove this and update only EventList.
    ConEventList.ItemIndex := ItemIdx;

    bFileModified := True;
end;

procedure TfrmMain.Event_PasteExecute(Sender: TObject);
begin
    PasteEventFromClipboard();

    bFileModified := True;
end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
    Close();
end;

procedure TfrmMain.ExpandTreeViewToLevel(TreeView: TTreeView; Level: Integer);
var
    Node: TTreeNode;
begin
    TreeView.Items.BeginUpdate();
    try
        Node := TreeView.Items.GetFirstNode;
        while Node <> nil do
        begin
            if Node.Level < Level then
                Node.Expand(False);

            Node := Node.GetNext();
        end;
    finally
        TreeView.Items.EndUpdate();
    end;
end;

procedure TfrmMain.ExpandTreeWithoutFlagsClick(Sender: TObject);
begin
    ExpandTreeViewToLevel(ConvoTree, 1);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    SaveSettings();
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if {(currentConFile <> '') and} (bFileModified = true) then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel: // Cancel, do not close the program
            begin
                CanClose := False;
            end;

          mrYes: // Save the file
            begin
                if frmLabelErrors.Visible = True then frmLabelErrors.Close(); // Can save the file, but...
                frmLabelErrors.VerifyLabels(False);

                if frmLabelErrors.lvLabelErrors.Items.Count > 0 then
                begin
                    case frmLabelErrors.ShowModal() of
                        mrCancel:
                        begin
                            CanClose := False;
                            Exit();
                        end;
                    end;
                end;

                FileSaveExecute(self);
                CanClose := True;
            end;

          mrNo:
            begin
                if (TreeBuildTask <> nil) and (TreeBuildTask.Status = TTaskStatus.Running) then
                    TreeBuildTask.Cancel(); // stop building tree

                if (AutoSaveTask <> nil) and (AutoSaveTask.Status = TTaskStatus.Running) then
                    AutoSaveTask.Cancel();  // stop autosave (can lead to incomplete file, maybe wait?)

                CanClose := True;
            end;
        end;
    end;

    // This one called first. If CanClose := False, FormClose will not be called, also cannot close the form.
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    ResetEventFilter();
    EventListColors := ConEditPlus.Colors.ShadesOfGrayTEventsColors; //ConEditPlus.Colors.DefaultTEventsColors; // set record defaults
    //EventListColors := ConEditPlus.Colors.DefaultTEventsColors_Dark;

    CF_ConEditPlus := RegisterClipboardFormat('CF_ConEditPlus'); // register new clipboard format

    DragAcceptFiles(Handle, True);

    SysScrollBarWidth := GetSystemMetrics(SM_CXVSCROLL);

    Application.Title := strAppTitle;
    frmMain.Caption := Application.Title;

    LoadSettings();
    CreateObjectLists();

    ToggleMenusPanels(False);

    tbNewConversationFile.Hint := tbNewConversationFileHint;
    tbOpenFile.Hint := tbOpenFileHint;
    tbSaveFile.Hint := tbSaveFileHint;
    tbCloseFile.Hint := tbCloseFileHint;
    tbPrint.Hint := tbPrintHint;

    tbSearch.Hint := tbSearchHint;
    tbVerifyLabels.Hint := tbVerifyLabelsHint;
    tbProperties.Hint := tbPropertiesHint;
    tbGenAudio.Hint := tbGenAudioHint;
    tbGenerateAudioDirs.Hint := tbGenerateAudioDirsHint;
    tbSettings.Hint := tbSettingsHint;
    tbStickyWindow.Hint := tbStickyWindowHint;
    btnViewLog.hint := tbShowLogHint;

    if ParamStr(1).IsEmpty = False then // open file from commandline
        ProcessCommandline(ParamStr(1));

    Screen.HintFont.Name := 'Verdana';

    pnlTreeSearch.Color := clBtnFace;
    pnlTreeSearch.FrameColor := clBtnFace;
    pnlEventFilter.Color := clBtnFace;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
    DragAcceptFiles(Handle, False);

    ConversationsList.Free(); // Освобождаем список, что также освободит TConversation элементы
    conFileParameters.Free(); // Освобождаем заголовок, если он был создан
end;

procedure TfrmMain.CreateObjectLists();
begin
    // create objects to store conversation data
    ConversationsList := TObjectList<TConversation>.Create(True); // Create conversations list // True = ownsObjects

    conFileParameters := TConFileParameters.Create(); // Create header
    listPawnsActors := conFileParameters.fpActors; // Assign
    listSkills := conFileParameters.fpSkills;
    listObjects := conFileParameters.fpObjects;
    listFlags := conFileParameters.fpFlags;
end;

procedure TfrmMain.ToggleMenusPanels(bVisible: Boolean);
begin
    if bVisible = True then
    begin
        pnlEventList.Show();
        Splitter1.Show();
        pnlConvoTree.Show();
    end;

    if bVisible = False then
    begin
        pnlEventList.Hide();
        pnlConvoTree.Hide();
        Splitter1.Hide();

        StatusBar.Panels[0].Text := strNoFileLoaded;
        StatusBar.Panels[1].Text := '';
    end;

    TablesMenu.Visible    := bVisible;

    Close1.Visible        := bVisible;
    Save1.Visible         := bVisible;
    SaveAs1.Visible       := bVisible;
    FileSave.Enabled      := bVisible;
    FileClose.Enabled     := bVisible;

    ConvoProperties.Visible := bVisible;

    tbPrint.Enabled       := bVisible;
    tbSearch.Enabled      := bVisible;
    tbVerifyLabels.Enabled:= bVisible;

    Conversation_Find.Enabled       := bVisible;
    Conversation_Properties.Enabled := False; //bVisible;
    FileGenerateAudioNames.Enabled  := bVisible;
    tbGenerateAudioDirs.Enabled     := bVisible;
    btnReorder.Enabled              := bVisible;

    lblQSearch.Enabled   := bVisible;
    edtSearchBox.Enabled := bVisible;
    btnStartSearch.Enabled := bVisible;
end;

procedure TfrmMain.tbViewConeventJumpClick(Sender: TObject);
begin
    frmFindRefs.Show();
    frmFindRefs.ListConEventJump();
end;

procedure TfrmMain.CreateTestFile1Click(Sender: TObject);
begin
    SaveConFile('C:\Temp\First26.con');
end;

procedure TfrmMain.CurrentConversationEvents1Click(Sender: TObject);
begin
    for var i:= 0 to High(CurrentConversation.Events) do
        AddLog('Event[' + i.ToString + '] ' + CurrentConversation.Events[i].ClassName);
end;

procedure TfrmMain.mnuLunaThemeClick(Sender: TObject);
begin
    ApplyStyle('Luna');
end;

procedure TfrmMain.FileCloseExecute(Sender: TObject);
begin
    if {(currentConFile <> '') and} (bFileModified = true) then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel: // Cancel, just close the dialog and exit
            begin
                Exit();
            end;
          mrYes: // Save the file
            begin
                FileSaveExecute(self);
            end;
        end;
    end;

    CreateConFile(False);
    ToggleMenusPanels(False);

    if frmEventInsAdd.Visible = True then frmEventInsAdd.Close();
    if frmFindRefs.Visible = True then
    begin
        frmFindRefs.lvRefs.Clear();
        frmFindRefs.Close();
    end;
end;

procedure TfrmMain.FileExportExecute(Sender: TObject);
begin
    ExportConversationAsText('C:\Temp\1.txt');
end;

procedure TfrmMain.FileGenerateAudioNamesExecute(Sender: TObject);
begin
    GenerateAudioFileNames();
    ConEventList.Invalidate();
end;

procedure TfrmMain.FileNewExecute(Sender: TObject);
begin
    if {(currentConFile <> '') and} (bFileModified = true) then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel: // Cancel, just close the dialog and exit
            begin
                Exit();
            end;
          mrYes: // Save the file
            begin
                FileSaveExecute(self);
            end;
        end;
    end;

    ToggleMenusPanels(True);
    CreateConFile(True);

    if frmEventInsAdd.Visible = True then frmEventInsAdd.Close();

    if frmFindRefs.Visible = True then
    begin
        frmFindRefs.lvRefs.Clear();
        frmFindRefs.Close();
    end;
end;

procedure TfrmMain.FileOpenDialogTypeChange(Sender: TObject);
begin
    OpenFileFilterIndex := FileOpenDialog.FileTypeIndex;
end;

procedure TfrmMain.FileOpenExecute(Sender: TObject);
begin
    if {(currentConFile <> '') and} (bFileModified = true) then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel: // Cancel, just close the dialog and exit
            begin
                Exit();
            end;
          mrYes: // Save the file
            begin
                FileSaveExecute(self);
            end;
        end;
    end;

    FileOpenDialog.FileTypeIndex := OpenFileFilterIndex; // restore filter index

    if FileOpenDialog.Execute() = true then
    begin
        ClearForNewFile(); // free memory before loading new file

        OpenFileFilterIndex := FileOpenDialog.FileTypeIndex; // save filter index
        currentConFile := FileOpenDialog.FileName;  // Assign filename to global variable

        if UpperCase(ExtractFileExt(currentConFile)) = '.XML' then
        begin
            LoadConXMLFile(currentConFile);
            BuildConvoTree();
        end else
        if UpperCase(ExtractFileExt(currentConFile)) = '.CON' then
        begin
            LoadConFile(currentConFile);
            BuildConvoTree();
        end else
        begin
            MessageDlg(strSelectConXML,  mtError, [mbOK], 0);
            Exit();
        end;

        StatusBar.Panels[0].Text := '';
        StatusBar.Panels[1].Text := currentConFile; // filename in StatusBar
        AddRecentFile(currentConFile);  // Add to recent
        ToggleMenusPanels(True);

        Caption := strAppTitle;
    end;
end;

procedure TfrmMain.FilePropertiesExecute(Sender: TObject);
begin
    frmConvoFileProperties.LoadAfterCreation();
    frmConvoFileProperties.ShowModal();
end;

procedure TfrmMain.FileSaveAsExecute(Sender: TObject);
begin
    if frmLabelErrors.Visible = True then frmLabelErrors.Close(); // cannot make visible window modal, so close it first.

    frmLabelErrors.VerifyLabels(False);

    if frmLabelErrors.lvLabelErrors.Items.Count > 0 then
    begin
        case frmLabelErrors.ShowModal() of
            mrCancel: Exit();
            mrOk:;
        end;
    end;

    var savefileName: string;

    FileSaveDialog.FileTypeIndex := SaveFileFilterIndex;

    if FileSaveDialog.Execute() = true then
    begin
        SaveFileFilterIndex := FileSaveDialog.FileTypeIndex;

        if FileSaveDialog.FileTypeIndex = 1 then
        begin
            savefileName := FileSaveDialog.FileName;

            if ExtractFileExt(savefileName) = '' then
                savefileName := savefileName + '.xml';

            try
                StatusBar.Panels[1].Text := strSavingFile + savefileName;
                BuildConXMLFile(savefileName);
                StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ': ' + strSavedFile + savefileName;

                bFileModified := False;
            except
                StatusBar.Panels[1].Text := strSaveErrorStatus + savefileName;
                raise Exception.Create(Format(strSaveError, [SysErrorMessage(GetLastError), savefileName]));
            end;

            currentConFile := savefileName;
        end;

        if FileSaveDialog.FileTypeIndex = 2 then
        begin
            savefileName := FileSaveDialog.FileName;

            if ExtractFileExt(savefileName) = '' then
                savefileName := savefileName + '.con';

            try
                StatusBar.Panels[1].Text := strSavingFile + savefileName;
                SaveConFile(savefileName);
                StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ': ' + strSavedFile + savefileName;

                bFileModified := False;
            except
                StatusBar.Panels[1].Text := strSaveErrorStatus + savefileName;
                raise Exception.Create(Format(strSaveError, [SysErrorMessage(GetLastError), savefileName]));
            end;

            currentConFile := savefileName;
        end;
    end;
end;

procedure TfrmMain.FileSaveExecute(Sender: TObject);
begin
    if frmLabelErrors.Visible = True then frmLabelErrors.Close();  // cannot make visible window modal, so close it first.

    frmLabelErrors.VerifyLabels(False);

    if frmLabelErrors.lvLabelErrors.Items.Count > 0 then
    begin
        case frmLabelErrors.ShowModal() of
            mrCancel: Exit();
            mrOk:;
        end;
    end;

    if currentConFile <> '' then
    begin
        if LowerCase(ExtractFileExt(currentConFile)) = '.xml' then
        begin
            try
                StatusBar.Panels[1].Text := strSavingFile + currentConFile;
                BuildConXMLFile(currentConFile);
                StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ': ' + strSavedFile + currentConFile;

                bFileModified := False;
            except
                StatusBar.Panels[1].Text := strSaveErrorStatus + currentConFile;
                raise Exception.Create(Format(strSaveError, [SysErrorMessage(GetLastError), currentConFile]));
            end;
        end;

        if LowerCase(ExtractFileExt(currentConFile)) = '.con' then
        begin
            try
                StatusBar.Panels[1].Text := strSavingFile + currentConFile;
                SaveConFile(currentConFile);
                StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ': ' + strSavedFile + currentConFile;

                bFileModified := False;
            except
                StatusBar.Panels[1].Text := strSaveErrorStatus + currentConFile;
                raise Exception.Create(Format(strSaveError, [SysErrorMessage(GetLastError), currentConFile]));
            end;
        end;
    end
    else
    FileSaveAsExecute(FileSaveAs);
end;

procedure TfrmMain.Flags1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := TM_Flags;
    frmTableEdit.lstTableContents.Items := frmMain.listFlags;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
    UpdateEventListHeights();
//    ConEventList.Invalidate();
//    ConEventList.Refresh();
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    FirstTimeLaunch();
    StatusBar.Panels[0].Width := ConvoTree.Width;
end;

procedure TfrmMain.Setfilter1Click(Sender: TObject);
begin
    LoadFilters();
    pnlEventFilter.Show();
end;

procedure TfrmMain.Setflag1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_SetFlag));
end;

procedure TfrmMain.Setflag2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_SetFlag));
end;

procedure TfrmMain.Speech1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Speech));
end;

procedure TfrmMain.Speech2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Speech));
end;

procedure TfrmMain.SpeechGeneratortest1Click(Sender: TObject);
begin
    frmConversationPlayer.Show();
end;

procedure TfrmMain.Splitter1CanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
    if NewSize < CEP_MIN_CONVO_TREE_PANEL_WIDTH then Accept := False;
    if (NewSize > frmMain.ClientWidth - CEP_MIN_CONVO_TREE_PANEL_WIDTH) then Accept := False;
end;

procedure TfrmMain.Splitter1Moved(Sender: TObject);
begin
    ConEventList.Invalidate();

    StatusBar.Panels[0].Width := ConvoTree.Width;
end;

procedure TfrmMain.mnuSystemThemeClick(Sender: TObject);
begin
    ApplyStyle('Windows');
end;

procedure TfrmMain.mnuStatusbarClick(Sender: TObject);
begin
    bShowStatusBar := mnuStatusbar.Checked;
    StatusBar.Visible := mnuStatusbar.Checked;
end;

procedure TfrmMain.BuySellTrade1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Trade));
end;

procedure TfrmMain.BuySellTrade2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Trade));
end;

function TfrmMain.CanRenameConversation(convoName: string): Boolean;
begin
    if ConEditPlus.Helpers.ValidateFName(convoName) = False then
    begin
        Result := False;
        Exit;
    end;

    for var Con in Conversationslist do
    begin
        if LowerCase(Con.conName) = LowerCase(convoName) then
        begin
            Result := False;
            Exit;
        end;
    end;

    Result := True;
end;

procedure TfrmMain.Checkflag1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_CheckFlag));
end;

procedure TfrmMain.Checkflag2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_CheckFlag));
end;

function TfrmMain.CheckLabelExistInConversation(labelName: string): Boolean; // Returns true if event with such label already exists
begin
    if CurrentConversation = nil then Exit(False);

    for var event in CurrentConversation.Events do
    begin
        if LowerCase(event.EventLabel) = LowerCase(labelName) then
        begin
            Exit(True);
        end;
    end;

    Result := False;
end;

procedure TfrmMain.CheckObject1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_CheckObject));
end;

procedure TfrmMain.CheckObject2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_CheckObject));
end;

procedure TfrmMain.CheckPersona1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_CheckPersona));
end;

procedure TfrmMain.CheckPersona2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_CheckPersona));
end;

procedure TfrmMain.Choice1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Choice));
end;

procedure TfrmMain.Choice2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Choice));
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
    frmAbout.ShowModal();
end;

procedure TfrmMain.ActorsPawns1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := TM_ActorsPawns;
    frmTableEdit.lstTableContents.Items := frmMain.listPawnsActors;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.Add3Click(Sender: TObject);
begin
    frmConvoProperties.ShowModal();
end;

procedure TfrmMain.AddCompleteGoal1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_AddGoal));
end;

procedure TfrmMain.AddCompleteGoal2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_AddGoal));
end;

procedure TfrmMain.AddConversationExecute(Sender: TObject);
begin
    with frmConvoProperties do
    begin
        EditMode := em_Create;
        editConvoCreatedOn.Text := conXMLDateTime();
        editConvoCreatedBy.Text := ConversationUserName;

        editConvoLastModifiedOn.Text := conXMLDateTime();
        editConvoLastModifiedBy.Text := ConversationUserName;

        cmbConvoOwner.Clear();
        cmbConvoOwner.Items.Assign(listPawnsActors);

        if ConvoTree.Selected <> nil then
        begin
            var ConvoOwner: string;

            if ConvoTree.Selected.Level = 0 then // if selected tree item is conversation owner, use it
            begin
                ConvoOwner := ConvoTree.Selected.Text;
                cmbConvoOwner.ItemIndex := cmbConvoOwner.Items.IndexOf(ConvoOwner);
            end
            else if ConvoTree.Selected.Level = 1 then
            begin
                ConvoOwner := ConvoTree.Selected.Parent.Text; // if selected tree item is conversation name, try to get conversation owner
                cmbConvoOwner.ItemIndex := cmbConvoOwner.Items.IndexOf(ConvoOwner);
            end
            else if ConvoTree.Selected.Level = 2 then
            begin
                ConvoOwner := ConvoTree.Selected.Parent.Parent.Text; // if selected tree item is flag, try to get conversation owner
                cmbConvoOwner.ItemIndex := cmbConvoOwner.Items.IndexOf(ConvoOwner);
            end;
        end;

        ClearFields();
        Caption := strAddNewConversation;
        ShowModal();
    end;
end;

procedure TfrmMain.AddCredits1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_AddCredits));
end;

procedure TfrmMain.AddCredits2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_AddCredits));
end;

procedure TfrmMain.AddEvent(TargetPage: Integer); // Add event to end
begin
    frmEventInsAdd.cmbEventType.Enabled := True;
    frmEventInsAdd.editEventLabel.Clear();

    case TargetPage of
    0: // speech
        begin
            // Speaker
            frmEventInsAdd.cmbSpeakingFrom.Clear();
            frmEventInsAdd.cmbSpeakingFrom.Items.Assign(listPawnsActors);

            // Speaking To
            frmEventInsAdd.cmbSpeakingTo.Clear();
            frmEventInsAdd.cmbSpeakingTo.Items.Assign(listPawnsActors);

            frmEventInsAdd.memoSpeech.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        1: // Choice
        begin
            frmEventInsAdd.lvChoiceList.Clear();
            frmEventInsAdd.mmoChoiceText.Clear();
            frmEventInsAdd.lvChoiceFlagList.Clear();
            frmEventInsAdd.cbbChoiceJumpToLabel.Clear();

            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cbbChoiceJumpToLabel);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        2: // SetFlags
        begin
            frmEventInsAdd.lvSetFlags.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        3: // CheckFlags
        begin
            frmEventInsAdd.lvCheckFlags.Clear();
            frmEventInsAdd.cmbChkFlgJumpToLabel.Clear();

            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cmbChkFlgJumpToLabel);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        4: // CheckObject
        begin
            frmEventInsAdd.cmbObjectToCheck.Clear();
            frmEventInsAdd.cmbObjectToCheck.Items.Assign(listObjects);

            frmEventInsAdd.cmbObjNotFoundJumpTo.Clear();
            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cmbObjNotFoundJumpTo);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        5: // TransferObject
        begin
            frmEventInsAdd.cmbObjectToTransfer.Clear();
            frmEventInsAdd.cmbObjectToTransfer.Items.Assign(listObjects);

            frmEventInsAdd.seAmountToTransfer.Value := 1;

            frmEventInsAdd.cmbTransferObjectTo.Clear();
            frmEventInsAdd.cmbTransferObjectTo.Items.Assign(listPawnsActors);

            frmEventInsAdd.cmbTransferObjectFrom.Clear();
            frmEventInsAdd.cmbTransferObjectFrom.Items.Assign(listPawnsActors);

            frmEventInsAdd.cmbTransferObjectFailLabel.Clear();
            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cmbTransferObjectFailLabel);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        6: // MoveCamera
        begin
            frmEventInsAdd.rbPredefinedCameraPos.Checked := True;
            frmEventInsAdd.rbPredefinedCameraPosClick(self);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        7: // PlayAnimation
        begin
            frmEventInsAdd.cmbPawnToAnimate.Clear();
            frmEventInsAdd.cmbPawnToAnimate.Items.Assign(listPawnsActors);

            frmEventInsAdd.rbPlayAnimOnce.Checked := True;
            frmEventInsAdd.rbPlayAnimOnceClick(self);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        8: // BuySellTrade -- skip
        begin
            //
        end;
        9: // Jump
        begin
            frmEventInsAdd.cboJumpConv.Clear();
            for var co := 0 to ConversationsList.Count -1 do
                frmEventInsAdd.cboJumpConv.Items.Add(ConversationsList.Items[co].conName);

            frmEventInsAdd.cboJumpLabel.Clear();
            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cboJumpLabel);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        10:// Random
        begin
            frmEventInsAdd.lstRandomLabels.Clear();

            frmEventInsAdd.cmbEventRandomLabels.Clear();
            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cmbEventRandomLabels);

            frmEventInsAdd.chkCycleEvents.Checked := False;
            frmEventInsAdd.chkCycleOnce.Checked := False;
            frmEventInsAdd.chkRandomAfterCycle.Checked := False;

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        11:// Trigger
        begin
            frmEventInsAdd.editTriggerTag.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        12://AddGoal
        begin
            frmEventInsAdd.editGoalName.Clear();
            frmEventInsAdd.memoGoalText.Clear();

            frmEventInsAdd.rbAddGoal.Checked := True;
            frmEventInsAdd.chkPrimaryGoal.Checked := False;

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        13:// AddNote
        begin
            frmEventInsAdd.memoNoteText.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        14:// AddSkillPoints
        begin
            frmEventInsAdd.editSkillPointsAmount.Value := 0;
            frmEventInsAdd.memoSkillPointMessage.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        15:// AddCredits
        begin
            frmEventInsAdd.seAddCredits.Value := 0;

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        16:// CheckPersona
        begin
            frmEventInsAdd.rbCreditsCheck.Checked := True;

            frmEventInsAdd.cmbCheckCondition.ItemIndex := 0;

            frmEventInsAdd.editConditionValue.Value := 0;

            FillEventLabels(frmMain.CurrentConversation, frmEventInsAdd.cmbCheckLabelJump);

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        17:// Comment
        begin
            frmEventInsAdd.memoCommentText.Clear();

            frmEventInsAdd.bCreatingNewEvent := True;
        end;
        18:// End
        begin
            frmEventInsAdd.bCreatingNewEvent := True;
        end;
    end;

    if (frmEventInsAdd.Visible = False) then
        frmEventInsAdd.Show();

    frmEventInsAdd.cmbEventType.ItemIndex := TargetPage;
    frmEventInsAdd.EventsPages.TabIndex := TargetPage;
    frmEventInsAdd.cmbEventTypeChange(Self);

    frmEventInsAdd.bInsertEvent := False;
end;

procedure TfrmMain.InsertEvent(TargetPage: Integer); // Insert event at current position (in the event list)
begin
    AddEvent(TargetPage);

    frmEventInsAdd.bInsertEvent := True;
end;

procedure TfrmMain.SetMemoFont(FontSize: Integer;  FontName: string);
begin
    with frmEventInsAdd do
    begin
        memoSpeech.Font.Name := FontName;
        memoSpeech.Font.Size := FontSize;

        memoGoalText.Font.Name := FontName;
        memoGoalText.Font.Size := FontSize;

        memoNoteText.Font.Name := FontName;
        memoNoteText.Font.Size := FontSize;

        memoSkillPointMessage.Font.Name := FontName;
        memoSkillPointMessage.Font.Size := FontSize;

        mmoChoiceText.Font.Name := FontName;
        mmoChoiceText.Font.Size := FontSize;
    end;

    frmConvoProperties.memoConversationNotes.Font.Name := FontName;
    frmConvoProperties.memoConversationNotes.Font.Size := FontSize;
end;

procedure TfrmMain.ShowOptionsExecute(Sender: TObject);
begin
    frmSettings.shpUserName.Visible := False;
    frmSettings.shpOriginalStyle.Visible := False;

    frmSettings.ShowModal();
end;

procedure TfrmMain.mnuShowAudioFiles1Click(Sender: TObject);
begin
    bShowAudioFiles := mnuShowAudioFiles1.Checked;
    ConEventList.Invalidate();
end;

procedure TfrmMain.Skills1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := TM_Skills;
    frmTableEdit.lstTableContents.Items := frmMain.listSkills;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.ToggleEventIdx();
begin
    bDrawEventIdx := chkEventIdx.Checked;

    case chkEventIdx.Checked of
        True: HeaderControl1.Sections[0].Text := 'idx/Label';
        False: HeaderControl1.Sections[0].Text := 'Label';
    end;

    ConEventList.Invalidate();
end;

procedure TfrmMain.ToggleLV_FlagValue(lstv: TListView);
begin
    if lstv.Selected <> nil then
    begin
       if lstv.Items[lstv.ItemIndex].SubItems[0] = 'True' then
         lstv.Items[lstv.ItemIndex].SubItems[0] := 'False'
         else
       if lstv.Items[lstv.ItemIndex].SubItems[0] = 'False' then
         lstv.Items[lstv.ItemIndex].SubItems[0] := 'True';
    end;
end;

procedure TfrmMain.EditCurrentEvent(EventToEdit: TConEvent);
begin
    if (EventToEdit is TConEventSpeech) then
    begin
        frmEventInsAdd.FillSpeech(TConEventSpeech(EventToEdit));
    end
    else
    if (EventToEdit is TConEventChoice) then
    begin
        frmEventInsAdd.FillChoice(TConEventChoice(EventToEdit));
    end
    else
    if (EventToEdit is TConEventSetFlag) then
    begin
        frmEventInsAdd.FillSetFlags(TConEventSetFlag(EventToEdit));
    end
    else
    if (EventToEdit is TConEventCheckFlag) then
    begin
        frmEventInsAdd.FillCheckFlag(TConEventCheckFlag(EventToEdit));
    end
    else
    if (EventToEdit is TConEventCheckObject) then
    begin
        frmEventInsAdd.FillCheckObject(TConEventCheckObject(EventToEdit));
    end
    else
    if (EventToEdit is TConEventTransferObject) then
    begin
        frmEventInsAdd.FillTransferObject(TConEventTransferObject(EventToEdit));
    end
    else
    if (EventToEdit is TConEventMoveCamera) then
    begin
        frmEventInsAdd.FillMoveCamera(TConEventMoveCamera(EventToEdit));
    end
    else
    if (EventToEdit is TConEventAnimation) then
    begin
        frmEventInsAdd.FillPlayAnim(TConEventAnimation(EventToEdit));
    end
    else     // Trade has been skipped
    if (EventToEdit is TConEventJump) then
    begin
        frmEventInsAdd.FillJump(TConEventJump(EventToEdit));
    end
    else
    if (EventToEdit is TConEventRandom) then
    begin
        frmEventInsAdd.FillRandom(TConEventRandom(EventToEdit));
    end
    else
    if (EventToEdit is TConEventTrigger) then
    begin
        frmEventInsAdd.FillTrigger(TConEventTrigger(EventToEdit));
    end
    else
    if (EventToEdit is TConEventAddGoal) then
    begin
        frmEventInsAdd.FillGoal(TConEventAddGoal(EventToEdit));
    end
    else
    if (EventToEdit is TConEventAddNote) then
    begin
        frmEventInsAdd.FillNote(TConEventAddNote(EventToEdit));
    end
    else
    if (EventToEdit is TConEventAddSkillPoints) then
    begin
        frmEventInsAdd.FillSkillPoints(TConEventAddSkillPoints(EventToEdit));
    end
    else
    if (EventToEdit is TConEventAddCredits) then
    begin
        frmEventInsAdd.FillCredits(TConEventAddCredits(EventToEdit));
    end
    else
    if (EventToEdit is TConEventCheckPersona) then
    begin
        frmEventInsAdd.FillCheckPersona(TConEventCheckPersona(EventToEdit));
    end
    else
    if (EventToEdit is TConEventComment) then
    begin
        frmEventInsAdd.FillComment(TConEventComment(EventToEdit));
    end
    else
    if (EventToEdit is TConEventEnd) then
    begin
        frmEventInsAdd.FillEnd(TConEventEnd(EventToEdit));
    end;


    if frmEventInsAdd.Visible = false then
    begin
        frmEventInsAdd.cmbEventType.Enabled := False;
        frmEventInsAdd.Show();
    end;
end;

procedure TfrmMain.edtConvoTreeQSearchChange(Sender: TObject);
begin
    lbTreeSearchResults.Clear();

    for var Node in ConvoTree.Items do
    begin
        if Assigned(Node) and Assigned(Node.Owner) and Assigned(Node.Owner.Owner) then
        begin
            if chkTreeSearchExactMatch.Checked = True then
            begin
                if SameText(Node.Text, edtConvoTreeQSearch.Text) then
                    lbTreeSearchResults.Items.AddObject(Node.Text, Node); // Добавляем найденный узел в список результатов
            end else
            begin
                if Pos(LowerCase(edtConvoTreeQSearch.Text), LowerCase(Node.Text)) > 0 then
                    lbTreeSearchResults.Items.AddObject(Node.Text, Node); // Добавляем найденный узел в список результатов
            end;
        end;
    end;
end;

procedure TfrmMain.edtConvoTreeQSearchEnter(Sender: TObject);
begin
    pnlTreeSearch.Show();
end;

procedure TfrmMain.edtSearchBoxKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then // Enter
    begin
        frmFind.rbCurrentConvo.Checked := true;
        frmFind.SearchInConversations(edtSearchBox.Text);
    end;
end;

procedure TfrmMain.AddNote1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_AddNote));
end;

procedure TfrmMain.AddNote2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_AddNote));
end;

procedure TfrmMain.AddSkillPoints1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_AddSkillPoints));
end;

procedure TfrmMain.AddSkillPoints2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_AddSkillPoints));
end;

procedure TfrmMain.Alllinesofselectedspeaker1Click(Sender: TObject);
var
    TextToCopy: TStringList;
begin
    var ChosenSpeaker := TConEventSpeech(CurrentEvent).ActorValue;

    TextToCopy := TStringList.Create();
    TextToCopy.Add(ChosenSpeaker + ':');

    try
        for var Event in CurrentConversation.Events do
        begin
            if Assigned(event) then
            begin
                if (Event is TConEventSpeech) and (TConEventSpeech(Event).ActorValue = ChosenSpeaker) then
                    TextToCopy.Add(Format('%s', [TConEventSpeech(event).TextLine]));

                if (Event is TConEventChoice) and (ChosenSpeaker = PLAYER_BINDNAME) then // if speaker is Player, add text from choices!
                    for var ch in TConEventChoice(Event).Choices do
                        TextToCopy.Add(Format('%s', [ch.TextLine]));
            end;
        end;

        Clipboard.AsText := TextToCopy.Text;
    finally
        TextToCopy.Free();
    end;
end;

procedure TfrmMain.ApplicationEvents1ShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
    HintInfo.HintMaxWidth := 400;
end;

procedure TfrmMain.ApplyStyle(styleName: string);
begin
    if styleName = 'Charcoal Dark Slate' then
    begin
        TStyleManager.SetStyle(styleName);
        CurrentTheme := styleName;
        mnuCharcoalDarkSlate.Checked := True;
    end else
    if styleName = 'Onyx Blue' then
    begin
        TStyleManager.SetStyle(styleName);
        CurrentTheme := styleName;
        mnuOnyxBlueTheme.Checked := True;
    end else
    if styleName = 'Luna' then
    begin
        TStyleManager.SetStyle(styleName);
        CurrentTheme := styleName;
        mnuLunaTheme.Checked := True;
    end else
    if styleName = 'Silver' then
    begin
        TStyleManager.SetStyle(styleName);
        CurrentTheme := styleName;
        mnuSilverTheme.Checked := True;
    end else
    if styleName = 'Windows' then
    begin
        TStyleManager.SetStyle(styleName);
        CurrentTheme := styleName;
        mnuSystemTheme.Checked := True;
    end;

    ViewoutputTMemo1Click(self);
end;

procedure TfrmMain.AutoSaveFile(const aFileName: string); // Label errors should be ignored in this case.
begin                                                     // Execute in background, to avoid any possible freezes in main thread.
    var FileToSave := aFileName;
    var OnlyFileToSave: string;

    if (ConFileBakPath <> '') and (DirectoryExists(ConFileBakPath)) then
    begin
        OnlyFileToSave := ExtractFileName(aFileName); // Get only fileName.ext
        FileToSave := IncludeTrailingPathDelimiter(ConFileBakPath) + OnlyFileToSave;
    end;


    AutoSaveTask := TTask.Run(
    procedure
    begin
        try
            AutoSaveTimer.Enabled := False; // Just precautions

            if LowerCase(ExtractFileExt(FileToSave)) = '.con' then
                SaveConFile(FileToSave)
            else
            if LowerCase(ExtractFileExt(FileToSave)) = '.xml' then
                BuildConXMLFile(FileToSave);

            TThread.Synchronize(nil,
            procedure
            begin
                StatusBar.Panels[1].Text := 'Done!';
                // do something else?
            end);

        finally
            Sleep(2000); // so user will see the message!
            StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ' AutoSaved: ' + FileToSave;
            AutoSaveTimer.Enabled := True; // Ready for next autosave
        end;
    end);
end;

procedure TfrmMain.AutoSaveTimerTimer(Sender: TObject);
var
    NewFileName: string;
begin
    // don't autosave if no file loaded
    if currentConFile = '' then Exit();

    var TempFileName := ChangeFileExt(currentConFile, ''); //ExtractFileName(currentConFile);
    var TempFileExt := ExtractFileExt(currentConFile);

    NewFileName:= TempFileName +  '_AutoSave_' + FormatDateTime('hh_mm_ss__dd_mmm_yyyy', Now()) + TempFileExt; //    yyyy_mmdd_hhmmss

    StatusBar.Panels[1].Text := DateTimeToStr(Now()) + ' AutoSaving file: ' + NewFileName;
    AutoSaveFile(NewFileName);
end;

procedure TfrmMain.tbGenerateAudioDirsClick(Sender: TObject);
begin
    frmAudioDirectories.ShowModal();
end;

function TfrmMain.bIsEventFilterActive(): Boolean;
begin
    Result := bchkSpeech = False or
              bchkChoice = False or
              bchkComment = False or
              bchkTransferObject = False or
              bchkTrigger = False or
              bchkRandom = False or
              bchkCheckObject = False or
              bchkTrade = False or
              bchkAnimation = False or
              bchkAddGoal = False or
              bchkSetFlag = False or
              bchkAddCredits = False or
              bchkCheckPersona = False or
              bchkCheckFlag = False or
              bchkMoveCamera = False or
              bchkJump = False or
              bchkAddSkillPoints = False or
              bchkAddNote = False or
              bchkEnd = False;
end;

procedure TfrmMain.btnApplyFilterClick(Sender: TObject);
begin
    ApplyEventFilter();

    UpdateEventListHeights();
    UpdateEventListFixedHeights();

    ToggleEventIdx();
    SetEventsListScrollbars();

    pnlEventFilter.Hide();
end;

procedure TfrmMain.btnDisplayAllEventsClick(Sender: TObject);
var
    aControl: TControl;
begin
    for var i := 0 to grpEventFilter.ControlCount - 1 do
    begin
        aControl := grpEventFilter.Controls[i];
        if aControl is TCheckBox then
        begin
            if aControl.Name <> 'chkEventIdx' then // don't check the debug option
                (aControl as TCheckBox).Checked := True;
        end;
    end;
end;

procedure TfrmMain.btnOnlyTextEventsClick(Sender: TObject);
var
    aControl: TControl;
begin
    for var i := 0 to grpEventFilter.ControlCount - 1 do
    begin
        aControl := grpEventFilter.Controls[i];
        if aControl is TCheckBox then
        begin
            (aControl as TCheckBox).Checked := False;
        end;
    end;

    chkSpeech.Checked := True;
    chkChoice.Checked := True;
    chkAddGoal.Checked := True;
    chkAddNote.Checked := True;
    chkAddSkillPoints.Checked := True;
    chkComment.Checked := True;
end;

procedure TfrmMain.btnReorderClick(Sender: TObject);
begin
    if btnReorder.Down = true then ConEventList.DragMode := TDragMode.dmAutomatic
        else ConEventList.DragMode := TDragMode.dmManual;
end;

procedure TfrmMain.btnStartSearchClick(Sender: TObject);
begin
    var charToSend:= #13;

    edtSearchBoxKeyPress(Self, charToSend);
end;

procedure TfrmMain.tbStickyWindowClick(Sender: TObject);
begin
    ScreenSnap := tbStickyWindow.Down;
end;

procedure TfrmMain.Jump1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Jump));
end;

procedure TfrmMain.Jump2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Jump));
end;

procedure TfrmMain.lbTreeSearchResultsDblClick(Sender: TObject);
begin
    // Получаем узел, связанный с выбранным элементом списка
    if lbTreeSearchResults.ItemIndex >= 0 then
    begin
        var SelectedNode := TTreeNode(lbTreeSearchResults.Items.Objects[lbTreeSearchResults.ItemIndex]);

        // Выделяем узел в дереве и делаем его видимым
        if Assigned(SelectedNode) then
        begin
            SelectedNode.Selected := True;
            SelectedNode.MakeVisible();
        end;
    end;
end;

procedure TfrmMain.lbTreeSearchResultsExit(Sender: TObject);
begin
    pnlTreeSearch.Hide();
end;

procedure TfrmMain.IndexEvents1Click(Sender: TObject);
begin
    SetEventIndexes();
end;

procedure TfrmMain.MenuMainChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
var i: Integer;
begin
    for i := 0 to 7 do
        mniRecent.Items[i].Visible := mniRecent.Items[i].Caption <> '';

    GenAudiofilenames.Visible := not mainToolBar.Visible;

//    ConvoProperties.Enabled := conXmlFile <> '';
end;

procedure TfrmMain.MoveCamera1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_MoveCamera));
end;

procedure TfrmMain.MoveCamera2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_MoveCamera));
end;

procedure TfrmMain.Objects1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := TM_Objects;
    frmTableEdit.lstTableContents.Items := frmMain.listObjects;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.mnuOnyxBlueThemeClick(Sender: TObject);
begin
    ApplyStyle('Onyx Blue');
end;

procedure TfrmMain.mnuToggleMainToolBarClick(Sender: TObject);
begin
    bShowToolbar := mnuToggleMainToolBar.Checked;
    MainToolBar.Visible := mnuToggleMainToolBar.Checked;
end;

procedure TfrmMain.mnuGithubClick(Sender: TObject);
begin
    if MessageDlg(strAskToOpenGithub, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, 'open', 'https://github.com/LoadLineCalibration/Convedit_Plus', nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.PlayAnimation1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Animation));
end;

procedure TfrmMain.PlayAnimation2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Animation));
end;

procedure TfrmMain.PopupConvoEventListPopup(Sender: TObject); // Enable/disable some menu items...
begin
    var ListObject: TObject;
    var SpeechObj: TConEventSpeech := nil;
    var ChoiceObj: TConEventChoice := nil;
    var ItemIdx := ConEventList.ItemIndex;

    if ItemIdx <> -1 then
    begin
        ListObject := ConEventList.Items.Objects[ItemIdx];

        if ListObject is TConEventSpeech then
            SpeechObj := TConEventSpeech(ListObject) else
        if ListObject is TConEventChoice then
            ChoiceObj := TConEventChoice(ListObject);

    end;

    if ItemIdx = -1 then
    begin
        Add2.Enabled := true;
        Insert2.Enabled := false;
        Edit1.Enabled := false;
        Delete1.Enabled := false;
        Cut3.Enabled := false;
        Copy3.Enabled := false;
        PasteConvoEvent.Enabled := HasConvoEventToPaste();
        Event_Duplicate.Enabled := False;
        Event_CopySpeechText.Visible := False;
        Event_CopyMp3FileAndPath.Visible := False;
        Event_CopyMp3FilePath.Visible := False;
        Event_CopyMp3File.Visible := False;
        Event_BrowseTo.Visible := False;

        for var L:= 0 to 14 do
        begin
            var ChoiceMenuItem : TMenuItem := FindComponent('mnuChoiceItemSub' + L.ToString()) as TMenuItem;
            ChoiceMenuItem.Visible := False;
        end;

    end else
    begin
        Add2.Enabled := true;
        Insert2.Enabled := true;
        Edit1.Enabled := true;
        Delete1.Enabled := true;
        Cut3.Enabled := true;
        Copy3.Enabled := true;
        PasteConvoEvent.Enabled := HasConvoEventToPaste();
        Event_Duplicate.Enabled := true;

        mnuCopyConvoTextSub.Visible      := SpeechObj <> nil;
        Event_CopySpeechText.Visible     := SpeechObj <> nil;
        Event_CopyMp3FileAndPath.Visible := (SpeechObj <> nil) and (SpeechObj.mp3File <> '');
        Event_CopyMp3FilePath.Visible    := Event_CopyMp3FileAndPath.Visible;
        Event_CopyMp3File.Visible        := Event_CopyMp3FileAndPath.Visible;
        Event_BrowseTo.Visible           := (SpeechObj <> nil) or (ChoiceObj <> nil); //Event_CopyMp3FileAndPath.Visible;

        for var K:= 0 to 14 do // hide these menus first
        begin
            var ChoiceMenuItem : TMenuItem := FindComponent('mnuChoiceItemSub' + K.ToString()) as TMenuItem;
            ChoiceMenuItem.Visible := False;
        end;

        if ChoiceObj <> nil then // Choice has been selected, unhide menu items
        begin
            for var i:= 0 to ChoiceObj.NumChoices -1 do
            begin
                var ChoiceMenuItem : TMenuItem := FindComponent('mnuChoiceItemSub' + i.ToString()) as TMenuItem;

                ChoiceMenuItem.Visible := ChoiceObj.Choices[i].textline <> ''; // unhide if not empty
                ChoiceMenuItem.Caption := ChoiceObj.Choices[i].textline;
            end;
        end;
    end;
end;

procedure TfrmMain.PopupTreePopup(Sender: TObject); // block some menu items depending on selection
begin
    if ConvoTree.Selected = nil then
    begin
        Conversation_Delete.Enabled := False;
        Conversation_Properties.Enabled := False;
        Conversation_Rename.Enabled := False;

        Conversation_Cut.Enabled := False;
        Conversation_Copy.Enabled := False;
        Conversation_Paste.Enabled := False;

        Exit();
    end;

//    if ConvoTree.Items.Count < 2 then Exit();

//    if TreeHasItemsOfLevel(ConvoTree, 1) = true then
//    begin
    Conversation_Delete.Enabled := ConvoTree.Selected.Level = 1;
    Conversation_Properties.Enabled := ConvoTree.Selected.Level = 1;
    Conversation_Rename.Enabled := ConvoTree.Selected.Level = 1;

    Conversation_Cut.Enabled := ConvoTree.Selected.Level = 1;
    Conversation_Copy.Enabled := ConvoTree.Selected.Level = 1;
    Conversation_Paste.Enabled := HasConversationToPaste();

//    end;
//    else begin
//        DeleteConversation.Enabled := ConvoTree.Selected.Level = 1;
//        Conversation_Properties.Enabled := ConvoTree.Selected.Level = 1;
//    end;
end;

procedure TfrmMain.Random1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Random));
end;

procedure TfrmMain.Random2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Random));
end;

procedure TfrmMain.SimulateDEEDClick(Sender: TObject); // fill all "created/modified by" like DeusExExtractor does.
begin
    conFileParameters.fpCreatedByName := strDEED;
    conFileParameters.fpCreatedByDate := strDEED;

    for var con in ConversationsList do
    begin
        con.conCreatedByName := strDEED;
        con.conModifiedByName := strDEED;
    end;
end;

procedure TfrmMain.RecentFile0Click(Sender: TObject);
begin
    if bFileModified = true then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel: // Cancel, just close the dialog and exit
            begin
                Exit();
            end;
          mrYes: // Save the file
            begin
                FileSaveExecute(self);
            end;
        end;
    end;

    var fileName := (Sender as TMenuItem).Caption;

    if FileExists(fileName) = True then
        OpenRecentFile(fileName)
    else
        MessageBox(0, PChar(Format(strFileDoesNotExists, [fileName])), PChar(strErrorTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
end;

procedure TfrmMain.ResetEventFilter();
begin
    bchkSpeech:= True;       chkSpeech.Checked := True;
    bchkChoice:= True;       chkChoice.Checked := True;
    bchkComment:= True;      chkComment.Checked := True;
    bchkTransferObject:= True;  chkTransferObject.Checked := True;
    bchkTrigger:= True;      chkTrigger.Checked := True;
    bchkRandom:= True;       chkRandom.Checked := True;
    bchkCheckObject:= True;  chkCheckObject.Checked := True;
    bchkTrade:= True;        chkTrade.Checked := True;
    bchkAnimation:= True;    chkAnimation.Checked := True;
    bchkAddGoal:= True;      chkAddGoal.Checked := True;
    bchkSetFlag:= True;      chkSetFlag.Checked := True;
    bchkAddCredits:= True;   chkAddCredits.Checked := True;
    bchkCheckPersona:= True; chkCheckPersona.Checked := True;
    bchkCheckFlag:= True;    chkCheckFlag.Checked := True;
    bchkMoveCamera:= True;   chkMoveCamera.Checked := True;
    bchkJump:= True;         chkJump.Checked := True;
    bchkAddSkillPoints:= True; chkAddSkillPoints.Checked := True;
    bchkAddNote:= True;      chkAddNote.Checked := True;
    bchkEnd:= True;          chkEnd.Checked := True;
end;

procedure TfrmMain.ApplyEventFilter();
begin
    bchkSpeech:=         chkSpeech.Checked;
    bchkChoice:=         chkChoice.Checked;
    bchkComment:=        chkComment.Checked;
    bchkTransferObject:= chkTransferObject.Checked;
    bchkTrigger:=        chkTrigger.Checked;
    bchkRandom:=         chkRandom.Checked;
    bchkCheckObject:=    chkCheckObject.Checked;
    bchkTrade:=          chkTrade.Checked;
    bchkAnimation:=      chkAnimation.Checked;
    bchkAddGoal:=        chkAddGoal.Checked;
    bchkSetFlag:=        chkSetFlag.Checked;
    bchkAddCredits:=     chkAddCredits.Checked;
    bchkCheckPersona:=   chkCheckPersona.Checked;
    bchkCheckFlag:=      chkCheckFlag.Checked;
    bchkMoveCamera:=     chkMoveCamera.Checked;
    bchkJump:=           chkJump.Checked;
    bchkAddSkillPoints:= chkAddSkillPoints.Checked;
    bchkAddNote:=        chkAddNote.Checked;
    bchkEnd:=            chkEnd.Checked;
end;

procedure TfrmMain.LoadFilters();
begin
    chkSpeech.Checked :=         bchkSpeech;
    chkChoice.Checked :=         bchkChoice;
    chkComment.Checked :=        bchkComment;
    chkTransferObject.Checked := bchkTransferObject;
    chkTrigger.Checked :=        bchkTrigger;
    chkRandom.Checked :=         bchkRandom;
    chkCheckObject.Checked :=    bchkCheckObject;
    chkTrade.Checked :=          bchkTrade;
    chkAnimation.Checked :=      bchkAnimation;
    chkAddGoal.Checked :=        bchkAddGoal;
    chkSetFlag.Checked :=        bchkSetFlag;
    chkAddCredits.Checked :=     bchkAddCredits;
    chkCheckPersona.Checked :=   bchkCheckPersona;
    chkCheckFlag.Checked :=      bchkCheckFlag;
    chkMoveCamera.Checked :=     bchkMoveCamera;
    chkJump.Checked :=           bchkJump;
    chkAddSkillPoints.Checked := bchkAddSkillPoints;
    chkAddNote.Checked :=        bchkAddNote;
    chkEnd.Checked :=            bchkEnd;
end;

procedure TfrmMain.tmrEventWinPosSyncTimer(Sender: TObject);
begin
    if (frmEventInsAdd.Visible = True) and (frmEventInsAdd.chkFollowMainWindow.Checked = True) then
    begin
        frmEventInsAdd.Left := frmMain.Left + frmEventInsAddOffset.X;
        frmEventInsAdd.Top := frmMain.Top + frmEventInsAddOffset.Y;
    end;
end;

procedure TfrmMain.TransferObject1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_TransferObject));
end;

procedure TfrmMain.TransferObject2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_TransferObject));
end;

procedure TfrmMain.Trigger1Click(Sender: TObject);
begin
    AddEvent(Ord(ET_Trigger));
end;

procedure TfrmMain.Trigger2Click(Sender: TObject);
begin
    InsertEvent(Ord(ET_Trigger));
end;

procedure TfrmMain.ViewoutputTMemo1Click(Sender: TObject);
begin
    mmoOutput.Visible := ViewoutputTMemo1.Checked;

    if (Sender is TButton) or (Sender is TToolButton) then
        ViewoutputTMemo1.Click();

    btnCloseLog.Visible := mmoOutput.Visible;
    btnViewLog.Down := mmoOutput.Visible;

    case mmoOutput.Visible of
        True: mmoOutput.ScrollBars := ssVertical;
        False:mmoOutput.ScrollBars := ssNone;
    end;

    if bUseLogging = False then
        mmoOutput.Text := 'Logging is disabled. To see log messages, enable logging in program options.';
end;

end.
