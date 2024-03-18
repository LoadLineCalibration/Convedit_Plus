unit MainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, ConEditPlus.Consts,
  system.UITypes, Vcl.ComCtrls, System.Types, Vcl.Buttons, Vcl.ToolWin, System.IniFiles, System.IOUtils,
  Conversation.Classes, System.ImageList, Vcl.ImgList, Table, Vcl.GraphUtil, ES.BaseControls, ES.Layouts,
  System.Actions, Vcl.ActnList, System.Generics.Collections, System.TypInfo, xml.VerySimple, System.StrUtils,
  system.Math, Vcl.MPlayer, ConEditPlus.Enums, Winapi.ShellAPI, ConEditPlus.Helpers, Vcl.Clipbrd, system.Rtti,
  ConEditPlus.Clipboard.Helper;


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
    GenAudioNames: TMenuItem;
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
    mnuEventIndex: TMenuItem;
    mnuShowAudioFiles1: TMenuItem;
    PopupConvoEventList: TPopupMenu;
    pnlConvoTree: TPanel;
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
    N17: TMenuItem;
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
    DeleteConversation: TAction;
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
    ToolButton5: TToolButton;
    tbCut: TToolButton;
    tbCopy: TToolButton;
    tbPaste: TToolButton;
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
    N20: TMenuItem;
    Conversation_CheckLabels: TAction;
    tbVerifyLabels: TToolButton;
    ToolButton12: TToolButton;
    Label1: TLabel;
    N5: TMenuItem;
    Duplicate1: TMenuItem;
    Event_Duplicate: TAction;
    N6: TMenuItem;
    ExpandTreeWithoutFlags: TMenuItem;
    procedure mnuToggleMainToolBarClick(Sender: TObject);
    procedure mnuStatusbarClick(Sender: TObject);
    procedure PopupTreePopup(Sender: TObject);
    procedure PopupConvoEventListPopup(Sender: TObject);
    procedure Exit1Click(Sender: TObject);

    procedure AddEvent(TargetPage: Integer); // Add event to end
    procedure InsertEvent(TargetPage: Integer); // Insert event at current position in the list
    procedure EditCurrentEvent(EventToEdit: TConEvent);
    procedure ToggleLV_FlagValue(lstv: TListView);

    procedure SendStringToEditValue(control: TControl);

    procedure FillEventLabels(con: TConversation; listToFill: TCustomListControl);

    function GetAppVersionStr(): string; //https://delphihaven.wordpress.com/2012/12/08/retrieving-the-applications-version-string/
    function HasConvoEventToPaste(): Boolean;
    function GetReorderButtonHint(): string;

    function CountLineWraps(str: string): Integer;

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
    function FindTreeItemByText(TreeView: TTreeView; Text: string): TTreeNode;

    procedure SelectTreeItemByObject(TreeView: TTreeView; Obj: TObject);
    procedure SelectEventByObject(obj: TObject);


    procedure SetMemoFont(FontSize: Integer; FontName: string);
    procedure PickTableObject(newTableMode: TTableMode; control: TControl);
    procedure FirstTimeLaunch();

    procedure CreateConFile(bCreatingNew: Boolean);
    procedure ClearForNewFile();

    procedure GenerateAudioFileNames();
    procedure SetEventIndexes();
    procedure CreateAudioDirectories(const InitialPath: string); // automatically creates paths and empty files
    procedure CopyFinalMp3(CopyTo, FileName: String);

    // loading and saving configuration file
    procedure LoadCfg();
    procedure SaveCfg();

    procedure AddRecentFile(aFile: string); // add opened file to "recent" list
    procedure ClearRecentFiles();
    procedure OpenRecentFile(aFile: string);

    procedure LoadConXMLFile(aFileName: string);
    procedure BuildConvoTree();

    procedure ProcessCommandline(const cmdLine: string);

    procedure UpdateEventListHeights();

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

    // to highlight events
    procedure HighlightSelectedEvent(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure HighlightEvents(labelStr: string);
    procedure HighlightRelatedEvents();
    procedure UnhighlightRelatedEvents();

    // To copy/paste evnts
    procedure CopyEventToClipboard(var Event: TConEvent);
    procedure PasteEventFromClipboard();

    // To duplicate selected event
    procedure CopyEventFields(Source, Dest: TConEvent);

    // To expand tree without flags
    procedure ExpandTreeViewToLevel(TreeView: TTreeView; Level: Integer);

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
    procedure tbSearchClick(Sender: TObject);
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
    procedure DeleteConversationExecute(Sender: TObject);
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
    procedure tbPrintClick(Sender: TObject);
    procedure mainToolBarCustomDrawButton(Sender: TToolBar; Button: TToolButton;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure mnuGithubClick(Sender: TObject);
    procedure edtSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure mnuEventIndexClick(Sender: TObject);
    procedure Event_DuplicateExecute(Sender: TObject);
    procedure IndexEvents1Click(Sender: TObject);
    procedure Event_CutExecute(Sender: TObject);
    procedure Event_CopyExecute(Sender: TObject);
    procedure Event_PasteExecute(Sender: TObject);
    procedure ConvoTreeDblClick(Sender: TObject);
    procedure ExpandTreeWithoutFlagsClick(Sender: TObject);
    procedure TreeExpandAllClick(Sender: TObject);
    procedure FileOpenDialogTypeChange(Sender: TObject);
  private
    { Private declarations }
    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
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

    // Configuration file
    // color variables for configuration file (clrGrid is color of separators between events)
    var clrHighlightEvent, clrHighlightEventFrom, clrHighlightEventTo, clrGrid: TColor;

    // boolean variables for configuration file
    var bShowAudioFiles, bShowStatusBar, bShowToolbar, bExpandedEventList,
    bExpandFlagsOnExpandAll,
    bAskForConvoDelete, bAskForEventDelete, bHglEventWithNoAudio,
    bHglEventsGradient, bFlatToolbar, bAutoSaveEnabled,
    bUse3DSelectionFrame, bUseWhiteSelectedText, bDrawEventIdx, bUseLogging: Boolean;

    // strings
    var ConversationUserName,
    ConFilePath, ConFileBakPath, ConFileAudioPath: string;

    // Integer values
    var AutoSaveMinutes: Integer;
    var OpenFileFilterIndex, SaveFileFilterIndex: Integer; // save last selected file filter when opening/saving file.

    // to store recent files!
    var RecentFiles: array[0..CEP_MAX_RECENT_FILES] of string;

    var ReorderModKey: TReorderEventsModKey; // Hold xxx key to reorder events


    // end of configuration file variables

    var MainFormIni: TIniFile;     // ini file

    var currentConFile: string; // global variable, so I can use it anywhere...

    var bFileModified: Boolean; // set to True when file has been modified

    var eventsFormLeft: Integer;
    var eventsFormTop: Integer;

    var SysScrollBarWidth: Integer;

    var CF_ConEditPlus: Word; // Custom clipboard format
  end;

var
  frmMain: TfrmMain;


implementation

{$R *.dfm}
{$R SoundResources.res} // contains final.mp3

uses frmSettings1, EditValueDialog, ConFileProperties, AboutBox1, ConvoProperties, frmFind1, AddInsertEvent,
     ConXml.Reader, ConXML.Writer, confile.Reader, conFile.Writer, uFrmLabelErrors;



procedure TfrmMain.WMEnterSizeMove(var Msg: TMessage);
begin
    tmrEventWinPosSync.Enabled := True;

    var diffL := frmMain.Left - frmEventInsAdd.Left;
    var diffT := frmMain.Top - frmEventInsAdd.Top;

    eventsFormLeft := Abs(diffL);
    eventsFormTop := Abs(diffT);

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

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each flag string

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

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each flag string

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

    dResult := 20 + (17 * tLength); // 20 for name and 17 for each Choice Item + space for flags

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

    dResult := 18 + (16 * aLength); // 20 for name and 17 for each speech string

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
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

    dResult := 38 + (17 * aLength); // 38 for name and 17 for each flag string

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

    dResult := 20 + (16 * aLength); // 18 for event name and 17 for each comment string

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

    dResult := 5 + (16 * aLength); // 18 for event name and 17 for each comment string

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

    dResult := 20 + (16 * aLength); // 18 for event name and 17 for each comment string

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

    dResult := 5 + (16 * aLength); // 18 for event name and 17 for each comment string

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

function TfrmMain.FindTreeItemByText(TreeView: TTreeView; Text: string): TTreeNode;
var
    Node: TTreeNode;
begin
    Result := nil;
    for Node in TreeView.Items do
    begin
        if SameText(Node.Text, Text) then
        begin
            Result := Node;
        Break;
        end;
    end;
end;

function FindItemByObject(Node: TTreeNode; Obj: TObject): TTreeNode;
var
  ChildNode: TTreeNode;
begin
    Result := nil;

    // Check if the current node's Data property matches the desired object
    if Node.Data = Obj then
       Result := Node
    else
    begin
      // Traverse the child nodes recursively
      ChildNode := Node.GetFirstChild;
      while ChildNode <> nil do
      begin
        Result := FindItemByObject(ChildNode, Obj);
        if Result <> nil then
           Break;
        ChildNode := Node.GetNextChild(ChildNode);
      end;
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
    end;

    if ExtractFileExt(cmdLine) = LowerCase('.xml') then
    begin
        LoadConXMLFile(cmdLine);
        BuildConvoTree();
        ToggleMenusPanels(True);
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

procedure TfrmMain.LoadConXMLFile(aFileName: string);
begin
    if FileExists(aFileName) = false then
    begin
        MessageDlg(aFileName + ': Such file does not exists! Operation cancelled.',  mtError, [mbOK], 0);
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
begin
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

    SetEventIndexes();
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
    if (currentConFile <> '') and (bFileModified = true) then
    begin
        case MessageDlg(strSaveConversationFileQuestion, mtConfirmation, mbYesNoCancel, 0) of
          mrCancel:
            begin
                Exit();
            end;
          mrYes:
            begin

            end;
          mrNo:
            begin

            end;
        end;
    end;

    ClearForNewFile();

    if (bCreatingNew = True) then
        frmConvoFileProperties.ShowModal();
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
    // speech events
    for var con in ConversationsList do
    begin
        var tempDict:= TDictionary<string,integer>.Create();

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
                                         + con.conOwnerName + '\'
                                         + con.conName + '\'
                                         + speechEvent.ActorValue
                                         + '0' + counter.ToString + '.mp3'
                else
                    speechEvent.mp3File := conFileParameters.fpAudioPackage + '\'
                                         + con.conOwnerName + '\'
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
var
    NewIndex: Integer;
begin
    for var con in ConversationsList do
    begin
        NewIndex := 0;

        //for var i:= 0 to High(con.Events) do
        for var Event in con.Events do
        begin
            //con.Events[i].EventIdx := NewIndex; //i;
            Event.EventIdx := NewIndex;
            Inc(NewIndex);
        end;
    end;
end;

procedure TfrmMain.CreateAudioDirectories(const InitialPath: string);
begin
    GenerateAudioFileNames(); // Generate filenames and paths first

    for var con in ConversationsList do
    begin
        for var event in con.Events do
        begin
            if event is TConEventSpeech then
            begin
                var speech := TConEventSpeech(event);
                var dirStr := InitialPath + conFileParameters.fpAudioPackage + '\' + con.conOwnerName + '\' + con.conName + '\';

                if DirectoryExists(DirStr) = False then
                    ForceDirectories(dirStr); // create directory if required

                var mp3FileStr := ExtractFileName(InitialPath + speech.mp3File);
                CopyFinalMp3(dirStr, mp3FileStr); // Extract and copy placeholder .mp3 file
            end;

            if event is TConEventChoice then
            begin
                var ChoiceObj := TconEventChoice(event);

                for var choiceItem in ChoiceObj.Choices do
                begin
                    if choiceItem.bDisplayAsSpeech = True then
                    begin
                        var choicemMP3 := choiceItem.mp3;
                        var cDirStr := InitialPath + conFileParameters.fpAudioPackage + '\' + con.conOwnerName + '\' + con.conName + '\';

                        if DirectoryExists(cDirStr) = False then
                            ForceDirectories(cDirStr); // create directory if required

                        var cMP3FileStr := ExtractFileName(InitialPath + choiceItem.mp3);
                        CopyFinalMp3(cDirStr, cMP3FileStr);  // Extract and copy placeholder .mp3 file
                    end;
                end;
            end;
        end;
    end;
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

                        BuildSpeech(BinReader, NewSpeech); // fill fields here (ConEditPlus.Clipboard.Helper.pas)

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

                        AddLog('Added event from Clipboard:' + NewSpeech.ClassName);
                    end;

                    if EventToPaste = ET_Choice_Caption then
                    begin
                        var NewChoice := TConEventChoice.Create();

                        BuildChoice(BinReader, NewChoice);

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

                        AddLog('Added event from Clipboard:' + NewChoice.ClassName);
                    end;

                    if EventToPaste = ET_SetFlag_Caption then
                    begin
                        var NewSetFlag := TConEventSetFlag.Create();

                        BuildSetFlag(BinReader, NewSetFlag);

                        //for var Flag in NewSetFlag.SetFlags do
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

                        AddLog('Added event from Clipboard:' + NewSetFlag.ClassName);
                    end;

                    if EventToPaste = ET_CheckFlag_Caption then
                    begin
                        var NewCheckFlag := TConEventCheckFlag.Create();

                        BuildCheckFlag(BinReader, NewCheckFlag);

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

                        Insert(NewCheckFlag, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetCheckFlagsItemHeight([NewCheckFlag]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_CheckFlag_Caption+HeightStr, NewCheckFlag);

                        AddLog('Added event from Clipboard:' + NewCheckFlag.ClassName);
                    end;

                    if EventToPaste = ET_CheckObject_Caption then
                    begin
                        var NewCheckObj := TConEventCheckObject.Create();

                        BuildCheckObject(BinReader, NewCheckObj);

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

                        AddLog('Added event from Clipboard:' + NewCheckObj.ClassName);
                    end;

                    if EventToPaste = ET_TransferObject_Caption then
                    begin
                        var NewTransObject := TConEventTransferObject.Create();

                        BuildTransferObject(BinReader, NewTransObject);

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

                        AddLog('Added event from Clipboard:' + NewTransObject.ClassName);
                    end;

                    if EventToPaste = ET_MoveCamera_Caption then
                    begin
                        var NewMoveCam := TConEventMoveCamera.Create();

                        BuildMoveCamera(BinReader, NewMoveCam);

                        Insert(NewMoveCam, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_MoveCamera_Caption, NewMoveCam);
                    end;

                    if EventToPaste = ET_Animation_Caption then
                    begin
                        var NewAnim := TConEventAnimation.Create();

                        BuildAnimation(BinReader, NewAnim);

                        if FindTableIdByName(TM_ActorsPawns, NewAnim.ActorValue) = -1 then
                        begin
                            listPawnsActors.Add(NewAnim.ActorValue);
                            NewAnim.ActorIndex := FindTableIdByName(TM_ActorsPawns, NewAnim.ActorValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewAnim.ActorValue + ' to the table');
                        end;

                        Insert(NewAnim, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Animation_Caption, NewAnim);
                    end;

                    if EventToPaste = ET_Trade_Caption then
                    begin
                        var NewTrade := TConEventTrade.Create();

                        BuildTrade(BinReader, NewTrade);

                        if FindTableIdByName(TM_ActorsPawns, NewTrade.TradeActorValue) = -1 then
                        begin
                            listPawnsActors.Add(NewTrade.TradeActorValue);
                            NewTrade.TradeActorIndex := FindTableIdByName(TM_ActorsPawns, NewTrade.TradeActorValue); // set id from table
                            AddLog('Added Actor/Pawn ' + NewTrade.TradeActorValue + ' to the table');
                        end;

                        Insert(NewTrade, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Trade_Caption, NewTrade);
                    end;

                    if EventToPaste = ET_Jump_Caption then
                    begin
                        var NewJump := TConEventJump.Create();

                        BuildJump(BinReader, NewJump);

                        Insert(NewJump, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Jump_Caption, NewJump);
                    end;

                    if EventToPaste = ET_Random_Caption then
                    begin
                        var NewRandom := TConEventRandom.Create();

                        BuildRandom(BinReader, NewRandom);

                        Insert(NewRandom, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetRandomEventItemHeight([NewRandom]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Random_Caption+HeightStr, NewRandom);
                    end;

                    if EventToPaste = ET_Trigger_Caption then
                    begin
                        var NewTrigger := TConEventTrigger.Create();

                        BuildTrigger(BinReader, NewTrigger);

                        Insert(NewTrigger, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_Trigger_Caption, NewTrigger);
                    end;

                    if EventToPaste = ET_AddGoal_Caption then
                    begin
                        var NewAddGoal := TConEventAddGoal.Create();

                        BuildAddGoal(BinReader, NewAddGoal);

                        Insert(NewAddGoal, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddGoalItemHeight([NewAddGoal]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddGoal_Caption+HeightStr, NewAddGoal);
                    end;

                    if EventToPaste = ET_AddNote_Caption then
                    begin
                        var NewAddNote := TConEventAddNote.Create();

                        BuildAddNote(BinReader, NewAddNote);

                        Insert(NewAddNote, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddNoteItemHeight([NewAddNote]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddNote_Caption+HeightStr, NewAddNote);
                    end;

                    if EventToPaste = ET_AddSkillPoints_Caption then
                    begin
                        var NewAddSkillPts := TConEventAddSkillPoints.Create();

                        BuildAddSkillPts(BinReader, NewAddSkillPts);

                        Insert(NewAddSkillPts, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetAddSkillPtsItemHeight([NewAddSkillPts]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddSkillPoints_Caption+HeightStr, NewAddSkillPts);
                    end;

                    if EventToPaste = ET_AddCredits_Caption then
                    begin
                        var NewAddCredits := TConEventAddCredits.Create();

                        BuildAddCredits(BinReader, NewAddCredits);

                        Insert(NewAddCredits, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_AddCredits_Caption, NewAddCredits);
                    end;

                    if EventToPaste = ET_CheckPersona_Caption then
                    begin
                        var NewCheckPersona := TConEventCheckPersona.Create();

                        BuildCheckPersona(BinReader, NewCheckPersona);

                        Insert(NewCheckPersona, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_CheckPersona_Caption, NewCheckPersona);
                    end;

                    if EventToPaste = ET_Comment_Caption then
                    begin
                        var NewComment := TConEventComment.Create();

                        BuildComment(BinReader, NewComment);

                        Insert(NewComment, CurrentConversation.Events, ItemIdx);

                        var ListItemHeight := GetCommentItemHeight([NewComment]);
                        var HeightStr := '=' + ListItemHeight.ToString();
                        ConEventList.Items.InsertObject(ItemIdx, ET_Comment_Caption+HeightStr, NewComment);
                    end;

                    if EventToPaste = ET_End_Caption then
                    begin
                        var NewEnd := TConEventEnd.Create();

                        BuildEnd(BinReader, NewEnd);

                        Insert(NewEnd, CurrentConversation.Events, ItemIdx);
                        ConEventList.Items.InsertObject(ItemIdx, ET_End_Caption, NewEnd);
                    end;

                finally
                    mStream.Free();
                    BinReader.Free();
                end;
            finally
                GlobalUnlock(hBuf);
            end;
            UpdateEventListHeights();
        end;
    end
    else
    begin
        PasteConvoEvent.Enabled := False; // Just in case...
        Exit();
    end;
end;

procedure TfrmMain.CopyFinalMp3(CopyTo, FileName: String);
var
    ResStream: TResourceStream;
    FileStream: TFileStream;
begin
    ResStream := TResourceStream.Create(HInstance, 'FINAL','MP3');
    try
        FileStream := TFileStream.Create(CopyTo + '\' + FileName, fmCreate);
        try
            FileStream.CopyFrom(ResStream, 0);
        finally
            FileStream.Free();
        end;
    finally
        ResStream.Free();
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

    // ToDo: Add check if file has been modified, ask to save, etc.
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
    StatusBar.Panels[1].Text := currentConFile;
end;

procedure TfrmMain.AddRecentFile(aFile: string);
var i: Integer;
begin
    for i:=0 to Length(RecentFiles) -1 do
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
    end;
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
begin
    mmoOutput.Lines.Clear();
end;

procedure TfrmMain.ClearRecentFiles();
var i: Integer;
begin
    for i := 0 to CEP_MAX_RECENT_FILES do begin
        RecentFiles[i] := '';
        mniRecent.Items[i].Caption := RecentFiles[i];
    end;
end;

procedure TfrmMain.Close1Click(Sender: TObject);
begin
    ClearForNewFile();
end;

procedure TfrmMain.LoadCfg();
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

       //bExpandedEventList := ReadBool('frmMain', 'bExpandedEventList', true);
       bDrawEventIdx := ReadBool('frmMain', 'bDrawEventIdx', true);
       mnuEventIndex.Checked := bDrawEventIdx;


      // Settings form
       ConversationUserName := ReadString('frmMain', 'UserName', strAppTitle);
       ConFilePath := ReadString('frmMain', 'ConFilePath', '');
       ConFileBakPath := ReadString('frmMain', 'ConFileBakPath', '');
       ConFileAudioPath := ReadString('frmMain', 'ConFileAudioPath', '');

       bExpandFlagsOnExpandAll := ReadBool('frmMain', 'bExpandFlagsOnExpandAll',true);
       bAskForConvoDelete := ReadBool('frmMain', 'bAskForConvoDelete', true);
       bAskForEventDelete := ReadBool('frmMain', 'bAskForEventDelete', true);
       bHglEventWithNoAudio := ReadBool('frmMain', 'bHglEventWithNoAudio', true);
       bHglEventsGradient := ReadBool('frmMain', 'bHglEventsGradient', true);
       bFlatToolbar := ReadBool('frmMain', 'bFlatToolbar', false);
          mainToolBar.Flat := bFlatToolbar;
          if bFlatToolbar = true then HeaderControl1.Style := hsFlat else HeaderControl1.Style := hsButtons;

       bAutoSaveEnabled := ReadBool('frmMain', 'bAutoSaveEnabled', false);
       AutoSaveMinutes := ReadInteger('frmMain', 'AutoSaveMinutes', 5);

       clrHighlightEvent := ReadInteger('frmMain', 'clrHighlightEvent', 16767927);
       clrHighlightEventFrom := ReadInteger('frmMain', 'clrHighlightEventFrom', 16767927);
       clrHighlightEventTo := ReadInteger('frmMain', 'clrHighlightEventTo', 16777215);
       clrGrid := ReadInteger('frmMain', 'clrGrid',  clGray);

       bUse3DSelectionFrame := ReadBool('frmMain', 'bUse3DSelectionFrame', true);
       bUseWhiteSelectedText := ReadBool('frmMain', 'bUseWhiteSelectedText', false);

       bUseLogging := ReadBool('frmMain', 'bUseLogging', false);

       ReorderModKey := TReorderEventsModKey(ReadInteger('frmMain', 'ReorderModKey', 0));

       btnReorder.Hint := GetReorderButtonHint(); // Update button tooltip

       // up to 8 recent files
       for var i := 0 to CEP_MAX_RECENT_FILES do
       begin
           RecentFiles[i] := ReadString('RecentFiles', 'RecentFile'+i.ToString , '');
           mniRecent.Items[i].Caption := RecentFiles[i];
       end;

       OpenFileFilterIndex := ReadInteger('OpenFileDialog', 'OpenFileFilterIndex', 1);
    end;

    finally
       MainFormIni.Free();
    end;
end;

procedure TfrmMain.SaveCfg();
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

           // Settings form
           WriteString('frmMain', 'UserName', ConversationUserName);
           WriteString('frmMain', 'ConFilePath', ConFilePath);
           WriteString('frmMain', 'ConFileBakPath', ConFileBakPath);
           WriteString('frmMain', 'ConFileAudioPath', ConFileAudioPath);

           WriteBool('frmMain', 'bExpandFlagsOnExpandAll', bExpandFlagsOnExpandAll);
           WriteBool('frmMain', 'bAskForConvoDelete', bAskForConvoDelete);
           WriteBool('frmMain', 'bAskForEventDelete', bAskForEventDelete);
           WriteBool('frmMain', 'bHglEventWithNoAudio', bHglEventWithNoAudio);
           WriteBool('frmMain', 'bHglEventsGradient', bHglEventsGradient);
           WriteBool('frmMain', 'bFlatToolbar', bFlatToolbar);
           WriteBool('frmMain', 'bAutoSaveEnabled', bAutoSaveEnabled);

           WriteInteger('frmMain', 'AutoSaveMinutes', AutoSaveMinutes);
           // Colors...
           WriteInteger('frmMain', 'clrHighlightEvent', clrHighlightEvent);
           WriteInteger('frmMain', 'clrHighlightEventFrom', clrHighlightEventFrom);
           WriteInteger('frmMain', 'clrHighlightEventTo', clrHighlightEventTo);
           WriteInteger('frmMain', 'clrGrid', clrGrid);

           WriteBool('frmMain', 'bUse3DSelectionFrame', bUse3DSelectionFrame);
           WriteBool('frmMain', 'bUseWhiteSelectedText', bUseWhiteSelectedText);

           WriteBool('frmMain', 'bUseLogging', bUseLogging);

           WriteInteger('frmMain', 'ReorderModKey',Ord(ReorderModKey));

           // up to 8 recent files
           for var i := 0 to CEP_MAX_RECENT_FILES do
               WriteString('RecentFiles', 'RecentFile'+i.ToString, RecentFiles[i]);

           WriteInteger('OpenFileDialog', 'OpenFileFilterIndex', OpenFileFilterIndex);
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
begin
    // load data from event
    if ((CurrentConversation <> nil) and (TConEventSpeech(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        mp3str := TConEventSpeech(ConEventList.Items.Objects[Index]).mp3File;
        ActorNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorValue;
        ActorToNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorToValue;
        SpeechStr := TConEventSpeech(ConEventList.Items.Objects[Index]).TextLine;
    end;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(192,255,192); // green
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Font.Style := [fsBold];

        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Speech_Caption);

        // NPC (Actor) name
        TextOut(Rect.Left + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[0].Width, Rect.Top, ActorNameStr + '');

        if bShowAudioFiles = true then
        begin
            TempRect := Rect;
            TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;
            DrawText(Handle, mp3str, -1, TempRect, DT_END_ELLIPSIS);  // mp3 file path
        end;

        tempRect := Rect;
        tempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Top := Rect.Top + 16;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset

        Font.Style := [];

        if ((odSelected in State) and
            (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

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
    EventChoice:= nil;

    if ((CurrentConversation <> nil) and (TConEventChoice(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        EventChoice := TConEventChoice(ConEventList.Items.Objects[Index]);
    end;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(255,250,200);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;
        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Choice_Caption);
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_SPEECH_EVENT_FONT;
        Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

        for var E:= 0 to EventChoice.NumChoices -1 do
        begin
            Inc(tempRect.Top, 17);
            if EventChoice.Choices[E].bSkillNeeded <> -1 then
            begin // bSkillNedded <>  -1, i.e. true
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

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
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;

                        FlagsStr := '';
                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do
                    begin
                        FlagsStr := FlagsStr + '[' + EventChoice.Choices[E].RequiredFlags[F].flagName + '='
                                         + BoolToStr(EventChoice.Choices[E].RequiredFlags[F].flagValue, True) + '] ';
                    end;

                    Inc(tempRect.Top, 17);
                    DrawText(Handle,strDependsOnFlag + FlagsStr, -1, tempRect, DT_END_ELLIPSIS);

                    Font.Name := CEP_SPEECH_EVENT_FONT;
                    Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;
                end;
            end else
            begin // bSkillNeeded = 0 or greater
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

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
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;

                        FlagsStr := '';
                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do
                    begin
                        FlagsStr :=  FlagsStr + '[' + EventChoice.Choices[E].RequiredFlags[F].flagName + '='
                                          + BoolToStr(EventChoice.Choices[E].RequiredFlags[F].flagValue, True) + '] ';
                    end;

                    Inc(tempRect.Top, 17);
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,240,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_SetFlag_Caption);
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        for var i := 0 to Length(EventSetFlags.SetFlags) -1 do
        begin
           flagvalue := BoolToStr(EventSetFlags.SetFlags[i].FlagValue, true);
           if EventSetFlags.SetFlags[i].flagExpiration = 0 then FlagExpiresStr := 'Never' else
              FlagExpiresStr := EventSetFlags.SetFlags[i].flagExpiration.ToString;

           DrawText(Handle,EventSetFlags.SetFlags[i].FlagName + '=' + flagvalue +
           ' Expires: ' + FlagExpiresStr, -1, TempRect, DT_END_ELLIPSIS);
           Inc(tempRect.Top, 16); // Отступ вниз
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(245,245,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckFlag_Caption);

        TextOut(Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width +
                            HeaderControl1.Sections[2].Width, Rect.Top, strChkFlgJumpToLabel + EventCheckFlag.GotoLabel);
        tempRect := Rect;

        Font.Style := [];
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        for var i := 0 to Length(EventCheckFlag.FlagsToCheck) -1 do
        begin
           var flagvalue := BoolToStr(EventCheckFlag.FlagsToCheck[i].FlagValue, true);

           DrawText(Handle,EventCheckFlag.FlagsToCheck[i].FlagName + '=' + flagvalue, -1, TempRect, DT_END_ELLIPSIS);
           Inc(tempRect.Top, 16); // Отступ вниз
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,240,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckObject_Caption);

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(245,245,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_TransferObject_Caption);

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;

        DrawText(Handle, ActorFromValue, -1, tempRect, DT_END_ELLIPSIS);

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        Font.Style := [];

//        Font.Name := CEP_SPEECH_EVENT_FONT;
//        Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,240,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_MoveCamera_Caption);

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

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
    bPlayAnimOnce: Boolean;
    PlayAnimDurationSec: Integer;
    bPlayAnimWaitToFinish: Boolean;
begin
    bPlayAnimOnce:= False;
    bPlayAnimWaitToFinish:= False;

    if ((CurrentConversation <> nil) and (TConEventAnimation(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        EventPlayAnim := TConEventAnimation(ConEventList.Items.Objects[Index]);

        PlayAnimActor:= EventPlayAnim.ActorValue;
        PlayAnimSeq:= EventPlayAnim.AnimSequence;
        bPlayAnimOnce:= EventPlayAnim.bAnimPlayOnce;
        PlayAnimDurationSec:= EventPlayAnim.AnimPlayForSeconds;
        bPlayAnimWaitToFinish:= EventPlayAnim.bAnimWaitToFinish;
    end;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,240,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Font.Style := [fsBold];
        Brush.Style := bsClear;
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Animation_Caption);

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;

        DrawText(Handle, PlayAnimActor, -1, tempRect, DT_END_ELLIPSIS);

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width + HeaderControl1.Sections[2].Width;

        DrawText(Handle, 'Play Animation: ' + PlayAnimSeq, -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        Inc(tempRect.Top, 16);
        DrawText(Handle, 'Play Once: ' + BoolToStr(bPlayAnimOnce, true) + '', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        Inc(tempRect.Top, 16);
        DrawText(Handle, 'Wait Anim to finish: ' + BoolToStr(bPlayAnimWaitToFinish, true) + '', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);

        if PlayAnimDurationSec > 0 then
        begin
           Inc(tempRect.Top, 16);
           DrawText(Handle, 'Play duration: ' + PlayAnimDurationSec.ToString + ' seconds', -1, tempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        end;

    end;
end;

procedure TfrmMain.DrawET_Trade(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState); // This event is not implemented, so I will skip it for now...
begin
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(250,255,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Jump_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        DrawText(Handle,CombinedJumpToStr, -1, TempRect, DT_END_ELLIPSIS);

        ButtonRect := Rect;
        ButtonRect.Left := Rect.Left + 5;
        ButtonRect.Width := HeaderControl1.Sections[0].Width - 10; //135;
        ButtonRect.Top:= Rect.Top + 20;
        ButtonRect.Bottom:= Rect.Bottom - 5;
        Font.Style := [TFontStyle.fsUnderline];

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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(245,245,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Random_Caption);

        Font.Style := [];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top + 12, ET_Random_TargetLabels);

        tempRect := Rect;

        Font.Name := CEP_EVENT_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;

        // Draw event flags like CycleOnce, etc.
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width + HeaderControl1.Sections[1].Width;
        DrawText(Handle, Format(strRandomEventOptions,[strCycle, strCycleOnce, strRandCycle]) , -1, TempRect, DT_END_ELLIPSIS);
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Top := Rect.Top + 12;

        Inc(tempRect.Top, 16);

        for var i := 0 to Length(labelsArray) -1 do
        begin
           DrawText(Handle,labelsArray[i], -1, TempRect, DT_END_ELLIPSIS);  // maybe someone will be using very long labels?
           Inc(tempRect.Top, 16); // Отступ вниз
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,255,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Trigger_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        DrawText(Handle,'Trigger ' + TriggerTag, -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.CopyEventFields(Source, Dest: TConEvent);
begin
    var Ctx: TRttiContext;
    var SourceType: TRttiType;
    var Field: TRttiField;

    Ctx := TRttiContext.Create;
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(255,255,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddGoal_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        DrawText(Handle,strGoalName + GoalName, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        Inc(tempRect.Top, 16);
        TempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
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
var tempRect: TRect;
var NoteText: string;
begin
    if ((CurrentConversation <> nil) and (TConEventAddNote(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        NoteText := TConEventAddNote(ConEventList.Items.Objects[Index]).TextLine;
    end;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(240,255,240);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddNote_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(245,240,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddSkillPoints_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        DrawText(Handle,Format(strAddSkillPoints, [SkillPoints]), -1, TempRect, DT_END_ELLIPSIS);
        Inc(tempRect.Top, 16);
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

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(255,244,245);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_AddCredits_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;

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
        	EP_Credits: CheckString := 'Credits';
        	EP_Health: CheckString := 'Health';
        	EP_SkillPoints: CheckString := 'SkillPoints';
        end;

        case TConEventCheckPersona(ConEventList.Items.Objects[Index]).Condition of
        	EC_Less: ConditionString:= ' Less than (<) ';
        	EC_LessEqual: ConditionString:= ' Less than or Equal to (<=) ';
        	EC_Equal: ConditionString:= ' Equal to (=) ';
        	EC_GreaterEqual: ConditionString:= ' Greater than or Equal to (>=) ';
        	EC_Greater: ConditionString:= ' Greater than (>) ';
        end;

        CheckValue := TConEventCheckPersona(ConEventList.Items.Objects[Index]).CheckValue;
        CheckGoToLabel := TConEventCheckPersona(ConEventList.Items.Objects[Index]).CheckGoToLabel;
    end;

    CombinedString := 'if ' + CheckString + ConditionString + CheckValue.ToString + ' then JumpToLabel: ' + CheckGoToLabel;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(244,244,255);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_CheckPersona_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        DrawText(Handle,CombinedString, -1, TempRect, DT_END_ELLIPSIS);
    end;
end;

procedure TfrmMain.DrawET_Comment(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var tempRect: TRect;
begin
    var CommentString: string;

    // load data from event
    if ((CurrentConversation <> nil) and (TConEventComment(ConEventList.Items.Objects[Index]) <> nil)) then
    begin
        CommentString := TConEventComment(ConEventList.Items.Objects[Index]).TextLine;
    end;

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
           if bUse3DSelectionFrame = True then
              DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка
           if (bHglEventsGradient = True) then
               GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
          else begin
               Brush.Color := clrHighlightEvent;
               FillRect(Rect); // Заполнение цветом
               end
        end else
        begin
           Brush.Color := RGB(238,238,238);
           FillRect(Rect); // Заполнение цветом
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;

        Brush.Style := bsClear;

        Font.Style := [fsBold];
        TextOut(Rect.Left + HeaderControl1.Sections[0].Width, Rect.Top, ET_Comment_Caption);

        Font.Style := [];

        tempRect := Rect;

        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME;
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;

        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;
        tempRect.Right := Rect.Right - SysScrollBarWidth; // right offset
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        DrawText(Handle,CommentString, -1, TempRect, DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
    end;
end;

procedure TfrmMain.DrawET_End(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var TempRect: TRect;
begin
    with (Control as TListBox).Canvas do
    begin
        Brush.Style := bsClear;

        if odSelected in State then
            begin
              if bUse3DSelectionFrame = True then
                 DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO);

              if bHglEventsGradient then
                 GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
              else begin
                 Brush.Color := clrHighlightEvent;
                 FillRect(Rect);
              end;
            end
            else
            begin
                Brush.Color := clWhite;
                FillRect(Rect); // Заполнение цветом
            end;

        TempRect := Rect;
        TempRect.Left := Rect.Left + HeaderControl1.Sections[0].Width;

        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;
        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
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
               idxStr := TConEvent(ConEventList.Items.Objects[Index]).EventIdx.toString;
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

//            if Event.bHighlightAsRelated = true then
//                GradientFillCanvas(TListBox(Control).Canvas, clYellow, clCream, tempRect, gdHorizontal)
//                else
                FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 64);
        end;

        if Event.EventHighlightType = EHT_Related then //Event.bHighlightAsRelated = true then
        begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;

            GradientFillCanvas(TListBox(Control).Canvas, clYellow, clCream, tempRect, gdHorizontal);
        end else
        if Event.EventHighlightType = EHT_Error then
        begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;

            GradientFillCanvas(TListBox(Control).Canvas, clRed, clWebOrange, tempRect, gdHorizontal);
        end;


        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
           Font.Color := clWhite else Font.Color := clMaroon;

        if bDrawEventIdx = True then
            TextOut(Rect.Left + 20, Rect.Top + 4, labelStr)
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

procedure TfrmMain.UnhighlightRelatedEvents();
begin
    if CurrentConversation = nil then Exit();

    for var unhglEvent in CurrentConversation.Events do
    begin
        //if unhglEvent.EventHighlightType = EHT_Related then
            unhglEvent.EventHighlightType := EHT_None;
    end;
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

procedure TfrmMain.HeaderControl1DrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
begin
    var TempRect := Rect;

    GradientFillCanvas(HeaderControl1.Canvas, clBtnFace, clBtnHighlight, Rect, gdVertical);

    with HeaderControl1.Canvas do
    begin
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME; // Шрифт
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;
        Font.Color := clBtnText;

        SetBkMode(Handle, TRANSPARENT); // Прозрачный фон.
        TempRect.Left := Rect.Left + 4; // Отступ
        DrawText(Handle, Section.Text, -1, TempRect, DT_END_ELLIPSIS); // Название
    end;

    if bFlatToolbar = False then
    begin
        var TempRect2 := Rect;

        Frame3D(HeaderControl1.Canvas, TempRect2, clBtnHighlight, clBtnShadow, 2);
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


    frmEditValue.receiver := control; // назначить имя элемента управления на переменную.
    frmEditValue.ShowModal();
end;

procedure TfrmMain.FillEventLabels(con: TConversation; listToFill: TCustomListControl);
begin
    listToFill.Clear();

    for var LBS := 0 to con.numEventList -1 do
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
    AddEvent(Comment1.Tag);
end;

procedure TfrmMain.Comment2Click(Sender: TObject);
begin
    InsertEvent(Comment2.Tag);
end;

procedure TfrmMain.ConEventListClick(Sender: TObject);
    var objStr: string;
begin
    UnhighlightRelatedEvents();

    if frmEventInsAdd.mp1.Mode = mpPlaying then // if we are playing some speech, stop it.
    begin
       frmEventInsAdd.mp1.Stop();
       frmEventInsAdd.btnPlayAudioFile.Caption := strPlayMP3;
    end;

    if TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]) <> nil then
       CurrentEvent := TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]);

    objStr:= ' EventType = ' + CurrentEvent.ClassName;

    Statusbar.Panels[0].Text := 'ItemIndex=' + ConEventList.ItemIndex.ToString + objStr +
    ' Value=' + ConEventList.Items.ValueFromIndex[ConEventList.ItemIndex];

    HighlightRelatedEvents();

//    frmLabelErrors.VerifyLabels(True);

    if frmEventInsAdd.Visible = true then
       ConEventListDblClick(Sender);

    ConEventList.Repaint();
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
begin
    DragIndex := ConEventList.ItemIndex;
    DropIndex := ConEventList.ItemAtPos(Point(X, Y), True);

    if (DragIndex <> -1) and (DropIndex <> -1) then
    begin
        ConEventList.Items.Move(DragIndex, DropIndex);
        ConEventList.ItemIndex := DropIndex;
    end;
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
//var
//    labelStr, idxStr: string;
//    tempRect: TRect;
begin
//    if ConEventList.Items.Count < 1 then
//        Exit();

//    if Assigned(ConEventList.Items.Objects[Index]) = false then
//        Exit();

    // ToDo: если событие содержит ссылки на события, подсветить их.

    with (Control as TListBox).Canvas do
    begin
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;

        Pen.Style := psInsideFrame;
        Frame3D(TListBox(Control).Canvas, Rect, clWhite, clrGrid, 1); // разделитель

{        if CurrentConversation <> nil then // Hide Event Index when needed
        begin
            if TConEvent(ConEventList.Items.Objects[Index]) <> nil then
            begin
               labelStr:= TConEvent(ConEventList.Items.Objects[Index]).EventLabel;
               idxStr := TConEvent(ConEventList.Items.Objects[Index]).EventIdx.toString;
            end;
        end; }

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

        HighlightSelectedEvent(Control, Index, Rect, State);

{        Font.Size := CEP_EVENT_LABEL_FONT_SIZE; //CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LABEL_FONT; //CEP_EVENT_LIST_FONT_NAME;
        Font.Style := [fsBold];

        if labelStr <> '' then
        begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;
            FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 64);
            //FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 48);
        end;

        HighlightEvent(Control, Index, Rect, State);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
           Font.Color := clWhite else Font.Color := clMaroon;

        if bDrawEventIdx = True then
            TextOut(Rect.Left + 20, Rect.Top + 4, labelStr)
        else
            TextOut(Rect.Left + 2, Rect.Top + 2, labelStr);

        // draw event index here (set color and draw text)
        if bDrawEventIdx = True then
        begin
            if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
               Font.Color := clYellow else Font.Color := clBlue;

            TextOut(Rect.Left, Rect.Top + 4, idxStr);
        end;}
    end;
end;

procedure TfrmMain.ConEventListMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
    if ConEventList.Items[Index].Contains(ET_Speech_Caption) = True then
       Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_Choice_Caption) = True then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_SetFlag_Caption) = true then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_CheckFlag_Caption) = True then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index] = ET_CheckObject_Caption then Height := 25; // fixed
    if ConEventList.Items[Index] = ET_TransferObject_Caption then Height := 35; // fixed
    if ConEventList.Items[Index] = ET_MoveCamera_Caption then Height := 25; // fixed
    if ConEventList.Items[Index] = ET_Animation_Caption then Height := 70; // fixed
    if ConEventList.Items[Index] = ET_Trade_Caption then Height := 44;  // fixed, also not implemented
    if ConEventList.Items[Index] = ET_Jump_Caption then Height := 50; // fixed

    if ConEventList.Items[Index].Contains(ET_Random_Caption) = True then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    if ConEventList.Items[Index] = ET_Trigger_Caption then Height := 42;  // fixed

    //if ConEventList.Items[Index] = ET_AddGoal_Caption then Height := 75;  // variable
    if ConEventList.Items[Index].Contains(ET_AddGoal_Caption) = True then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    //if ConEventList.Items[Index] = ET_AddNote_Caption then Height := 40;  // variable
    if ConEventList.Items[Index].Contains(ET_AddNote_Caption) = True then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    //if ConEventList.Items[Index] = ET_AddSkillPoints_Caption then Height := 58;  // variable
    if ConEventList.Items[Index].Contains(ET_AddSkillPoints_Caption) then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    if ConEventList.Items[Index] = ET_AddCredits_Caption then Height := 44;  // fixed
    if ConEventList.Items[Index] = ET_CheckPersona_Caption then Height := 42;  // fixed

    //if ConEventList.Items[Index] = ET_Comment_Caption then Height := 40; // variable
    if ConEventList.Items[Index].Contains(ET_Comment_Caption) then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    if ConEventList.Items[Index] = ET_End_Caption then Height := 25; // fixed
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
        for var i:= 0 to Length(fpMissions) -1 do begin
            AddLog( 'Used Mission numbers: ' + fpMissions[i].ToString);
        end;
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
    frmLabelErrors.VerifyLabels();

    if frmLabelErrors.lvLabelErrors.Items.Count > 0 then
        frmLabelErrors.Show() // only show if we have > 0 items!
    else
        MessageDlg(strLabelsValid,  mtInformation, [mbOK], 0);
end;

procedure TfrmMain.Conversation_PropertiesExecute(Sender: TObject);
begin
    if Assigned(CurrentConversation) = false then Exit();

    frmConvoProperties.EditConversation(CurrentConversation);
end;

procedure TfrmMain.ConvoTreeChange(Sender: TObject; Node: TTreeNode);
begin
    ConEventList.Enabled := Node.Level <> 2;

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
                ET_Speech: ConEventList.Items.AddPair(ET_Speech_Caption, GetSpeechEventItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_Choice: ConEventList.Items.AddPair(ET_Choice_Caption, GetChoiceItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_SetFlag: ConEventList.Items.AddPair(ET_SetFlag_Caption,GetSetFlagsItemHeight(CurrentConversation.Events[F]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_CheckFlag: ConEventList.Items.AddPair(ET_CheckFlag_Caption,GetCheckFlagsItemHeight(CurrentConversation.Events[F]).ToString,
                                                         CurrentConversation.Events[F]);

                ET_CheckObject: ConEventList.Items.AddObject(ET_CheckObject_Caption, CurrentConversation.Events[F]);
                ET_TransferObject: ConEventList.Items.AddObject(ET_TransferObject_Caption, CurrentConversation.Events[F]);
                ET_MoveCamera: ConEventList.Items.AddObject(ET_MoveCamera_Caption, CurrentConversation.Events[F]);
                ET_Animation: ConEventList.Items.AddObject(ET_Animation_Caption, CurrentConversation.Events[F]);
                ET_Trade: ConEventList.Items.AddObject(ET_Trade_Caption, CurrentConversation.Events[F]);
                ET_Jump: ConEventList.Items.AddObject(ET_Jump_Caption, CurrentConversation.Events[F]);

                ET_Random: ConEventList.Items.AddPair(ET_Random_Caption, GetRandomEventItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                ET_Trigger: ConEventList.Items.AddObject(ET_Trigger_Caption, CurrentConversation.Events[F]);

                //ET_AddGoal: ConEventList.Items.AddObject(ET_AddGoal_Caption, CurrentConversation.Events[F]);
                ET_AddGoal: ConEventList.Items.AddPair(ET_AddGoal_Caption, GetAddGoalItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_AddNote: ConEventList.Items.AddPair(ET_AddNote_Caption, GetAddNoteItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_AddSkillPoints: ConEventList.Items.AddPair(ET_AddSkillPoints_Caption, GetAddSkillPtsItemHeight([CurrentConversation.Events[F]]).ToString,
                                                              CurrentConversation.Events[F]);

                ET_AddCredits: ConEventList.Items.AddObject(ET_AddCredits_Caption, CurrentConversation.Events[F]);
                ET_CheckPersona: ConEventList.Items.AddObject(ET_CheckPersona_Caption, CurrentConversation.Events[F]);

                ET_Comment: ConEventList.Items.AddPair(ET_Comment_Caption, GetCommentItemHeight([CurrentConversation.Events[F]]).ToString,
                                                       CurrentConversation.Events[F]);

                ET_End: ConEventList.Items.AddObject(ET_End_Caption, CurrentConversation.Events[F]);
            end;
        end;

        FormResize(self);
        UnhighlightRelatedEvents();
    end;
end;

procedure TfrmMain.ConvoTreeDblClick(Sender: TObject);
var
    FlagNode: TTreeNode;
    FlagName: string;
    CurrentConvo: TConversation;
    flag: TFlag;
begin
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
        end;
    end;
end;

procedure TfrmMain.ConvoTreeEdited(Sender: TObject; Node: TTreeNode; var S: string);
begin
    // ToDo: Check if conversation can be renamed from here (name is valid, etc.)
    //TConversation(Node.data).conName := S;
end;

procedure TfrmMain.ConvoTreeEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
begin
//    if ((Assigned(Node.Data) = true) and (Node.Data is TConversation)) then
    if TObject(Node.Data) is TConversation then
    begin
        AllowEdit := True;
//        TConversation(Node.data).conName := Node.Text;
    end;
end;

procedure TfrmMain.End1Click(Sender: TObject);
begin
  AddEvent(End1.Tag);
end;

procedure TfrmMain.End2Click(Sender: TObject);
begin
  InsertEvent(End2.Tag);
end;

procedure TfrmMain.DateTimeToDouble1Click(Sender: TObject);
begin
    var testDT := Now();

    ShowMessage(testDT.ToString);
end;

procedure TfrmMain.DeleteConversationExecute(Sender: TObject);
begin
    if bAskForConvoDelete = true then
        if Application.MessageBox(PChar(strAskDeleteConvoText),PChar(strAskDeleteConvoTitle), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
        begin
            DeleteCurrentConversation();
        end
        else DeleteCurrentConversation();
end;

procedure TfrmMain.DeleteCurrentEvent();
begin
    Delete(CurrentConversation.Events, ConEventList.ItemIndex, 1); // Delete from array
    ConEventList.DeleteSelected(); // also delete from list
end;

procedure TfrmMain.DeleteCurrentConversation();
begin
    if CurrentConversation = nil then Exit();

    var convoTreeItem:= FindTreeItemByText(ConvoTree, CurrentConversation.conName);
    if convoTreeItem <> nil then
    begin
        var convoToDelete:= convoTreeItem.Data;

        ConversationsList.Remove(convoToDelete);
        ConvoTree.Items.Delete(convoTreeItem); // delete from tree
    end;

//    if CurrentConversation <> nil then
//        ConversationsList.Remove(CurrentConversation); // delete conversation from list

    AddLog(#13#10 + '------------- ConversationsList contents:');
    for var k:= 0 to ConversationsList.Count -1 do begin
        AddLog(ConversationsList.Items[k].conName + ' k = ' + k.ToString);
    end;
end;

procedure TfrmMain.EventListItems1Click(Sender: TObject);
begin
    for var i:= 0 to ConEventList.Count -1 do
        AddLog('ConEventList[' + i.ToString + '] ' + ConEventList.Items[i]);

end;

procedure TfrmMain.Event_CopyExecute(Sender: TObject);
begin
    if CurrentEvent <> nil then
        CopyEventToClipboard(CurrentEvent);
end;

procedure TfrmMain.Event_CutExecute(Sender: TObject);
begin
    if CurrentEvent <> nil then
    begin
        CopyEventToClipboard(CurrentEvent);
        DeleteCurrentEvent();
    end;
end;

procedure TfrmMain.Event_DeleteExecute(Sender: TObject);
begin
    if bAskForEventDelete = true then
    begin
        if MessageDlg(strAskDeleteEventText, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            DeleteCurrentEvent();
    end else
        DeleteCurrentEvent();
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

    if (EventToDuplicate is TConEvent) and (NewEvent is TConEvent) then
        CopyEventFields(TConEvent(EventToDuplicate), TConEvent(NewEvent));

    NewEvent.EventLabel := ''; // clear EventLabel to avoid duplicates
    NewEvent.EventIdx := -1; // Index will be set later

    Insert(NewEvent, CurrentConversation.Events, ItemIdx);

    SetEventIndexes();

    ConvoTreeChange(Self, ConvoTree.Selected);
    ConEventList.ItemIndex := ItemIdx;
end;

procedure TfrmMain.Event_PasteExecute(Sender: TObject);
begin
    PasteEventFromClipboard();
end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
    SaveCfg();
    Application.Terminate();
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

procedure TfrmMain.mnuEventIndexClick(Sender: TObject);
begin
    bDrawEventIdx := mnuEventIndex.Checked;
    ConEventList.Invalidate();
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    SaveCfg();
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    // register new clipboard format
    CF_ConEditPlus := RegisterClipboardFormat('CF_ConEditPlus');

    SysScrollBarWidth := GetSystemMetrics(SM_CXVSCROLL);

    Application.Title := strAppTitle;
    frmMain.Caption := Application.Title;

    LoadCfg();
    CreateObjectLists();
    ConvoTree.AlphaSort(True);

    ToggleMenusPanels(False);

    tbNewConversationFile.Hint := tbNewConversationFileHint;
    tbOpenFile.Hint := tbOpenFileHint;
    tbSaveFile.Hint := tbSaveFileHint;
    tbCloseFile.Hint := tbCloseFileHint;
    tbPrint.Hint := tbPrintHint;

    tbCut.Hint := tbCutHint;
    tbCopy.Hint := tbCopyHint;
    tbPaste.Hint := tbPasteHint;
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
        TablesMenu.Visible      := True;

        Close1.Visible          := True;
        Save1.Visible           := True;
        SaveAs1.Visible         := True;
        GenAudioNames.Visible   := True;
        ConvoProperties.Visible := True;
    end;

    if bVisible = False then
    begin
        pnlEventList.Hide();
        pnlConvoTree.Hide();
        Splitter1.Hide();
        TablesMenu.Visible      := False;

        Close1.Visible          := False;
        Save1.Visible           := False;
        SaveAs1.Visible         := False;
        GenAudioNames.Visible   := False;
        ConvoProperties.Visible := False;
    end;
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

procedure TfrmMain.FileCloseExecute(Sender: TObject);
begin
    CreateConFile(False);
    ToggleMenusPanels(False);
end;

procedure TfrmMain.FileGenerateAudioNamesExecute(Sender: TObject);
begin
    GenerateAudioFileNames();
    ConEventList.Invalidate();
end;

procedure TfrmMain.FileNewExecute(Sender: TObject);
begin
    CreateConFile(True);
end;

procedure TfrmMain.FileOpenDialogTypeChange(Sender: TObject);
begin
    OpenFileFilterIndex := FileOpenDialog.FileTypeIndex;
end;

procedure TfrmMain.FileOpenExecute(Sender: TObject);
begin
    ClearForNewFile(); // free memory before loading new file

    FileOpenDialog.FileTypeIndex := OpenFileFilterIndex; // restore filter index

    if FileOpenDialog.Execute() = true then
    begin
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

        StatusBar.Panels[1].Text := currentConFile; // filename in StatusBar
        AddRecentFile(currentConFile);  // Add to recent
        ToggleMenusPanels(True);
    end;
end;

procedure TfrmMain.FilePropertiesExecute(Sender: TObject);
begin
    frmConvoFileProperties.LoadAfterCreation();
    frmConvoFileProperties.ShowModal();
end;

procedure TfrmMain.FileSaveAsExecute(Sender: TObject);
begin
    var savefileName: string;

    if FileSaveDialog.Execute() = true then
    begin
//        ShowMessage('FileSaveDialog.FileTypeIndex = ' + FileSaveDialog.FileTypeIndex.ToString);

        if FileSaveDialog.FileTypeIndex = 1 then
        begin
            savefileName := FileSaveDialog.FileName;

            if ExtractFileExt(savefileName) = '' then
                savefileName := savefileName + '.xml';

            try
                StatusBar.Panels[1].Text := strSavingFile + savefileName;
                BuildConXMLFile(savefileName);
                StatusBar.Panels[1].Text := strSavedFile + savefileName;
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
                StatusBar.Panels[1].Text := strSavedFile + savefileName;
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
    if currentConFile <> '' then
    begin
        if LowerCase(ExtractFileExt(currentConFile)) = '.xml' then
        begin
            try
                StatusBar.Panels[1].Text := strSavingFile + currentConFile;
                BuildConXMLFile(currentConFile);
                StatusBar.Panels[1].Text := strSavedFile + currentConFile;
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
                StatusBar.Panels[1].Text := strSavedFile + currentConFile;
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

procedure TfrmMain.Setflag1Click(Sender: TObject);
begin
    AddEvent(SetFlag1.Tag);
end;

procedure TfrmMain.Setflag2Click(Sender: TObject);
begin
    InsertEvent(SetFlag2.Tag);
end;

procedure TfrmMain.Speech1Click(Sender: TObject);
begin
    AddEvent(Speech1.Tag);
end;

procedure TfrmMain.Speech2Click(Sender: TObject);
begin
    InsertEvent(Speech2.Tag);
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

procedure TfrmMain.mnuStatusbarClick(Sender: TObject);
begin
    bShowStatusBar := mnuStatusbar.Checked;
    StatusBar.Visible := mnuStatusbar.Checked;
end;

procedure TfrmMain.BuySellTrade1Click(Sender: TObject);
begin
    AddEvent(BuySellTrade1.Tag);
end;

procedure TfrmMain.BuySellTrade2Click(Sender: TObject);
begin
    InsertEvent(BuySellTrade2.Tag);
end;

procedure TfrmMain.Checkflag1Click(Sender: TObject);
begin
    AddEvent(CheckFlag1.Tag);
end;

procedure TfrmMain.Checkflag2Click(Sender: TObject);
begin
    InsertEvent(CheckFlag2.Tag);
end;

procedure TfrmMain.CheckObject1Click(Sender: TObject);
begin
    AddEvent(CheckObject1.Tag);
end;

procedure TfrmMain.CheckObject2Click(Sender: TObject);
begin
    InsertEvent(CheckObject2.Tag);
end;

procedure TfrmMain.CheckPersona1Click(Sender: TObject);
begin
    AddEvent(CheckPersona1.Tag);
end;

procedure TfrmMain.CheckPersona2Click(Sender: TObject);
begin
    InsertEvent(CheckPersona2.Tag);
end;

procedure TfrmMain.Choice1Click(Sender: TObject);
begin
    AddEvent(Choice1.Tag);
end;

procedure TfrmMain.Choice2Click(Sender: TObject);
begin
    InsertEvent(Choice2.Tag);
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
    AddEvent(AddCompleteGoal1.Tag);
end;

procedure TfrmMain.AddCompleteGoal2Click(Sender: TObject);
begin
    InsertEvent(AddCompleteGoal2.Tag);
end;

procedure TfrmMain.AddConversationExecute(Sender: TObject);
begin
    frmConvoProperties.EditMode := em_Create;
    frmConvoProperties.ShowModal();
end;

procedure TfrmMain.AddCredits1Click(Sender: TObject);
begin
    AddEvent(AddCredits1.Tag);
end;

procedure TfrmMain.AddCredits2Click(Sender: TObject);
begin
    InsertEvent(AddCredits2.Tag);
end;

procedure TfrmMain.AddEvent(TargetPage: Integer); // Add event to end
begin
    frmEventInsAdd.editEventLabel.Clear();

    case TargetPage of
    0: // speech
    begin
        frmEventInsAdd.cmbSpeakingFrom.Clear();
        frmEventInsAdd.cmbSpeakingFrom.Items.Assign(frmMain.conFileParameters.fpActors);

        // Speaking To
        frmEventInsAdd.cmbSpeakingTo.Clear();
        frmEventInsAdd.cmbSpeakingTo.Items.Assign(frmMain.conFileParameters.fpActors);

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

    if (frmEventInsAdd.Visible = false) then
    frmEventInsAdd.Show();

    frmEventInsAdd.cmbEventType.ItemIndex := TargetPage;
    frmEventInsAdd.EventsPages.TabIndex := TargetPage;
    frmEventInsAdd.cmbEventTypeChange(Self);
end;

procedure TfrmMain.InsertEvent(TargetPage: Integer); // Insert event at current position (in the event list)
begin
    if (frmEventInsAdd.Visible = false) then
    frmEventInsAdd.Show();

    frmEventInsAdd.cmbEventType.ItemIndex := TargetPage;
    frmEventInsAdd.EventsPages.TabIndex := TargetPage;
    frmEventInsAdd.cmbEventTypeChange(Self);
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
    if (EventToEdit is TConEventSpeech) then begin
        frmEventInsAdd.FillSpeech(TConEventSpeech(EventToEdit));
    end else
    if (EventToEdit is TConEventChoice) then begin
        frmEventInsAdd.FillChoice(TConEventChoice(EventToEdit));
    end else
    if (EventToEdit is TConEventSetFlag) then begin
        frmEventInsAdd.FillSetFlags(TConEventSetFlag(EventToEdit));
    end else
    if (EventToEdit is TConEventCheckFlag) then begin
        frmEventInsAdd.FillCheckFlag(TConEventCheckFlag(EventToEdit));
    end else
    if (EventToEdit is TConEventCheckObject) then begin
        frmEventInsAdd.FillCheckObject(TConEventCheckObject(EventToEdit));
    end else
    if (EventToEdit is TConEventTransferObject) then begin
        frmEventInsAdd.FillTransferObject(TConEventTransferObject(EventToEdit));
    end else
    if (EventToEdit is TConEventMoveCamera) then begin
        frmEventInsAdd.FillMoveCamera(TConEventMoveCamera(EventToEdit));
    end else
    if (EventToEdit is TConEventAnimation) then begin
        frmEventInsAdd.FillPlayAnim(TConEventAnimation(EventToEdit));
    end else     // Trade has been skipped
    if (EventToEdit is TConEventJump) then begin
        frmEventInsAdd.FillJump(TConEventJump(EventToEdit));
    end else
    if (EventToEdit is TConEventRandom) then begin
        frmEventInsAdd.FillRandom(TConEventRandom(EventToEdit));
    end else
    if (EventToEdit is TConEventTrigger) then begin
        frmEventInsAdd.FillTrigger(TConEventTrigger(EventToEdit));
    end else
    if (EventToEdit is TConEventAddGoal) then begin
        frmEventInsAdd.FillGoal(TConEventAddGoal(EventToEdit));
    end else
    if (EventToEdit is TConEventAddNote) then begin
        frmEventInsAdd.FillNote(TConEventAddNote(EventToEdit));
    end else
    if (EventToEdit is TConEventAddSkillPoints) then begin
        frmEventInsAdd.FillSkillPoints(TConEventAddSkillPoints(EventToEdit));
    end else
    if (EventToEdit is TConEventAddCredits) then begin
        frmEventInsAdd.FillCredits(TConEventAddCredits(EventToEdit));
    end else
    if (EventToEdit is TConEventCheckPersona) then begin
        frmEventInsAdd.FillCheckPersona(TConEventCheckPersona(EventToEdit));
    end else
    if (EventToEdit is TConEventComment) then begin
        frmEventInsAdd.FillComment(TConEventComment(EventToEdit));
    end else
    if (EventToEdit is TConEventEnd) then begin
        frmEventInsAdd.FillEnd(TConEventEnd(EventToEdit));
    end;

    if frmEventInsAdd.Visible = false then begin
        frmEventInsAdd.cmbEventType.Enabled := False;
        frmEventInsAdd.Show();
    end;
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
    AddEvent(AddNote1.Tag);
end;

procedure TfrmMain.AddNote2Click(Sender: TObject);
begin
    InsertEvent(AddNote2.Tag);
end;

procedure TfrmMain.AddSkillPoints1Click(Sender: TObject);
begin
    AddEvent(AddSkillPoints1.Tag);
end;

procedure TfrmMain.AddSkillPoints2Click(Sender: TObject);
begin
    InsertEvent(AddSkillPoints2.Tag);
end;

procedure TfrmMain.tbGenerateAudioDirsClick(Sender: TObject);
begin
    if SelectDirDialog.Execute() = True then
    begin
        CreateAudioDirectories(SelectDirDialog.FileName + '\');
    end;
end;

procedure TfrmMain.btnReorderClick(Sender: TObject);
begin
    if btnReorder.Down = true then ConEventList.DragMode := TDragMode.dmAutomatic
        else ConEventList.DragMode := TDragMode.dmManual;
end;

procedure TfrmMain.tbStickyWindowClick(Sender: TObject);
begin
    ScreenSnap := tbStickyWindow.Down;
end;

procedure TfrmMain.Jump1Click(Sender: TObject);
begin
    AddEvent(Jump1.Tag);
end;

procedure TfrmMain.Jump2Click(Sender: TObject);
begin
    InsertEvent(Jump2.Tag);
end;

procedure TfrmMain.IndexEvents1Click(Sender: TObject);
begin
    SetEventIndexes();
end;

procedure TfrmMain.MenuMainChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
var i: Integer;
begin
//    PasteEvent.Enabled := HasConvoEventToPaste();

    for i := 0 to 7 do
        mniRecent.Items[i].Visible := mniRecent.Items[i].Caption <> '';

//    ConvoProperties.Enabled := conXmlFile <> '';
end;

procedure TfrmMain.MoveCamera1Click(Sender: TObject);
begin
    AddEvent(MoveCamera1.Tag);
end;

procedure TfrmMain.MoveCamera2Click(Sender: TObject);
begin
    InsertEvent(MoveCamera2.Tag);
end;

procedure TfrmMain.Objects1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := TM_Objects;
    frmTableEdit.lstTableContents.Items := frmMain.listObjects;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.mnuToggleMainToolBarClick(Sender: TObject);
begin
    bShowToolbar := mnuToggleMainToolBar.Checked;
    MainToolBar.Visible := mnuToggleMainToolBar.Checked;
end;

procedure TfrmMain.mnuGithubClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://github.com/LoadLineCalibration/Convedit_Plus', nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.PlayAnimation1Click(Sender: TObject);
begin
    AddEvent(PlayAnimation1.Tag);
end;

procedure TfrmMain.PlayAnimation2Click(Sender: TObject);
begin
    InsertEvent(PlayAnimation2.Tag);
end;

procedure TfrmMain.PopupConvoEventListPopup(Sender: TObject); // Enable/disable some menu items...
begin
{    if (ConvoTree.Items.Count < 1) or (ConvoTree.Selected.Level <> 1) then
    begin
        Add2.Enabled := False;
        Insert2.Enabled := false;
        Edit1.Enabled := false;
        Delete1.Enabled := false;
        Cut3.Enabled := false;
        Copy3.Enabled := false;
        PasteConvoEvent.Enabled := False;
        Event_Duplicate.Enabled := False;
    end else}
    if ConEventList.ItemIndex = -1 then
    begin
        Add2.Enabled := true;
        Insert2.Enabled := false;
        Edit1.Enabled := false;
        Delete1.Enabled := false;
        Cut3.Enabled := false;
        Copy3.Enabled := false;
        PasteConvoEvent.Enabled := False;
        Event_Duplicate.Enabled := False;
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
    end;
end;

procedure TfrmMain.PopupTreePopup(Sender: TObject); // block some menu items depending on selection
begin
    if ConvoTree.Items.Count < 2 then Exit();

    if TreeHasItemsOfLevel(ConvoTree, 1) = true then
    begin
        DeleteConversation.Enabled := ConvoTree.Selected.Level = 1;
        Conversation_Properties.Enabled := ConvoTree.Selected.Level = 1;
    end
    else begin
        DeleteConversation.Enabled := ConvoTree.Selected.Level = 1;
        Conversation_Properties.Enabled := ConvoTree.Selected.Level = 1;
    end;
end;

procedure TfrmMain.Random1Click(Sender: TObject);
begin
    AddEvent(Random1.Tag);
end;

procedure TfrmMain.Random2Click(Sender: TObject);
begin
    InsertEvent(Random2.Tag);
end;

procedure TfrmMain.RecentFile0Click(Sender: TObject);
begin
    var fileName := (Sender as TMenuItem).Caption;

    if FileExists(fileName) = True then
        OpenRecentFile(fileName)
    else
        MessageDlg('Such file does not exists!',  mtError, [mbOK], 0);
end;

procedure TfrmMain.tbPrintClick(Sender: TObject);
begin
    MessageDlg('Printing is not implemented yet ',  mtWarning, [mbOK], 0);
end;

procedure TfrmMain.tbSearchClick(Sender: TObject);
begin
    frmFind.Show();
end;

procedure TfrmMain.tmrEventWinPosSyncTimer(Sender: TObject);
begin
    if (frmEventInsAdd.Visible = True) and (frmEventInsAdd.chkFollowMainWindow.Checked = True) then
    begin
        frmEventInsAdd.Left := frmMain.Left + eventsFormLeft;
        frmEventInsAdd.Top := frmMain.Top + eventsFormTop;
    end;
end;

procedure TfrmMain.TransferObject1Click(Sender: TObject);
begin
    AddEvent(TransferObject1.Tag);
end;

procedure TfrmMain.TransferObject2Click(Sender: TObject);
begin
    InsertEvent(TransferObject2.Tag);
end;

procedure TfrmMain.Trigger1Click(Sender: TObject);
begin
    AddEvent(Trigger1.Tag);
end;

procedure TfrmMain.Trigger2Click(Sender: TObject);
begin
    InsertEvent(Trigger2.Tag);
end;

procedure TfrmMain.ViewoutputTMemo1Click(Sender: TObject);
begin
    mmoOutput.Visible := ViewoutputTMemo1.Checked;

    if (Sender is TButton) or (Sender is TToolButton) then
        ViewoutputTMemo1.Click();

    btnCloseLog.Visible := mmoOutput.Visible;
    btnViewLog.Down := mmoOutput.Visible;
end;

end.
