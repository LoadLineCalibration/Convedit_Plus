unit MainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, ConvEditPlus_Const,
  Vcl.ComCtrls, System.Types, Vcl.Buttons, Vcl.ToolWin, System.IniFiles, System.IOUtils, Conversation.Classes,
  System.ImageList, Vcl.ImgList, Table, Vcl.GraphUtil, ES.BaseControls, ES.Layouts, System.Actions, Vcl.ActnList,
  System.Generics.Collections, System.TypInfo, xml.VerySimple, System.StrUtils, Vcl.MPlayer;


type
  TfrmMain = class(TForm)

    PopupTree: TPopupMenu;
    MenuMain: TMainMenu;
    File1: TMenuItem;
    Conversation1: TMenuItem;
    Events1: TMenuItem;
    Tables1: TMenuItem;
    View1: TMenuItem;
    mnuHelp: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Close1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Generateaudiofilenames1: TMenuItem;
    ConvoProperties: TMenuItem;
    mniRecent: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Exit1: TMenuItem;
    AddConversation1: TMenuItem;
    DeleteConversation1: TMenuItem;
    N5: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N6: TMenuItem;
    Checklabels1: TMenuItem;
    Properties3: TMenuItem;
    Find1: TMenuItem;
    N7: TMenuItem;
    Expandall1: TMenuItem;
    Collapseall1: TMenuItem;
    Add1: TMenuItem;
    Insert1: TMenuItem;
    N8: TMenuItem;
    Cut2: TMenuItem;
    Copy2: TMenuItem;
    PasteEvent: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ActorsPawns1: TMenuItem;
    Flags1: TMenuItem;
    Skills1: TMenuItem;
    Objects1: TMenuItem;
    mnuToggleMainToolBar: TMenuItem;
    mnuStatusbar: TMenuItem;
    mnuExpandedEventList1: TMenuItem;
    mnuShowAudioFiles1: TMenuItem;
    PopupConvoEventList: TPopupMenu;
    pnlConvoTree: TPanel;
    Splitter1: TSplitter;
    ConvoTree: TTreeView;
    pnlToolBar: TPanel;
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
    ExpandAll2: TMenuItem;
    CollapseAll2: TMenuItem;
    mainToolBar: TToolBar;
    tbNewConversationFile: TToolButton;
    tbOpenFile: TToolButton;
    tbSaveFile: TToolButton;
    ToolButton5: TToolButton;
    tbPrint: TToolButton;
    tbCut: TToolButton;
    tbCopy: TToolButton;
    tbPaste: TToolButton;
    ToolButton11: TToolButton;
    tbSearch: TToolButton;
    tbProperties: TToolButton;
    ImageListToolbar: TImageList;
    N15: TMenuItem;
    About1: TMenuItem;
    pnlSearchBox: TPanel;
    cmbSearch: TComboBox;
    Label1: TLabel;
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
    Placeholder1: TMenuItem;
    Exporttoconfile1: TMenuItem;
    N17: TMenuItem;
    EsPanel1: TEsPanel;
    ToolButton1: TToolButton;
    tbSettings: TToolButton;
    ActionList1: TActionList;
    FileOpen: TAction;
    FileNew: TAction;
    FileClose: TAction;
    FileSave: TAction;
    FileSaveAs: TAction;
    FileExportToCon: TAction;
    FileGenerateAudioNames: TAction;
    FileProperties: TAction;
    AddConversation: TAction;
    DeleteConversation: TAction;
    Conversation_Cut: TAction;
    Conversation_Copy: TAction;
    Conversation_Paste: TAction;
    Check_Labels: TAction;
    Conversation_Properties: TAction;
    Conversation_Find: TAction;
    ConTree_ExpandAll: TAction;
    ConTree_CollapseAll: TAction;
    Event_Add: TAction;
    Event_Insert: TAction;
    Event_Cut: TAction;
    Event_Copy: TAction;
    Event_Paste: TAction;
    Event_Delete: TAction;
    ShowOptions: TAction;
    FileSaveDialog: TFileSaveDialog;
    Action1: TAction;
    N18: TMenuItem;
    ViewoutputTMemo1: TMenuItem;
    mmoOutput: TMemo;
    pmOutput: TPopupMenu;
    ConFileParameters1: TMenuItem;
    Clear1: TMenuItem;
    ConversationsListCount1: TMenuItem;
    MeasureItems1: TMenuItem;
    btnReorder: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    btnStickyWindow: TToolButton;
    btnCloseLog: TButton;
    ToolButton4: TToolButton;
    btnViewLog: TToolButton;
    N19: TMenuItem;
    ClearForNewFile1: TMenuItem;
    CreateTestFile1: TMenuItem;
    procedure mnuToggleMainToolBarClick(Sender: TObject);
    procedure mnuStatusbarClick(Sender: TObject);
    procedure Properties3Click(Sender: TObject);
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

    function GetFlagsSize(events: array of TConEvent): Integer;
    function GetChkFlagsSize(events: array of TConEvent): Integer;
    function CountLineBreaks(str: string): Integer;
    function GetSpeechEventItemHeight(events: array of TConEvent): Integer;
    function GetRandomEventItemHeight(events: array of TConEvent): Integer;
    function GetNumChoiceLines(events: array of TConEvent): Integer;

    function FindConversationObjById(idToLookFor: Integer): TConversation; // Returns object
    function FindConversationById(id: Integer): string; // Find conversation by id and return it's name as string;

    function FindTableIdByName(tableMode: TTableMode; NameToLookFor: string): Integer;
    function FindTableNameById(tableMode: TTableMode; idToLookFor: Integer): String;

    function TreeHasItemsOfLevel(Tree: TTreeView; LevelToCheck: Integer): Boolean;
    function ItemExistsInTreeView(TreeView: TTreeView; ItemText: string): Boolean;
    function FindTreeItemByText(TreeView: TTreeView; Text: string): TTreeNode;


    procedure SetMemoFont(FontSize: Integer; FontName: string);
    procedure PickTableObject(newTableMode: TTableMode; control: TControl);
    procedure FirstTimeLaunch();

    procedure ClearForNewFile();

    // loading and saving configuration file
    procedure LoadCfg();
    procedure SaveCfg();

    procedure AddRecentFile(aFile: string); // add opened file to "recent" list
    procedure ClearRecentFiles();
    procedure OpenRecentFile(aFile: string);

    procedure CloseXMLfile(); // save our conXML file

    procedure LoadConXMLFile(aFileName: string);

    procedure AddLog(msg: string);
    procedure DeleteCurrentEvent();
    procedure DeleteCurrentConversation();

    procedure CreateObjectLists();

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

    procedure FormResize(Sender: TObject);
    procedure ExpandAll2Click(Sender: TObject);
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
    procedure Close1Click(Sender: TObject);
    procedure mnuShowAudioFiles1Click(Sender: TObject);
    procedure mnuExpandedEventList1Click(Sender: TObject);
    procedure RecentFile0Click(Sender: TObject);
    procedure ConEventListDblClick(Sender: TObject);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
    procedure ShowOptionsExecute(Sender: TObject);
    procedure FileNewExecute(Sender: TObject);
    procedure FilePropertiesExecute(Sender: TObject);
    procedure FileOpenExecute(Sender: TObject);
    procedure FileSaveAsExecute(Sender: TObject);
    procedure ConvoTreeChange(Sender: TObject; Node: TTreeNode);
    procedure ConEventListMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ViewoutputTMemo1Click(Sender: TObject);
    procedure ConFileParameters1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure ConversationsListCount1Click(Sender: TObject);
    procedure MeasureItems1Click(Sender: TObject);
    procedure Event_DeleteExecute(Sender: TObject);
    procedure AddConversationExecute(Sender: TObject);
    procedure DeleteConversationExecute(Sender: TObject);
    procedure ConEventListDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ConEventListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnReorderClick(Sender: TObject);
    procedure btnStickyWindowClick(Sender: TObject);
    procedure ClearForNewFile1Click(Sender: TObject);
    procedure CreateTestFile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    conFileParameters: TConFileParameters; // To store basic data (header)

    ConversationsList: TObjectList<TConversation>; // To store conversations and their events
    CurrentConversation: TConversation; // Conversation currently selected in ConvoTree
    GoBackConversation: TConversation; // for "Go back" button
    CurrentEvent: TConEvent; // Current (selected) event in event list

    // sets of strings to store Tables
    listPawnsActors: TStringList;
    listFlags: TStringList;
    listSkills: TStringList;
    listObjects: TStringList;
//    CurrentEventType: TEventType;

    // Configuration file

    // color variables for configuration file (clrGrid is color of separators between events)
    clrHighlightEvent, clrHighlightEventFrom, clrHighlightEventTo, clrGrid: TColor;

    // boolean variables for configuration file
    bShowAudioFiles, bShowStatusBar, bShowToolbar, bExpandedEventList,
    bExpandFlagsOnExpandAll,
    bAskForConvoDelete, bAskForEventDelete, bHglEventWithNoAudio,
    bHglEventsGradient, bFlatToolbar, bAutoSaveEnabled,
    bUse3DSelectionFrame, bUseWhiteSelectedText: Boolean;

    // strings
    ConversationUserName,
    ConFilePath, ConFileBakPath, ConFileAudioPath: string;

    // Integer values
    AutoSaveMinutes: Integer;

    // to store recent files!
    RecentFiles: array[0..CEP_MAX_RECENT_FILES] of string;

    ReorderModKey: TReorderEventsModKey; // Hold xxx key to reorder events
    OpenFileFilterIndex, SaveFileFilterIndex: Integer; // save last selected file filter when opening/saving file. Also to save some of my time :D

    // end of configuration file variables

    MainFormIni: TIniFile;     // ini file

    conXmlFile: string; // global variable, so I can use it anywhere...
  end;

var
  frmMain: TfrmMain;


implementation

{$R *.dfm}

uses frmSettings1, EditValueDialog, ConFileProperties, AboutBox1, ConvoProperties, frmFind1, AddInsertEvent,
     ConXml.Reader, ConXML.Writer, confile.Reader, conFile.Writer;


function TfrmMain.GetFlagsSize(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventSetFlag then begin
           aLength := TConEventSetFlag(events[L]).numFlags; //ArrayLength;
        end;
    end;

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each flag string
    Result := dResult;
end;

function TfrmMain.GetChkFlagsSize(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventCheckFlag then
           aLength := TConEventCheckFlag(events[L]).numFlags; //ArrayLength;
    end;

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each flag string
    Result := dResult;
end;

function TfrmMain.GetNumChoiceLines(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventChoice then begin
           aLength := TConEventChoice(events[L]).NumChoices + TConEventChoice(events[L]).NumFlagsStrings;
        end;
    end;

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each Choice Item + space for flags
    Result := dResult;
end;

function TfrmMain.CountLineBreaks(str: string): Integer;
begin
    var counter: Integer := 0;
    var Parts := str.Split([#13]);
    //var Parts := str.Split([#10]);

    for var Part in Parts do
    begin
        if Part <> '' then
           Inc(counter);
    end;

    Result := counter;
end;

function TfrmMain.GetSpeechEventItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventSpeech then begin
           aLength := TConEventSpeech(events[L]).LineBreaksCount;
        end;
    end;

    dResult := 20 + (17 * aLength); // 20 for name and 17 for each speech string

    if dResult > 254 then dResult:= 254;  // We are reached the limit!

    Result := dResult;
end;

function TfrmMain.GetRandomEventItemHeight(events: array of TConEvent): Integer;
begin
    var aLength, dResult: Integer;

    aLength := 0;

    for var L:= 0 to Length(events) -1 do
    begin
        if events[L] is TConEventRandom then begin
           aLength := Length(TConEventRandom(events[L]).GoToLabels);
        end;
    end;

    dResult := 38 + (17 * aLength); // 20 for name and 17 for each flag string
    Result := dResult;
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
        if TreeView.Items[i].Text = ItemText then
        begin
            Result := True;
            Break; // Exit the loop if the item is found
        end;
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

procedure SelectTreeItemByObject(TreeView: TTreeView; Obj: TObject);
var
  Node: TTreeNode;
begin
  // Traverse the TreeView to find the desired item
  Node := FindItemByObject(TreeView.Items.GetFirstNode, Obj);

  // If the item is found, select it
  if Node <> nil then
    Node.Selected := True;
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
    var tempCon: TConversation;
begin
    tempCon:= nil;

    for var K:= 0 to ConversationsList.Count -1 do
    begin
        if ConversationsList.Items[K].id = idToLookFor then begin
           tempCon := ConversationsList.Items[K];
                //ShowMessage('Found conversation: ' + tempCon.conName + ' id=' + tempCon.id.ToString);
           Break;
        end;
    end;

    Result := tempCon;
end;

function TfrmMain.FindTableIdByName(tableMode: TTableMode; NameToLookFor: string): Integer;
var
    tempInteger: Integer;
begin
    result := -1;

    case tableMode of
        tmActorsPawns:
                 begin
                     tempInteger := listPawnsActors.IndexOf(NameToLookFor);
                     if tempInteger <> -1 then
                        result := tempInteger;
                 end;

        tmFlags:
                 begin
                     tempInteger := listFlags.IndexOf(NameToLookFor);
                     if tempInteger <> -1 then
                        result := tempInteger;
                 end;

        tmSkills:
                 begin
                     tempInteger := listSkills.IndexOf(NameToLookFor);
                     if tempInteger <> -1 then
                        result := tempInteger;
                 end;

        tmObjects:
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
     tmActorsPawns:
               begin
                 tempStr:= listPawnsActors.Strings[idToLookFor];
                 result := tempStr;
               end;

            tmFlags:
               begin
                 tempStr:= listFlags.Strings[idToLookFor];
                 result := tempStr;
               end;

           tmSkills:
               begin
                 tempStr:= listSkills.Strings[idToLookFor];
                 result := tempStr;
               end;

          tmObjects:
               begin
                 tempStr:= listObjects.Strings[idToLookFor];
                 result := tempStr;
               end;
    end;
end;

procedure TfrmMain.AddLog(msg: string);
begin
//    mmoOutput.Lines.Add(msg);
end;

function TfrmMain.GetReorderButtonHint(): string;
begin
    case ReorderModKey of
      re_Ctrl: Result :=  Format(btnReorderHint, ['Ctrl']);
      re_Shift: Result := Format(btnReorderHint, ['Shift']);
      re_Alt: Result :=   Format(btnReorderHint, ['Alt']);
    end;
end;

procedure TfrmMain.LoadConXMLFile(aFileName: string);
begin
    if FileExists(aFileName) = false then
    begin
        Application.MessageBox(PWideChar(aFileName + ': Such file does not exists! Operation cancelled.'),'Error', MB_OK + MB_ICONSTOP + MB_TOPMOST);
           for var R:= 0 to Length(RecentFiles) -1 do begin
           if aFileName = RecentFiles[R] then
            begin
                ShowMessage('Remove non-existing file');
                RecentFiles[R]:='';
            end;
        end;

       Exit();
    end;

    LoadConXMLHeader(aFileName);
    LoadConXMLConversations(aFileName)
end;

procedure TfrmMain.FirstTimeLaunch();// First launch?
var iniName, aPath: string;
begin
    aPath := ExtractFilePath(Application.ExeName);
    iniName := TPath.GetFileNameWithoutExtension(Application.ExeName) + '.ini';

    if FileExists(aPath + iniName) = false then
        frmSettings.ShowModal();
end;

procedure TfrmMain.ClearForNewFile();
begin
    for var i:= 0 to ConvoTree.Items.Count -1 do
    begin
        if Assigned(ConvoTree.Items[i].Data) then
        begin
//            AddLog('free object: ' + TConBaseObject(ConvoTree.Items[i].Data).ToString + i.ToString);
            TConBaseObject(ConvoTree.Items[i].Data).Free();
        end;
    end;
    ConvoTree.Items.Clear();


end;

procedure TfrmMain.ClearForNewFile1Click(Sender: TObject);
begin
    ClearForNewFile();
end;

procedure TfrmMain.OpenRecentFile(aFile: string);
begin
// ToDo: Add check if file has been modified, ask to save, etc.
    if LowerCase(ExtractFileExt(aFile)) = '.xml' then
         LoadConXMLFile(aFile) else
    if LowerCase(ExtractFileExt(aFile)) = '.con' then
         LoadConFile(aFile)
         else
    begin
       MessageDlg('Unknown file!',  mtWarning, [mbOK], 0);
       Exit();
    end;
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

procedure TfrmMain.CloseXMLfile();
begin
    ConversationsList.Clear();
    conFileParameters.Clear();
end;

procedure TfrmMain.LoadCfg();
var i: Integer;
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
      pnlToolBar.Visible := bShowToolbar;
      mnuToggleMainToolBar.Checked := bShowToolbar;

     bExpandedEventList := ReadBool('frmMain', 'bExpandedEventList', true);


    // Settings form
     ConversationUserName := ReadString('frmMain', 'UserName', 'ConvEdit+');
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

     ReorderModKey := TReorderEventsModKey(ReadInteger('frmMain', 'ReorderModKey', 0));

     btnReorder.Hint := GetReorderButtonHint(); // Update button tooltip

     // up to 8 recent files
     for i := 0 to CEP_MAX_RECENT_FILES do begin
         RecentFiles[i] := ReadString('RecentFiles', 'RecentFile'+i.ToString , '');
         mniRecent.Items[i].Caption := RecentFiles[i];
     end;
    end;
   finally
     MainFormIni.Free();
   end;
end;

procedure TfrmMain.SaveCfg();
var i: Integer;
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

     WriteInteger('frmMain', 'ReorderModKey',Ord(ReorderModKey));

     // up to 8 recent files
     for i := 0 to CEP_MAX_RECENT_FILES do
         WriteString('RecentFiles', 'RecentFile'+i.ToString, RecentFiles[i]);
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

        for var E:= 0 to EventChoice.NumChoices -1 do begin

            Inc(tempRect.Top, 17);
            if EventChoice.Choices[E].bSkillNeeded = 0 then begin // skill required = true
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

                DrawText(handle, Format(strChoiceWithSkills, [EventChoice.Choices[E].textline,
                                                              EventChoice.Choices[E].GoToLabel,
                                                              EventChoice.Choices[E].Skill,
                                                              EventChoice.Choices[E].mp3]),
                                                              -1, TempRect, DT_END_ELLIPSIS);

                if Length(EventChoice.Choices[E].RequiredFlags) > 0 then begin

                    Font.Name := CEP_EVENT_LIST_FONT_NAME;
                    Font.Size := CEP_EVENT_LIST_FONT_SIZE;
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;

                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do begin
                        FlagsStr :=  FlagsStr + '[' + EventChoice.Choices[E].RequiredFlags[F].flagName + '='
                                           + BoolToStr(EventChoice.Choices[E].RequiredFlags[F].flagValue, True) + '] ';
                    end;

                    Inc(tempRect.Top, 17);
                    DrawText(Handle,strDependsOnFlag + FlagsStr, -1, tempRect, DT_END_ELLIPSIS);

                    Font.Name := CEP_SPEECH_EVENT_FONT;
                    Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;
                end;
            end else begin
                if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

                DrawText(handle, Format(strChoiceNoSkills, [EventChoice.Choices[E].textline,
                                                            EventChoice.Choices[E].GoToLabel,
                                                            EventChoice.Choices[E].mp3]),
                                                            -1, TempRect, DT_END_ELLIPSIS);

                if Length(EventChoice.Choices[E].RequiredFlags) > 0 then begin

                    Font.Name := CEP_EVENT_LIST_FONT_NAME;
                    Font.Size := CEP_EVENT_LIST_FONT_SIZE;
                    if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clYellow else Font.Color := clBlue;

                    for var F := 0 to Length(EventChoice.Choices[E].RequiredFlags) -1 do begin
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

        if PlayAnimDurationSec > 0 then begin
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
        end else begin
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

        if {(odSelected in State) and} (CurrentConversationId <> JumpToConversationId) then
        begin
            ButtonRect := Rect;
            ButtonRect.Left := Rect.Left + 5;
            ButtonRect.Width := 135;
            ButtonRect.Top:= Rect.Top + 20;
            ButtonRect.Bottom:= Rect.Bottom - 5;
            Font.Style := [TFontStyle.fsUnderline];
            TextOut(ButtonRect.Left + 3, ButtonRect.Top + 1, 'Goto this conversation');
        end;
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
        GoalName := TConEventAddGoal(ConEventList.Items.Objects[Index]).GoalName;
        bComplete := TConEventAddGoal(ConEventList.Items.Objects[Index]).bComplete;
        GoalText := TConEventAddGoal(ConEventList.Items.Objects[Index]).GoalText;
        bPrimaryGoal := TConEventAddGoal(ConEventList.Items.Objects[Index]).bPrimaryGoal;
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
        DrawText(Handle,strGoalName + GoalName, -1, TempRect, DT_END_ELLIPSIS);
        Inc(tempRect.Top, 16);
        DrawText(Handle,strGoalText + GoalText, -1, TempRect, DT_END_ELLIPSIS);

        if bPrimaryGoal = true then
        begin
            Inc(tempRect.Top, 20);
            DrawText(Handle, strPrimaryGoal, -1, TempRect, DT_END_ELLIPSIS);
        end;

        if bComplete = true then
        begin
            Inc(tempRect.Top, 20);
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
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        DrawText(Handle,NoteText, -1, TempRect, DT_END_ELLIPSIS);
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
        Inc(tempRect.Top, 16);

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlue;
        DrawText(Handle,CommentString, -1, TempRect, DT_END_ELLIPSIS);
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

procedure TfrmMain.PickTableObject(newTableMode: TTableMode; control: TControl);
begin
    frmTableEdit.TableMode := newTableMode;

    case newTableMode of
      tmActorsPawns: frmTableEdit.lstTableContents.Items := frmMain.listPawnsActors;
      tmFlags:       frmTableEdit.lstTableContents.Items := frmMain.listFlags;
      tmSkills:      frmTableEdit.lstTableContents.Items := frmMain.listSkills;
      tmObjects:     frmTableEdit.lstTableContents.Items := frmMain.listObjects;
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

// to enable/disable "Paste" menu item
function TfrmMain.HasConvoEventToPaste(): Boolean;
begin
    Result := False; // for now
end;

procedure TfrmMain.HeaderControl1DrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
var TempRect: TRect; // Переменная для временного прямоугольника
begin
    TempRect := Rect;
    with HeaderControl1.Canvas do
    begin
        Frame3D(HeaderControl1.Canvas, TempRect, RGB(212, 208, 200), clBlack, 1); // Рамка секций.
        Font.Name := CEP_EVENT_HEADER_LIST_FONT_NAME; // Шрифт
        Font.Size := CEP_EVENT_HEADER_LIST_FONT_SIZE;
        Font.Color := clBlack;

        SetBkMode(Handle, TRANSPARENT); // Прозрачный фон.
        TempRect.Left := Rect.Left + 4; // Отступ
        DrawText(Handle, Section.Text, -1, TempRect, DT_END_ELLIPSIS); // Название
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
    if frmEventInsAdd.mp1.Mode = mpPlaying then // if we are playing some speech, stop it.
       frmEventInsAdd.mp1.Stop();

    if TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]) <> nil then
       CurrentEvent:= TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]);

    objStr:= '  EventType = ' + CurrentEvent.ClassName;

    Statusbar.Panels[0].Text := 'ItemIndex=' + ConEventList.ItemIndex.ToString + objStr +
    ' Value=' + ConEventList.Items.ValueFromIndex[ConEventList.ItemIndex];

    if frmEventInsAdd.Visible = true then
       ConEventListDblClick(Sender);
end;

procedure TfrmMain.ConEventListDblClick(Sender: TObject);
begin
    if ConEventList.ItemIndex <> -1 then
       CurrentEvent:= TConEvent(ConEventList.Items.Objects[ConEventList.ItemIndex]);

    if CurrentEvent <> nil then begin
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
var
    labelStr: string;
    tempRect: TRect;
begin
    with (Control as TListBox).Canvas do
    begin
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;

        Pen.Style := psInsideFrame;
        Frame3D(TListBox(Control).Canvas, Rect, clWhite, clrGrid, 1); // разделитель

        if CurrentConversation <> nil then
        begin
            if TConEvent(ConEventList.Items.Objects[Index]) <> nil then
               labelStr:= TConEvent(ConEventList.Items.Objects[Index]).EventLabel;
        end;

        // Turns out, original ConEdit highlights events with non-empty label with green color!
        // But I will implement that feature differently...
        with ConEventList do
        begin
            if Items[Index].Contains(ET_Speech_Caption) then    DrawET_Speech(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Choice_Caption) then    DrawET_Choice(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_SetFlag_Caption) then   DrawET_SetFlag(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_CheckFlag_Caption) then DrawET_CheckFlag(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckObject_Caption then       DrawET_CheckObject(Control, Index, Rect, State) else
            if Items[Index] = ET_TransferObject_Caption then    DrawET_TransferObject(Control, Index, Rect, State) else
            if Items[Index] = ET_MoveCamera_Caption then        DrawET_MoveCamera(Control, Index, Rect, State) else
            if Items[Index] = ET_Animation_Caption then         DrawET_Animation(Control, Index, Rect, State) else
            if Items[Index] = ET_Trade_Caption then             DrawET_Trade(Control, Index, Rect, State) else
            if Items[Index] = ET_Jump_Caption then              DrawET_Jump(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Random_Caption) then    DrawET_Random(Control, Index, Rect, State) else
            if Items[Index] = ET_Trigger_Caption then           DrawET_Trigger(Control, Index, Rect, State) else
            if Items[Index] = ET_AddGoal_Caption then           DrawET_AddGoal(Control, Index, Rect, State) else
            if Items[Index] = ET_AddNote_Caption then           DrawET_AddNote(Control, Index, Rect, State) else
            if Items[Index] = ET_AddSkillPoints_Caption then    DrawET_AddSkillPoints(Control, Index, Rect, State) else
            if Items[Index] = ET_AddCredits_Caption then        DrawET_AddCredits(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckPersona_Caption then      DrawET_CheckPersona(Control, Index, Rect, State) else
            if Items[Index] = ET_Comment_Caption then           DrawET_Comment(Control, Index, Rect, State) else
            if Items[Index] = ET_End_Caption then               DrawET_End(Control, Index, Rect, State);
        end;

        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;
        Font.Style := [fsBold];

        if labelStr <> '' then begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;
            FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 48);
        end;

        if ((odSelected in State) and (bUseWhiteSelectedText = true)) then
           Font.Color := clWhite else Font.Color := clMaroon;

        TextOut(Rect.Left + 4, Rect.Top + 4, labelStr);
    end;
end;

procedure TfrmMain.ConEventListMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
    if ConEventList.Items[Index].Contains(ET_Speech_Caption) then
       Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_Choice_Caption) then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_SetFlag_Caption) = true then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index].Contains(ET_CheckFlag_Caption) = true then
        Height := ConEventList.Items.ValueFromIndex[Index].ToInteger;

    if ConEventList.Items[Index] = ET_CheckObject_Caption then Height := 25; // fixed
    if ConEventList.Items[Index] = ET_TransferObject_Caption then Height := 35; // fixed
    if ConEventList.Items[Index] = ET_MoveCamera_Caption then Height := 25; // fixed
    if ConEventList.Items[Index] = ET_Animation_Caption then Height := 70; // fixed
    if ConEventList.Items[Index] = ET_Trade_Caption then Height := 44;  // fixed, also not implemented
    if ConEventList.Items[Index] = ET_Jump_Caption then Height := 50; // fixed

    if ConEventList.Items[Index].Contains(ET_Random_Caption) then
       Height := ConEventList.Items.ValueFromIndex[Index].ToInteger; // variable

    if ConEventList.Items[Index] = ET_Trigger_Caption then Height := 42;  // fixed

    if ConEventList.Items[Index] = ET_AddGoal_Caption then Height := 75;  // variable
    if ConEventList.Items[Index] = ET_AddNote_Caption  then Height := 40;  // variable

    if ConEventList.Items[Index] = ET_AddSkillPoints_Caption then Height := 58;  // fixed
    if ConEventList.Items[Index] = ET_AddCredits_Caption then Height := 44;  // fixed
    if ConEventList.Items[Index] = ET_CheckPersona_Caption then Height := 42;  // fixed
    if ConEventList.Items[Index] = ET_Comment_Caption then Height := 40; // variable? Not sure...
    if ConEventList.Items[Index] = ET_End_Caption then Height := 25; // fixed
end;

procedure TfrmMain.ConEventListMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    var EventJump: TConEventJump;
    var JumpToConvoAreaRect: TRect;

    if (ConEventList.ItemIndex < 0) then
    Exit();


    if ConEventList.Items[ConEventList.ItemIndex] <> ET_Jump_Caption then
    Exit();

    EventJump := TConEventJump(ConEventList.Items.Objects[ConEventList.ItemIndex]);

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
            //ShowMessage('Clicked the button!');
            SelectTreeItemByObject(ConvoTree, FindConversationObjById(EventJump.conversationId));
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
end;

procedure TfrmMain.ConvoTreeChange(Sender: TObject; Node: TTreeNode);
begin
    ConEventList.Enabled := Node.Level <> 2;

    if Node.Level >= 1 then
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
                //ET_Speech: ConEventList.Items.AddObject(ET_Speech_Caption, CurrentConversation.Events[F]);
                ET_Speech: ConEventList.Items.AddPair(ET_Speech_Caption, GetSpeechEventItemHeight(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);

                //ET_Choice: ConEventList.Items.AddObject(ET_Choice_Caption, CurrentConversation.Events[F]);
                ET_Choice: ConEventList.Items.AddPair(ET_Choice_Caption, GetNumChoiceLines(CurrentConversation.Events[F]).ToString,
                                                      CurrentConversation.Events[F]);



                //ET_SetFlag: ConEventList.Items.AddObject(ET_SetFlag_Caption, CurrentConversation.Events[F]);

                ET_SetFlag: ConEventList.Items.AddPair(ET_SetFlag_Caption,GetFlagsSize(CurrentConversation.Events[F]).ToString,
                                                       CurrentConversation.Events[F]);

                //ET_CheckFlag: ConEventList.Items.AddObject(ET_CheckFlag_Caption, CurrentConversation.Events[F]);
                ET_CheckFlag: ConEventList.Items.AddPair(ET_CheckFlag_Caption,GetChkFlagsSize(CurrentConversation.Events[F]).ToString,
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
                ET_AddGoal: ConEventList.Items.AddObject(ET_AddGoal_Caption, CurrentConversation.Events[F]);
                ET_AddNote: ConEventList.Items.AddObject(ET_AddNote_Caption, CurrentConversation.Events[F]);
                ET_AddSkillPoints: ConEventList.Items.AddObject(ET_AddSkillPoints_Caption, CurrentConversation.Events[F]);
                ET_AddCredits: ConEventList.Items.AddObject(ET_AddCredits_Caption, CurrentConversation.Events[F]);
                ET_CheckPersona: ConEventList.Items.AddObject(ET_CheckPersona_Caption, CurrentConversation.Events[F]);
                ET_Comment: ConEventList.Items.AddObject(ET_Comment_Caption, CurrentConversation.Events[F]);
                ET_End: ConEventList.Items.AddObject(ET_End_Caption, CurrentConversation.Events[F]);
            end;
        end;
    end;
end;

procedure TfrmMain.ConvoTreeEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
begin
    AllowEdit := Node.Level = 1;  // only allow editing level 1 (conversation name)
end;

procedure TfrmMain.End1Click(Sender: TObject);
begin
  AddEvent(End1.Tag);
end;

procedure TfrmMain.End2Click(Sender: TObject);
begin
  InsertEvent(End2.Tag);
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

procedure TfrmMain.Event_DeleteExecute(Sender: TObject);
begin
    if bAskForEventDelete = true then
    begin
        if Application.MessageBox(PChar(strAskDeleteEventText), PChar(strAskDeleteEventTitle),
           MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
        DeleteCurrentEvent();
    end
    else
        DeleteCurrentEvent();
end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  SaveCfg();
  Application.Terminate();
end;

procedure TfrmMain.ExpandAll2Click(Sender: TObject);
begin
  ConvoTree.FullExpand();
end;

procedure TfrmMain.mnuExpandedEventList1Click(Sender: TObject);
begin
  bExpandedEventList := mnuExpandedEventList1.Checked;
  ConEventList.Invalidate(); // Refresh the event list
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveCfg();
  AnimateWindow(Handle, 300, AW_BLEND or AW_HIDE);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    Application.Title := strAppTitle + ' [version ' + GetAppVersionStr() +']';
    frmMain.Caption := Application.Title;

    LoadCfg();
    CreateObjectLists();
    ConvoTree.AlphaSort(true);
end;


procedure TfrmMain.CreateObjectLists();
begin
    // create objects to store conversation data
    ConversationsList := TObjectList<TConversation>.Create(); // Create conversations list
    conFileParameters := TConFileParameters.Create(); // Create header
    listPawnsActors := conFileParameters.fpActors; // Assign
    listSkills := conFileParameters.fpSkills;
    listObjects := conFileParameters.fpObjects;
    listFlags := conFileParameters.fpFlags;
end;

procedure TfrmMain.CreateTestFile1Click(Sender: TObject);
begin
    SaveConFile('C:\Temp\First26.con');
end;

procedure TfrmMain.FileNewExecute(Sender: TObject);
begin
    if conXmlFile <> '' then
    begin
        if Application.MessageBox('At the moment you have another file opened.'
          + #13#10 + 'Do you wish to save it before creating a new one?' + #13#10 +
          'Click "Yes" to cancel operation, so you can save current file.',
          'Create new file?', MB_YESNO + MB_ICONWARNING + MB_TOPMOST) = IDYES then
          Exit();
    end;

    ConversationsList.Clear();  // Clear conversations list
    conFileParameters.Clear(); // Clear header info
    conFileParameters.fpCreatedByName := ConversationUserName; // fill UserName in conParameters
    conFileParameters.fpModifiedByName := ConversationUserName;

    with frmConvoFileProperties do
    begin
        PageControl1.ActivePageIndex := 0; // Set first page

        edtConFileVersion.Text := conFileParameters.fpFileVersion.ToString; // same

        edtConFileCreatedOn.Text := conFileParameters.fpCreatedByDate; // add text to editbox
        edtConFileCreatedBy.Text := conFileParameters.fpCreatedByName;

        edtConFileLastModifiedOn.Text := conFileParameters.fpModifiedByDate; // add text to editbox
        edtConFileLastModifiedBy.Text := conFileParameters.fpModifiedByName;
        // Примечание: даты не заполняем, они подставляются автоматически в конструкторе или в методе Clear()
    end;

    frmConvoFileProperties.ShowModal();
end;

procedure TfrmMain.FileOpenExecute(Sender: TObject);
begin
    FileOpenDialog.FileTypeIndex := OpenFileFilterIndex; // restore filter index

    if FileOpenDialog.Execute() = true then
    begin
        OpenFileFilterIndex := FileOpenDialog.FileTypeIndex; // save filter index
        conXmlFile := FileOpenDialog.FileName;  // Assign filename to global variable

        if UpperCase(ExtractFileExt(conXmlFile)) = '.XML' then
            LoadConXMLFile(conXmlFile)
        else if UpperCase(ExtractFileExt(conXmlFile)) = '.CON' then
            LoadConFile(conXmlFile)
        else
            begin
                MessageBox(Handle, 'Please select .con or .xml file!', 'Invalid file', MB_OK + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
                Exit();
            end;

        StatusBar.Panels[1].Text := conXmlFile; // filename in StatusBar
        AddRecentFile(conXmlFile);  // Add to recent
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
        savefileName := FileSaveDialog.FileName;

        if ExtractFileExt(savefileName) = '' then
            savefileName := savefileName + '.xml'; // for now

        BuildConXMLFile(FileSaveDialog.FileName);
    end;
end;

procedure TfrmMain.Flags1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := tmFlags;
    frmTableEdit.lstTableContents.Items := frmMain.listFlags;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
    ConEventList.Invalidate();
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

procedure TfrmMain.Close1Click(Sender: TObject);
begin
    CloseXMLfile();
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
    frmAbout.ShowModal();
end;

procedure TfrmMain.ActorsPawns1Click(Sender: TObject);
begin
    frmTableEdit.TableMode := tmActorsPawns;
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
    frmTableEdit.TableMode := tmSkills;
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

procedure TfrmMain.btnReorderClick(Sender: TObject);
begin
    if btnReorder.Down = true then ConEventList.DragMode := TDragMode.dmAutomatic
        else ConEventList.DragMode := TDragMode.dmManual;
end;

procedure TfrmMain.btnStickyWindowClick(Sender: TObject);
begin
    ScreenSnap := btnStickyWindow.Down;
end;

procedure TfrmMain.Jump1Click(Sender: TObject);
begin
    AddEvent(Jump1.Tag);
end;

procedure TfrmMain.Jump2Click(Sender: TObject);
begin
    InsertEvent(Jump2.Tag);
end;

procedure TfrmMain.MeasureItems1Click(Sender: TObject);
var
  H: Integer;
  I: Integer;
  MeasureItemEvent: TMeasureItemEvent;
begin
  ConEventList.OnMeasureItem := ConEventListMeasureItem;
  MeasureItemEvent := ConEventList.OnMeasureItem;
  if not Assigned(MeasureItemEvent) then
    Exit;
  for I := 0 to ConEventList.Count - 1 do
  begin
    MeasureItemEvent(TWinControl(ConEventList), I, H);
    ConEventList.ItemHeight := H;
  end;
end;

procedure TfrmMain.MenuMainChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
var i: Integer;
begin
    PasteEvent.Enabled := HasConvoEventToPaste();

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
    frmTableEdit.TableMode := tmObjects;
    frmTableEdit.lstTableContents.Items := frmMain.listObjects;

    frmTableEdit.ShowModal();
end;

procedure TfrmMain.mnuToggleMainToolBarClick(Sender: TObject);
begin
    bShowToolbar := mnuToggleMainToolBar.Checked;
    pnlToolBar.Visible := mnuToggleMainToolBar.Checked;
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
    if (ConvoTree.Items.Count < 1) or (ConvoTree.Selected.Level <> 1) then
    begin
        Add2.Enabled := False;
        Insert2.Enabled := false;
        Edit1.Enabled := false;
        Delete1.Enabled := false;
        Cut3.Enabled := false;
        Copy3.Enabled := false;
        PasteConvoEvent.Enabled := False;
    end else
    if ConEventList.ItemIndex = -1 then
    begin
        Add2.Enabled := true;
        Insert2.Enabled := false;
        Edit1.Enabled := false;
        Delete1.Enabled := false;
        Cut3.Enabled := false;
        Copy3.Enabled := false;
        PasteConvoEvent.Enabled := False;
    end else
    begin
        Add2.Enabled := true;
        Insert2.Enabled := true;
        Edit1.Enabled := true;
        Delete1.Enabled := true;
        Cut3.Enabled := true;
        Copy3.Enabled := true;
        PasteConvoEvent.Enabled := HasConvoEventToPaste();
    end;
end;


procedure TfrmMain.PopupTreePopup(Sender: TObject); // block some menu items depending on selection
begin
    if ConvoTree.Items.Count < 1 then Exit();

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

procedure TfrmMain.Properties3Click(Sender: TObject);
begin
    frmConvoProperties.ShowModal();
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
    OpenRecentFile((Sender as TMenuItem).Caption);
end;

procedure TfrmMain.tbSearchClick(Sender: TObject);
begin
    frmFind.ShowModal();
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
