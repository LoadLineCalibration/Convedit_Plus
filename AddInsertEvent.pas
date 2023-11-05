unit AddInsertEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.StdActns, Conversation.Classes,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.Samples.Spin, WinApi.ActiveX, Vcl.Buttons, Vcl.Imaging.pngimage,
  ConvEditPlus_Util, System.ImageList, Vcl.ImgList, Vcl.MPlayer, Winapi.MMSystem;

type
  TfrmEventInsAdd = class(TForm)
    GroupBox1: TGroupBox;
    cmbEventType: TComboBox;
    Label1: TLabel;
    editEventLabel: TEdit;
    Label2: TLabel;
    EventsPages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Jump: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    Label4: TLabel;
    memoSpeech: TMemo;
    MemoPopup: TPopupMenu;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditDelete1: TEditDelete;
    EditUndo1: TEditUndo;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    N3: TMenuItem;
    Undo1: TMenuItem;
    N4: TMenuItem;
    ChangeMemoFont: TMenuItem;
    btnClose: TButton;
    FontDlgMemo: TFontDialog;
    Label5: TLabel;
    Label6: TLabel;
    cmbSpeakingFrom: TComboBox;
    cmbSpeakingTo: TComboBox;
    Label7: TLabel;
    edtSpeechAudioFile: TEdit;
    Label8: TLabel;
    btnPlayAudioFile: TButton;
    btnSpeakingFromActor: TButton;
    btnSpeakingToActor: TButton;
    btnPrevEvent: TButton;
    btnNextEvent: TButton;
    btnAddEvent: TButton;
    btnInsertEvent: TButton;
    btnAddChoice: TButton;
    btnMoveDownChoice: TButton;
    btnEditChoice: TButton;
    btnDeleteChoice: TButton;
    btnMoveUpChoice: TButton;
    chkClearScreen: TCheckBox;
    lvChoiceList: TListView;
    lvSetFlags: TListView;
    btnAddSetFlag: TButton;
    btnDeleteSetFlag: TButton;
    lvCheckFlags: TListView;
    btnAddCheckFlag: TButton;
    btnDeleteCheckFlag: TButton;
    Label9: TLabel;
    cmbChkFlgJumpToLabel: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    cmbObjectToCheck: TComboBox;
    cmbObjNotFoundJumpTo: TComboBox;
    btnFindObject: TButton;
    cmbObjectToTransfer: TComboBox;
    Label12: TLabel;
    cmbTransferObjectTo: TComboBox;
    Label13: TLabel;
    cmbTransferObjectFrom: TComboBox;
    Label14: TLabel;
    cmbTransferObjectFailLabel: TComboBox;
    Label15: TLabel;
    seAmountToTransfer: TSpinEdit;
    Label16: TLabel;
    btnObjectToTransfer: TButton;
    btnObjTransferToPawn: TButton;
    btnTransferObjFrom: TButton;
    chAlphaBlend: TCheckBox;
    rbPredefinedCameraPos: TRadioButton;
    cbbPredefinedCameraPos: TComboBox;
    rbSpecialCameraPos: TRadioButton;
    rbRandomCameraPos: TRadioButton;
    btnEditCameraSpecialPos: TButton;
    cbbCameraTransition: TComboBox;
    Label17: TLabel;
    cmbPawnToAnimate: TComboBox;
    Label18: TLabel;
    cmbAnimSeq: TComboBox;
    Label19: TLabel;
    GroupBox21: TGroupBox;
    chkWaitFinishAnim: TCheckBox;
    rbPlayAnimOnce: TRadioButton;
    rbLoopAnim: TRadioButton;
    grpAnimTimed: TGroupBox;
    chkAnimTimed: TCheckBox;
    Label20: TLabel;
    edtPlayAnimSeconds: TSpinEdit;
    Label21: TLabel;
    cboJumpLabel: TComboBox;
    Label22: TLabel;
    cboJumpConv: TComboBox;
    Label23: TLabel;
    btnAddRandomLabel: TButton;
    btnRemoveAllRandomLabels: TButton;
    btnRemoveCurrentRandomLabel: TButton;
    chkCycleEvents: TCheckBox;
    chkCycleOnce: TCheckBox;
    chkRandomAfterCycle: TCheckBox;
    lblTargets: TLabel;
    lstRandomLabels: TListBox;
    cmbEventRandomLabels: TComboBox;
    Panel1: TPanel;
    Label25: TLabel;
    editTriggerTag: TEdit;
    Label26: TLabel;
    editGoalName: TEdit;
    lblGoalName: TLabel;
    rbAddGoal: TRadioButton;
    rbGoalCompleted: TRadioButton;
    grpGoalControls: TGroupBox;
    chkPrimaryGoal: TCheckBox;
    memoGoalText: TMemo;
    memoNoteText: TMemo;
    Label27: TLabel;
    memoSkillPointMessage: TMemo;
    Label28: TLabel;
    editSkillPointsAmount: TSpinEdit;
    Label29: TLabel;
    seAddCredits: TSpinEdit;
    Label30: TLabel;
    Label31: TLabel;
    btnUpdate: TBitBtn;
    GB_AttrToCheck: TGroupBox;
    rbCreditsCheck: TRadioButton;
    rbHealthCheck: TRadioButton;
    rbSkillPointsCheck: TRadioButton;
    cmbCheckCondition: TComboBox;
    cmbCheckLabelJump: TComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    memoCommentText: TMemo;
    Label35: TLabel;
    btnPawnToAnim: TButton;
    QFont: TMenuItem;
    Tahoma10: TMenuItem;
    Consolas10: TMenuItem;
    DefaultTahoma91: TMenuItem;
    N6: TMenuItem;
    btnHelp: TBitBtn;
    lblStatus: TLabel;
    lblDblClickTip: TLabel;
    ilSpecial: TImageList;
    mp1: TMediaPlayer;
    mp3posUpdateTimer: TTimer;
    chkDblClickToPlay: TCheckBox;
    mp3VolumeControl: TTrackBar;
    mp3Pos_pb: TProgressBar;
    editConditionValue: TSpinEdit;
    Label24: TLabel;
    chkAutoSwapSpeaker: TCheckBox;
    // new procedures
    procedure UpdateSelActorButtons();
    procedure UpdateControlsState();
    procedure UpdateAddRandomLabelButtonState();
    procedure RepaintCurrentEvent();

    function CanAddRandomLabel(): Boolean;
    function GetChoiceItemSpeech(ChoiceItem: TChoiceItemObject): string;

    //https://engineertips.wordpress.com/2019/10/06/delphi-exchange-listview-items-move-listview-items/
    procedure ExchangeListViewItems(lv: TListView; const i, j: Integer);
    procedure CopyChoiceRecToObj(source: TChoiceItem; dest: TChoiceItemObject);

    // Make sure all events are valid, contains no illegal characters, etc.
    procedure ValidateEvents(event: TConEvent);
    procedure ValidateSpeech(speech: TConEventSpeech);
    procedure ValidateChoice(choice: TConEventChoice);
    procedure ValidateSetFlags(setFlags: TConEventSetFlag);
    procedure ValidateCheckFlags(checkFlags: TConEventCheckFlag);
    procedure ValidateCheckObject(checkObj: TConEventCheckObject);
    procedure ValidateTransferObject(transObj: TConEventTransferObject);
    procedure ValidateMoveCamera(moveCam: TConEventMoveCamera);
    procedure ValidatePlayAnim(playAnim: TConEventAnimation);
    procedure ValidateBuySellTrade(trade: TConEventTrade);
    procedure ValidateJump(jump: TConEventJump);
    procedure ValidateRandom(rand: TConEventRandom);
    procedure ValidateTrigger(trigger: TConEventTrigger);
    procedure ValidateAddCompGoal(theGoal: TConEventAddGoal);
    procedure ValidateAddNote(note: TConEventAddNote);
    procedure ValidateAddSkillPoints(skillPts: TConEventAddSkillPoints);
    procedure ValidateAddCredits(credits: TConEventAddCredits);
    procedure ValidateCheckPersona(checkPersona: TConEventCheckPersona);
    procedure ValidateComment(comment: TConEventComment);
    procedure ValidateEnd(endEvent: TConEventEnd);

    // show colored warning message if event was not updated
    procedure EventWarning(bShow: Boolean;  msg: string = '');

    // fill fields when editing event
    procedure FillSpeech(speech: TConEventSpeech);
    procedure FillChoice(choice: TConEventChoice);
    procedure FillSetFlags(flags: TConEventSetFlag);
    procedure FillCheckFlag(check: TConEventCheckFlag);
    procedure FillCheckObject(checkObj: TConEventCheckObject);
    procedure FillTransferObject(transObject: TConEventTransferObject);
    procedure FillMoveCamera(camEvent: TConEventMoveCamera);
    procedure FillPlayAnim(playAnim: TConEventAnimation);
    procedure FillBuySellTrade(buySell: TConEventTrade);
    procedure FillJump(jump: TConEventJump);
    procedure FillRandom(EventRandom: TConEventRandom);
    procedure FillTrigger(Trigger: TConEventTrigger);
    procedure FillGoal(goal: TConEventAddGoal);
    procedure FillNote(note: TConEventAddNote);
    procedure FillSkillPoints(skillPoints: TConEventAddSkillPoints);
    procedure FillCredits(credits: TConEventAddCredits);
    procedure FillCheckPersona(checkPersona: TConEventCheckPersona);
    procedure FillComment(comment: TConEventComment);
    procedure FillEnd(endEvent: TConEventEnd);
    procedure PlayMP3Speech(const mp3file: string);


    procedure cmbEventTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chAlphaBlendClick(Sender: TObject);
    procedure ChangeMemoFontClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSpeakingFromActorClick(Sender: TObject);
    procedure btnSpeakingToActorClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rbLoopAnimClick(Sender: TObject);
    procedure rbPlayAnimOnceClick(Sender: TObject);
    procedure chkAnimTimedClick(Sender: TObject);

    procedure chkCycleEventsClick(Sender: TObject);
    procedure cmbEventRandomLabelsChange(Sender: TObject);
    procedure cmbEventRandomLabelsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddRandomLabelClick(Sender: TObject);
    procedure btnRemoveCurrentRandomLabelClick(Sender: TObject);
    procedure btnRemoveAllRandomLabelsClick(Sender: TObject);
    procedure rbGoalCompletedClick(Sender: TObject);
    procedure rbAddGoalClick(Sender: TObject);
    procedure MemoPopupPopup(Sender: TObject);
    procedure btnNextEventClick(Sender: TObject);
    procedure btnPrevEventClick(Sender: TObject);
    procedure Tahoma10Click(Sender: TObject);
    procedure Consolas10Click(Sender: TObject);
    procedure DefaultTahoma91Click(Sender: TObject);
    procedure btnFindObjectClick(Sender: TObject);
    procedure btnObjectToTransferClick(Sender: TObject);
    procedure btnObjTransferToPawnClick(Sender: TObject);
    procedure btnTransferObjFromClick(Sender: TObject);
    procedure btnPawnToAnimClick(Sender: TObject);
    procedure btnAddChoiceClick(Sender: TObject);
    procedure btnEditCameraSpecialPosClick(Sender: TObject);
    procedure rbPredefinedCameraPosClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure cmbAddLabelToRandomLabelsKeyPress(Sender: TObject; var Key: Char);
    procedure AllowFNameInput(Sender: TObject; var Key: Char);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnAddSetFlagClick(Sender: TObject);
    procedure lvSetFlagsEditing(Sender: TObject; Item: TListItem; var AllowEdit: Boolean);
    procedure btnAddCheckFlagClick(Sender: TObject);
    procedure btnDeleteChoiceClick(Sender: TObject);
    procedure lvChoiceListChange(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure btnEditChoiceClick(Sender: TObject);
    procedure lvSetFlagsChange(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure btnMoveUpChoiceClick(Sender: TObject);
    procedure btnMoveDownChoiceClick(Sender: TObject);
    procedure btnDeleteSetFlagClick(Sender: TObject);
    procedure btnDeleteCheckFlagClick(Sender: TObject);
    procedure mp1Notify(Sender: TObject);
    procedure btnPlayAudioFileClick(Sender: TObject);
    procedure mp3posUpdateTimerTimer(Sender: TObject);
    procedure rbSpecialCameraPosClick(Sender: TObject);
    procedure rbRandomCameraPosClick(Sender: TObject);
    procedure cboJumpConvChange(Sender: TObject);
    procedure mp3VolumeControlChange(Sender: TObject);
    procedure lvSetFlagsDblClick(Sender: TObject);
    procedure lvCheckFlagsDblClick(Sender: TObject);
    procedure chkDblClickToPlayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddEventClick(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure editConditionValueChange(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    const BTN_FIND_ACTOR_INDENT = 6;

    { Public declarations }
  end;

var
  frmEventInsAdd: TfrmEventInsAdd;


implementation


{$R *.dfm}

uses Table, ConvoProperties, EditValueDialog, EditChoice,
     HelpWindow, frmFlagList1, ConvEditPlus_Const, MainWindow;


procedure TfrmEventInsAdd.FillSpeech(speech: TConEventSpeech);
begin
    cmbEventType.ItemIndex := 0;
    cmbEventTypeChange(cmbEventType);
    editEventLabel.Text := speech.EventLabel;

    // Fill Speaking Actor
    cmbSpeakingFrom.Clear();
    cmbSpeakingFrom.Items.Assign(frmMain.conFileParameters.fpActors);
    cmbSpeakingFrom.ItemIndex := cmbSpeakingFrom.Items.IndexOf(speech.ActorValue);

    // Speaking To
    cmbSpeakingTo.Clear();
    cmbSpeakingTo.Items.Assign(frmMain.conFileParameters.fpActors);
    cmbSpeakingTo.ItemIndex := cmbSpeakingTo.Items.IndexOf(speech.ActorToValue);

    memoSpeech.Text := speech.TextLine; // Speech Text
    edtSpeechAudioFile.Text:= speech.mp3File; // Speech MP3
end;

procedure TfrmEventInsAdd.FillChoice(choice: TConEventChoice);
begin
    cmbEventType.ItemIndex := 1;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= choice.EventLabel;

    lvChoiceList.Clear();
    chkClearScreen.Checked := choice.bClearScreen;

    for var chi := 0 to choice.NumChoices -1 do begin
        var choiceItem:= lvChoiceList.Items.Add();
            choiceItem.Data := TChoiceItemObject.Create();
            TChoiceItemObject(choiceItem.Data).Index := choice.Choices[chi].Index;
            TChoiceItemObject(choiceItem.Data).textline := choice.Choices[chi].textline;
            TChoiceItemObject(choiceItem.Data).bDisplayAsSpeech := choice.Choices[chi].bDisplayAsSpeech;
            TChoiceItemObject(choiceItem.Data).bSkillNeeded := choice.Choices[chi].bSkillNeeded;
            TChoiceItemObject(choiceItem.Data).Skill := choice.Choices[chi].Skill;
            TChoiceItemObject(choiceItem.Data).SkillLevel := choice.Choices[chi].SkillLevel;
            TChoiceItemObject(choiceItem.Data).GoToLabel := choice.Choices[chi].GoToLabel;
            TChoiceItemObject(choiceItem.Data).mp3 := choice.Choices[chi].mp3;

            CopyChoiceRecToObj(choice.Choices[chi], TChoiceItemObject(choiceItem.Data)); // Flags

            choiceItem.Caption := TChoiceItemObject(choiceItem.Data).textline;
            choiceItem.SubItems.Add(TChoiceItemObject(choiceItem.Data).GoToLabel);
            choiceItem.SubItems.Add(TChoiceItemObject(choiceItem.Data).Index.ToString);
    end;
end;

procedure TfrmEventInsAdd.FillSetFlags(flags: TConEventSetFlag);
begin
    cmbEventType.ItemIndex := 2;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= flags.EventLabel;

    lvSetFlags.Clear();

    for var sf:=0 to High(flags.SetFlags) do begin
        var sfItem:= lvSetFlags.Items.Add();
            sfItem.Caption:= flags.SetFlags[sf].flagName;
            sfItem.SubItems.Add(BoolToStr(flags.SetFlags[sf].flagValue, true));
            sfItem.SubItems.Add(flags.SetFlags[sf].flagExpiration.ToString);
            sfItem.SubItems.Add(flags.SetFlags[sf].flagIndex.ToString);
    end;
end;

procedure TfrmEventInsAdd.FillCheckFlag(check: TConEventCheckFlag);
begin
    cmbEventType.ItemIndex := 3;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= check.EventLabel;

    lvCheckFlags.Clear();
    cmbChkFlgJumpToLabel.Clear();

    for var cf:=0 to High(check.FlagsToCheck) do begin
        var cfItem:= lvCheckFlags.Items.Add();
            cfItem.Caption:= check.FlagsToCheck[cf].flagName;
            cfItem.SubItems.Add(BoolToStr(check.FlagsToCheck[cf].flagValue, true));
            cfItem.SubItems.Add(check.FlagsToCheck[cf].flagIndex.ToString);
    end;

    for var evt:=0 to High(frmMain.CurrentConversation.Events) do begin
        if frmMain.CurrentConversation.Events[evt].EventLabel <> '' then
           cmbChkFlgJumpToLabel.Items.Add(frmMain.CurrentConversation.Events[evt].EventLabel);
    end;

    cmbChkFlgJumpToLabel.ItemIndex := cmbChkFlgJumpToLabel.Items.IndexOf(check.GotoLabel);
end;

procedure TfrmEventInsAdd.FillCheckObject(checkObj: TConEventCheckObject);
begin
    cmbEventType.ItemIndex := 4;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= checkObj.EventLabel;

    cmbObjectToCheck.Items.Assign(frmMain.conFileParameters.fpObjects);
    cmbObjNotFoundJumpTo.Clear();
    for var evt:=0 to High(frmMain.CurrentConversation.Events) do begin
        if frmMain.CurrentConversation.Events[evt].EventLabel <> '' then
           cmbObjNotFoundJumpTo.Items.Add(frmMain.CurrentConversation.Events[evt].EventLabel);
    end;

    cmbObjectToCheck.ItemIndex := cmbObjectToCheck.Items.IndexOf(checkObj.ObjectValue);
    cmbObjNotFoundJumpTo.ItemIndex := cmbObjNotFoundJumpTo.Items.IndexOf(checkObj.GoToLabel);
end;

procedure TfrmEventInsAdd.FillTransferObject(transObject: TConEventTransferObject);
begin
    cmbEventType.ItemIndex := 5;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= transObject.EventLabel;

    // Fill lists
    cmbObjectToTransfer.Items.Assign(frmMain.conFileParameters.fpObjects);
    cmbTransferObjectTo.Items.Assign(frmMain.conFileParameters.fpActors);
    cmbTransferObjectFrom.Items.Assign(frmMain.conFileParameters.fpActors);

    cmbTransferObjectFailLabel.Clear(); // to avoid duplicates

    for var evt:=0 to High(frmMain.CurrentConversation.Events) do begin
        if frmMain.CurrentConversation.Events[evt].EventLabel <> '' then
           cmbTransferObjectFailLabel.Items.Add(frmMain.CurrentConversation.Events[evt].EventLabel);
    end;

    // Set values from event
    seAmountToTransfer.Value := transObject.Amount;
    cmbObjectToTransfer.ItemIndex := cmbObjectToTransfer.Items.IndexOf(transObject.ObjectValue);
    cmbTransferObjectTo.ItemIndex := cmbTransferObjectTo.Items.IndexOf(transObject.ActorToValue);
    cmbTransferObjectFrom.ItemIndex := cmbTransferObjectFrom.Items.IndexOf(transObject.ActorFromValue);
    cmbTransferObjectFailLabel.ItemIndex := cmbTransferObjectFailLabel.Items.IndexOf(transObject.GotoLabel);
end;

procedure TfrmEventInsAdd.FillMoveCamera(camEvent: TConEventMoveCamera);
begin
    cmbEventType.ItemIndex := 6;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= camEvent.EventLabel;

    if camEvent.CameraType = CT_Predefined then begin
       rbPredefinedCameraPos.Checked := true;
       rbPredefinedCameraPosClick(rbPredefinedCameraPos);
       cbbPredefinedCameraPos.ItemIndex := Ord(camEvent.CameraAngle); // Predefined camera position
    end else
    if camEvent.CameraType = CT_Actor then begin // Not implemented, only for compatibility
      rbSpecialCameraPos.Checked := True;
    end else
    if camEvent.CameraType = CT_Random then begin
      rbRandomCameraPos.Checked := True;
    end;
end;

procedure TfrmEventInsAdd.FillPlayAnim(playAnim: TConEventAnimation);
begin
    cmbEventType.ItemIndex := 7;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= playAnim.EventLabel;

    cmbPawnToAnimate.Clear();
    cmbPawnToAnimate.Items.Assign(frmMain.conFileParameters.fpActors); // fill the combobox
    cmbPawnToAnimate.ItemIndex := cmbPawnToAnimate.Items.IndexOf(playAnim.ActorValue); // set value from event
    cmbAnimSeq.Text := playAnim.AnimSequence; // set anim name

    chkWaitFinishAnim.Checked := playAnim.bAnimWaitToFinish; // set the checkbox first, it can be disabled by other options.

    if playAnim.bAnimPlayOnce = true then begin
       rbPlayAnimOnce.Checked := playAnim.bAnimPlayOnce;
        rbPlayAnimOnceClick(self);
    end else begin
       rbLoopAnim.Checked := playAnim.bAnimPlayOnce;
       rbLoopAnimClick(self);
    end;

    chkAnimTimed.Checked := playAnim.AnimPlayForSeconds > 0;
    edtPlayAnimSeconds.Value := playAnim.AnimPlayForSeconds;
    chkAnimTimedClick(Self);
end;

procedure TfrmEventInsAdd.FillBuySellTrade(buySell: TConEventTrade); // not implemented
begin
    cmbEventType.ItemIndex := 8;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= buySell.EventLabel;
end;

procedure TfrmEventInsAdd.FillJump(jump: TConEventJump);
begin
    cmbEventType.ItemIndex := 9;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= jump.EventLabel;

    cboJumpConv.Clear(); // Important! Otherwise items will be added many times!
    cboJumpLabel.Clear();

    // fill conversations...
    for var co := 0 to frmMain.ConversationsList.Count -1 do
        cboJumpConv.Items.Add(frmMain.ConversationsList.Items[co].conName);

    // fill labels...
    for var EvLabels := 0 to High(frmMain.FindConversationObjById(jump.conversationId).Events) do
    begin
        if frmMain.FindConversationObjById(jump.conversationId).Events[EvLabels].EventLabel <> '' then
           cboJumpLabel.Items.Add(frmMain.FindConversationObjById(jump.conversationId).Events[EvLabels].EventLabel);
    end;

    // and select in the combobox...
    cboJumpConv.ItemIndex := cboJumpConv.Items.IndexOf(frmMain.FindConversationById(jump.conversationId));
    cboJumpLabel.ItemIndex := cboJumpLabel.Items.IndexOf(jump.gotoLabel);
end;

procedure TfrmEventInsAdd.FillRandom(EventRandom: TConEventRandom);
begin
    cmbEventType.ItemIndex := 10;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= EventRandom.EventLabel;

    cmbEventRandomLabels.Clear();
    lstRandomLabels.Clear();

    for var evt:=0 to High(frmMain.CurrentConversation.Events) do begin
        if frmMain.CurrentConversation.Events[evt].EventLabel <> '' then
           cmbEventRandomLabels.Items.Add(frmMain.CurrentConversation.Events[evt].EventLabel);
    end;

    for var rndl :=0 to High(EventRandom.GoToLabels) do begin
        lstRandomLabels.Items.Add(EventRandom.GoToLabels[rndl]);
    end;

    chkCycleEvents.Checked := EventRandom.bCycle;
    chkCycleOnce.Checked:= EventRandom.bCycleOnce;
    chkRandomAfterCycle.Checked := EventRandom.bCycleRandom;

    chkCycleEventsClick(self);
end;

procedure TfrmEventInsAdd.FillTrigger(Trigger: TConEventTrigger);
begin
    cmbEventType.ItemIndex := 11;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= Trigger.EventLabel;
    editTriggerTag.Text:= Trigger.TriggerTag;
end;

procedure TfrmEventInsAdd.FillGoal(goal: TConEventAddGoal);
begin
    cmbEventType.ItemIndex := 12;
    cmbEventTypeChange(cmbEventType);

    memoGoalText.Text := goal.GoalText;

    editEventLabel.Text:= goal.EventLabel;
    editGoalName.Text:= goal.GoalName;

    if goal.bComplete = true then begin
        rbGoalCompleted.Checked := True;
        rbGoalCompletedClick(rbGoalCompleted);
    end else begin
        rbAddGoal.Checked := True;
        rbAddGoalClick(rbAddGoal);
    end;

    chkPrimaryGoal.Checked:= goal.bPrimaryGoal;
end;

procedure TfrmEventInsAdd.FillNote(note: TConEventAddNote);
begin
    cmbEventType.ItemIndex := 13;
    cmbEventTypeChange(cmbEventType);

    memoNoteText.Text:= note.TextLine;
    editEventLabel.Text:= note.EventLabel;
end;

procedure TfrmEventInsAdd.FillSkillPoints(skillPoints: TConEventAddSkillPoints);
begin
    cmbEventType.ItemIndex := 14;
    cmbEventTypeChange(cmbEventType);

    memoSkillPointMessage.Text := skillPoints.TextLine;
    editEventLabel.Text:= skillPoints.EventLabel;
    editSkillPointsAmount.Value:= skillPoints.Points;
end;

procedure TfrmEventInsAdd.FillCredits(credits: TConEventAddCredits);
begin
    cmbEventType.ItemIndex := 15;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= credits.EventLabel;

    seAddCredits.Value := credits.Credits;
end;

procedure TfrmEventInsAdd.FillCheckPersona(checkPersona: TConEventCheckPersona);
begin
    cmbEventType.ItemIndex := 16;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= checkPersona.EventLabel;

    case checkPersona.AttrToCheck of
        EP_Credits:         rbCreditsCheck.Checked := True;
	    EP_Health:           rbHealthCheck.Checked := True;
    	EP_SkillPoints: rbSkillPointsCheck.Checked := True;
    end;

    case checkPersona.Condition of
      EC_Less:         cmbCheckCondition.ItemIndex := 0;
      EC_LessEqual:    cmbCheckCondition.ItemIndex := 1;
      EC_Equal:        cmbCheckCondition.ItemIndex := 2;
      EC_GreaterEqual: cmbCheckCondition.ItemIndex := 3;
      EC_Greater:      cmbCheckCondition.ItemIndex := 4;
    end;

    editConditionValue.Value := checkPersona.CheckValue;

    for var jumpLbl := 0 to High(frmMain.CurrentConversation.Events) do begin
        if frmMain.CurrentConversation.Events[jumpLbl].EventLabel <> '' then
            cmbCheckLabelJump.Items.Add(frmMain.CurrentConversation.Events[jumpLbl].EventLabel);
    end;

    cmbCheckLabelJump.ItemIndex := cmbCheckLabelJump.Items.IndexOf(checkPersona.CheckGoToLabel);
end;

procedure TfrmEventInsAdd.FillComment(comment: TConEventComment);
begin
    cmbEventType.ItemIndex := 17;
    cmbEventTypeChange(cmbEventType);

    memoCommentText.Text := comment.TextLine;
    editEventLabel.Text:= comment.EventLabel;
end;

procedure TfrmEventInsAdd.FillEnd(endEvent: TConEventEnd);
begin
    cmbEventType.ItemIndex := 18;
    cmbEventTypeChange(cmbEventType);

    editEventLabel.Text:= endEvent.EventLabel;
end;

procedure TfrmEventInsAdd.EventWarning(bShow: Boolean;  msg: string = '');
begin
    lblStatus.Visible := bShow;
    lblStatus.Caption := msg;
end;

procedure TfrmEventInsAdd.CopyChoiceRecToObj(source: TChoiceItem; dest: TChoiceItemObject);
begin
    SetLength(dest.RequiredFlags, Length(source.RequiredFlags)); // set length

    for var i:= 0 to High(source.RequiredFlags) do begin
        dest.RequiredFlags[i] := source.RequiredFlags[i];
        frmMain.AddLog(source.RequiredFlags[i].flagName + ' copied to ' + dest.RequiredFlags[i].flagName);
    end;
end;

function TfrmEventInsAdd.GetChoiceItemSpeech(ChoiceItem: TChoiceItemObject): string;
begin
    if (ChoiceItem.mp3 <> '') and (ChoiceItem.bDisplayAsSpeech = true) then // Only play audio if bDisplayAsSpeech = true and has required audio file
       result := ChoiceItem.mp3;

    result := '';
end;

procedure TfrmEventInsAdd.PlayMP3Speech(const mp3file: string);
begin
    var SpeechMP3File:= frmMain.ConFileAudioPath +  '\' + mp3file;

    if FileExists(SpeechMP3File) then begin
       if mp1.Mode = mpPlaying then begin
          mp1.Stop();
       end else begin
          mp3posUpdateTimer.Enabled := True;
          mp1.FileName:= SpeechMP3File;
          mp1.Open();
          mp3Pos_pb.Position := 0;
          mp3Pos_pb.Max := mp1.Length;
          mp1.Play();
       end;
    end else
    ShowMessage(strAudioFileNotFound + mp3file);
end;

procedure TfrmEventInsAdd.ExchangeListViewItems(LV: TListView; const i, j: Integer);
var
    Source, Target: TListItem;
begin
    LV.Items.BeginUpdate;
    try
        Source := LV.Items[i];
        if j>i then
        begin
            Target := LV.Items.Insert(j+1);
        end else
        begin
            Target := LV.Items.Insert(j);
        end;
        Target.Assign(Source);
        Source.Free;
    finally
        LV.Items.EndUpdate;
    end;

    LV.Items[j].Selected:=True;
    LV.Items[j].MakeVisible(True);
    LV.SetFocus();
end;

procedure TfrmEventInsAdd.ValidateSpeech(speech: TConEventSpeech); // Check if entered values are correct, then write values back to object.
begin
    if Length(Trim(memoSpeech.Text)) < 1 then
    begin
        EventWarning(True, strSpeechTextIsEmpty);
        memoSpeech.SetFocus();
        Exit();
    end;

    if cmbSpeakingFrom.ItemIndex = -1 then
    begin
        EventWarning(True, 'Select Speaking actor!');
        Exit();
    end;

    if cmbSpeakingTo.ItemIndex = -1 then
    begin
        EventWarning(True, 'Select SpeakingTo actor!');
        Exit();
    end;


    speech.TextLine := memoSpeech.Text;
    speech.LineBreaksCount := frmMain.CountLineBreaks(memoSpeech.Text);
    // update value so ItemHeight will be updated as well
    frmMain.ConEventList.Items.ValueFromIndex[frmMain.ConEventList.ItemIndex] := frmMain.GetSpeechEventItemHeight([speech]).ToString;
    RepaintCurrentEvent();
    EventWarning(false);
end;

procedure TfrmEventInsAdd.ValidateChoice(choice: TConEventChoice);
begin
  ShowMessage('ValidateChoice()');
end;

procedure TfrmEventInsAdd.ValidateSetFlags(setFlags: TConEventSetFlag);
begin
    if lvSetFlags.Items.Count < 1 then begin
       EventWarning(True, 'Please add flags to set!');
       Exit();
    end;

    setFlags.ArrayLength := lvSetFlags.Items.Count;
    SetLength(setFlags.SetFlags, setFlags.ArrayLength);

    for var newsetflg := 0 to lvSetFlags.Items.Count -1 do begin
        setFlags.SetFlags[newsetflg].flagName       := lvSetFlags.Items[newsetflg].Caption; // flag name
        setFlags.SetFlags[newsetflg].flagValue      := lvSetFlags.Items[newsetflg].SubItems[0].ToBoolean; // value
        setFlags.SetFlags[newsetflg].flagExpiration := lvSetFlags.Items[newsetflg].SubItems[1].ToInteger; // expiration
        setFlags.SetFlags[newsetflg].flagIndex      := lvSetFlags.Items[newsetflg].SubItems[2].ToInteger; // index
    end;

    frmMain.ConEventList.Items.ValueFromIndex[frmMain.ConEventList.ItemIndex] := frmMain.GetFlagsSize([setFlags]).ToString;
    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateCheckFlags(checkFlags: TConEventCheckFlag);
begin
    if lvCheckFlags.Items.Count < 1 then begin
       EventWarning(True, 'Please add flags to check!');
       Exit();
    end;

    checkFlags.ArrayLength := lvCheckFlags.Items.Count;
    SetLength(checkFlags.FlagsToCheck, checkFlags.ArrayLength);

    for var newCheckFlg:=0 to lvCheckFlags.Items.Count -1 do begin
        checkFlags.FlagsToCheck[newCheckFlg].flagName := lvCheckFlags.Items[newCheckFlg].Caption; // flag name
        checkFlags.FlagsToCheck[newCheckFlg].flagValue:= lvCheckFlags.Items[newCheckFlg].SubItems[0].ToBoolean; // value
        checkFlags.FlagsToCheck[newCheckFlg].flagIndex:= lvCheckFlags.Items[newCheckFlg].SubItems[1].ToInteger; // index
    end;

    frmMain.ConEventList.Items.ValueFromIndex[frmMain.ConEventList.ItemIndex] := frmMain.GetChkFlagsSize([checkFlags]).ToString;
    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateCheckObject(checkObj: TConEventCheckObject);
begin
    checkObj.ObjectValue := cmbObjectToCheck.Items[cmbObjectToCheck.ItemIndex];
    checkObj.ObjectIndex := cmbObjectToCheck.ItemIndex;

    checkObj.GoToLabel := cmbObjNotFoundJumpTo.Items[cmbObjNotFoundJumpTo.ItemIndex];

    RepaintCurrentEvent();
end;

procedure TfrmEventInsAdd.ValidateTransferObject(transObj: TConEventTransferObject);
begin
    transObj.ObjectValue := cmbObjectToTransfer.Items[cmbObjectToTransfer.ItemIndex];
    transObj.ObjectIndex := frmMain.FindTableIdByName(tmObjects, transObj.ObjectValue); // Use item id from Table, not from combobox

    transObj.Amount := seAmountToTransfer.Value;

    transObj.ActorToValue := cmbTransferObjectTo.Items[cmbTransferObjectTo.ItemIndex];
    transObj.ActorToIndex := frmMain.FindTableIdByName(tmActorsPawns, transObj.ActorToValue);

    transObj.ActorFromValue := cmbTransferObjectFrom.Items[cmbTransferObjectFrom.ItemIndex];
    transObj.ActorFromIndex := frmMain.FindTableIdByName(tmActorsPawns, transObj.ActorFromValue);

    transObj.GotoLabel := cmbTransferObjectFailLabel.Items[cmbTransferObjectFailLabel.ItemIndex];

    RepaintCurrentEvent();
end;

procedure TfrmEventInsAdd.ValidateMoveCamera(moveCam: TConEventMoveCamera);
begin
    if rbSpecialCameraPos.Checked = True then begin
        EventWarning(True, 'CT_Actor camera type is not implemented in Deus Ex. Please select Predefined or Random mode.');
        Exit();
    end;

    if rbPredefinedCameraPos.Checked = true then begin
        moveCam.CameraType := CT_Predefined;
        moveCam.CameraAngle := TCameraPositions(cbbPredefinedCameraPos.ItemIndex);
    end else
    if rbRandomCameraPos.Checked = true then begin
        moveCam.CameraType := CT_Random;
    end;

    movecam.CameraTransition := TR_Jump; // not implemented anyway

    RepaintCurrentEvent();
    EventWarning(false);
end;

procedure TfrmEventInsAdd.ValidatePlayAnim(playAnim: TConEventAnimation);
begin
    if StringStartsFromDigit(cmbAnimSeq.Text) = true then begin
        EventWarning(true, 'Error: Animation name should not start from digit!');
        Exit();
    end;

    if IsInvalidFName(cmbAnimSeq.Text) = true then begin
        EventWarning(true, 'Error: Invalid animation name!');
        Exit();
    end;


    playAnim.ActorValue := cmbPawnToAnimate.Items[cmbPawnToAnimate.ItemIndex];
    playAnim.ActorIndex := frmMain.FindTableIdByName(tmActorsPawns, playanim.ActorValue);

    playAnim.AnimSequence := cmbAnimSeq.Text;

    playAnim.bAnimPlayOnce := rbPlayAnimOnce.Checked;
    playAnim.bAnimPlayOnce := not rbLoopAnim.Checked;

    playAnim.bAnimWaitToFinish := chkWaitFinishAnim.Checked;

    if chkAnimTimed.Checked = true then begin
        playAnim.AnimPlayForSeconds := edtPlayAnimSeconds.Value;
    end else
        playAnim.AnimPlayForSeconds := 0;

    EventWarning(false);
    RepaintCurrentEvent();
end;

procedure TfrmEventInsAdd.ValidateBuySellTrade(trade: TConEventTrade);
begin
    ShowMessage('BuySellTrade not implemented');
end;

procedure TfrmEventInsAdd.ValidateJump(jump: TConEventJump);
begin
    jump.conversationId := TConversation(cboJumpConv.Items.Objects[cboJumpConv.ItemIndex]).id;
    jump.gotoLabel := cboJumpLabel.Items[cboJumpLabel.ItemIndex];

    RepaintCurrentEvent();
end;

procedure TfrmEventInsAdd.ValidateRandom(rand: TConEventRandom);
begin
    if lstRandomLabels.Items.Count < 1 then begin  // check if we're have any labels to save
       EventWarning(True, 'Add some labels to jump to!');
       Exit();
    end;

    SetLength(rand.GoToLabels, lstRandomLabels.Items.Count); // set new array size

    for var nr:= 0 to lstRandomLabels.Items.Count -1 do begin // overwrite array
        rand.GoToLabels[nr] := lstRandomLabels.Items[nr];
    end;

    rand.bCycle := chkCycleEvents.Checked;
    rand.bCycleOnce := chkCycleOnce.Checked;
    rand.bCycleRandom := chkRandomAfterCycle.Checked;

    frmMain.ConEventList.Items.ValueFromIndex[frmMain.ConEventList.ItemIndex] := frmMain.GetRandomEventItemHeight([rand]).ToString;
    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateTrigger(trigger: TConEventTrigger);
begin
    if (Length(editTriggerTag.Text) > 0) and (StringStartsFromDigit(editTriggerTag.Text)) then begin
       EventWarning(True, 'Invalid characters in TriggerTag!');
       Exit();
    end;

    if Length(editTriggerTag.Text) < 1 then begin
       EventWarning(True, 'TriggerTag cannot be empty!');
       Exit();
    end;

    trigger.TriggerTag := editTriggerTag.Text;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateAddCompGoal(theGoal: TConEventAddGoal);
begin
    theGoal.GoalName := editGoalName.Text; // в любом случае

    if rbAddGoal.Checked = True then begin
       theGoal.bComplete := False;
       theGoal.bPrimaryGoal := chkPrimaryGoal.Checked;
       theGoal.GoalText := memoGoalText.Text;
    end else begin
       theGoal.bComplete := True;
    end;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateAddNote(note: TConEventAddNote);
begin
    note.TextLine := memoNoteText.Text;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateAddSkillPoints(skillPts: TConEventAddSkillPoints);
begin
    skillPts.Points := editSkillPointsAmount.Value;
    skillPts.TextLine := memoSkillPointMessage.Text;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateAddCredits(credits: TConEventAddCredits);
begin
    credits.Credits := seAddCredits.Value;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateCheckPersona(checkPersona: TConEventCheckPersona);
begin
    if rbCreditsCheck.Checked = True then checkPersona.AttrToCheck := EP_Credits else
    if rbHealthCheck.Checked = True then checkPersona.AttrToCheck := EP_Health else
    if rbSkillPointsCheck.Checked = True then checkPersona.AttrToCheck := EP_SkillPoints;

    case cmbCheckCondition.ItemIndex of
    0: checkPersona.Condition := EC_Less;
    1: checkPersona.Condition := EC_LessEqual;
    2: checkPersona.Condition := EC_Equal;
    3: checkPersona.Condition := EC_GreaterEqual;
    4: checkPersona.Condition := EC_Greater;
    end;

    checkPersona.CheckValue := editConditionValue.Value;
    checkPersona.CheckGoToLabel := cmbCheckLabelJump.Items[cmbCheckLabelJump.ItemIndex];

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateComment(comment: TConEventComment);
begin
    if Length(Trim(memoCommentText.Text)) < 1 then
    begin
        EventWarning(true, strCommentTextIsEmpty);
        memoCommentText.SetFocus();
        Exit();
    end;

    comment.TextLine := memoCommentText.Text;

    RepaintCurrentEvent();
    EventWarning(False);
end;

procedure TfrmEventInsAdd.ValidateEnd(endEvent: TConEventEnd);
begin
    RepaintCurrentEvent();
end;

procedure TfrmEventInsAdd.ValidateEvents(event: TConEvent);
begin
    if StringStartsFromDigit(Trim(editEventLabel.Text)) then begin
       ShowMessage(strLabelStartsFromDigit);
       Exit();
    end;

    event.EventLabel := editEventLabel.Text; // add event label if any

    if (event is TConEventSpeech) and (cmbEventType.ItemIndex = 0) then begin
       ValidateSpeech(TConEventSpeech(event));
    end else
    if (event is TConEventChoice) and (cmbEventType.ItemIndex = 1) then begin
       ValidateChoice(TConEventChoice(event));
    end else
    if (event is TConEventSetFlag) and (cmbEventType.ItemIndex = 2) then begin
       ValidateSetFlags(TConEventSetFlag(event));
    end else
    if (event is TConEventCheckFlag) and (cmbEventType.ItemIndex = 3) then begin
       ValidateCheckFlags(TConEventCheckFlag(event));
    end else
    if (event is TConEventCheckObject) and (cmbEventType.ItemIndex = 4) then begin
       ValidateCheckObject(TConEventCheckObject(event));
    end else
    if (event is TConEventTransferObject) and (cmbEventType.ItemIndex = 5) then begin
       ValidateTransferObject(TConEventTransferObject(event));
    end else
    if (event is TConEventMoveCamera) and (cmbEventType.ItemIndex = 6) then begin
       ValidateMoveCamera(TConEventMoveCamera(event));
    end else
    if (event is TConEventAnimation) and (cmbEventType.ItemIndex = 7) then begin
       ValidatePlayAnim(TConEventAnimation(event));
    end else
    if (event is TConEventTrade) and (cmbEventType.ItemIndex = 8) then begin
       ValidateBuySellTrade(TConEventTrade(event));
    end else
    if (event is TConEventJump) and (cmbEventType.ItemIndex = 9) then begin
       ValidateJump(TConEventJump(event));
    end else
    if (event is TConEventRandom) and (cmbEventType.ItemIndex = 10) then begin
       ValidateRandom(TConEventRandom(event));
    end else
    if (event is TConEventTrigger) and (cmbEventType.ItemIndex = 11) then begin
       ValidateTrigger(TConEventTrigger(event));
    end else
    if (event is TConEventAddGoal) and (cmbEventType.ItemIndex = 12) then begin
       ValidateAddCompGoal(TConEventAddGoal(event));
    end else
    if (event is TConEventAddNote) and (cmbEventType.ItemIndex = 13) then begin
       ValidateAddNote(TConEventAddNote(event));
    end else
    if (event is TConEventAddSkillPoints) and (cmbEventType.ItemIndex = 14) then begin
       ValidateAddSkillPoints(TConEventAddSkillPoints(event));
    end else
    if (event is TConEventAddCredits) and (cmbEventType.ItemIndex = 15) then begin
       ValidateAddCredits(TConEventAddCredits(event));
    end else
    if (event is TConEventCheckPersona) and (cmbEventType.ItemIndex = 16) then begin
       ValidateCheckPersona(TConEventCheckPersona(event));
    end else
    if (event is TConEventComment) and (cmbEventType.ItemIndex = 17) then begin
       ValidateComment(TConEventComment(event));
    end else
    if (event is TConEventEnd) and (cmbEventType.ItemIndex = 18) then begin
       ValidateEnd(TConEventEnd(event));
    end;
end;

// Can we add a label?
function TfrmEventInsAdd.CanAddRandomLabel(): Boolean;
begin
    if (lstRandomLabels.Items.Count = 0) then
        Exit(true);

    for var i:=0 to lstRandomLabels.Items.Count -1 do
    begin
        if UpperCase(lstRandomLabels.Items[i]) = UpperCase(cmbEventRandomLabels.Items[cmbEventRandomLabels.ItemIndex]) then
        begin
           EventWarning(true, 'Cannot add label since it already exists.');
           cmbEventRandomLabels.SetFocus();
           Exit(false);  // exit and return result = false
        end;
    end;

    Result := True;
end;

procedure TfrmEventInsAdd.btnAddCheckFlagClick(Sender: TObject);
begin
    frmFlagList.ShowModalCheckFlags(lvCheckFlags);
end;

procedure TfrmEventInsAdd.btnAddChoiceClick(Sender: TObject);
begin
    frmEditChoice.Receiver := lvChoiceList;
    frmEditChoice.bEditMode := False;
    frmEditChoice.ShowModal();
end;

procedure TfrmEventInsAdd.btnAddEventClick(Sender: TObject);
begin
    if (chkAutoSwapSpeaker.Checked = true) and (cmbEventType.ItemIndex = Ord(ET_Speech)) then
    begin
       var tempIndex:= cmbSpeakingFrom.ItemIndex; // swap items in comboboxes

       cmbSpeakingFrom.ItemIndex := cmbSpeakingTo.ItemIndex;
       cmbSpeakingTo.ItemIndex := tempIndex;
    end;
end;

procedure TfrmEventInsAdd.btnAddSetFlagClick(Sender: TObject);
begin
    frmFlagList.ShowModalSetFlags(lvSetFlags);
end;

procedure TfrmEventInsAdd.btnAddRandomLabelClick(Sender: TObject);
begin
    if CanAddRandomLabel() = true then
    begin
        lstRandomLabels.Items.Add(cmbEventRandomLabels.Text);
        lblStatus.Caption := '';
    end;
end;

procedure TfrmEventInsAdd.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmEventInsAdd.btnDeleteChoiceClick(Sender: TObject); // Delete choice with optional confirmation
begin
    if (frmMain.bAskForEventDelete = true) and (lvChoiceList.ItemIndex <> -1) then begin
       if Application.MessageBox(PChar(strDelChoiceText), PChar(strDelChoiceTitle), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
          lvChoiceList.Items.Delete(lvChoiceList.ItemIndex);
    end else
       lvChoiceList.Items.Delete(lvChoiceList.ItemIndex);
end;

procedure TfrmEventInsAdd.btnDeleteSetFlagClick(Sender: TObject);
begin
    for var lst := lvSetFlags.Items.Count -1 downto 0 do begin
        if lvSetFlags.Items[lst].Selected = True then
           lvSetFlags.Items[lst].Delete();
    end;
end;

procedure TfrmEventInsAdd.btnEditCameraSpecialPosClick(Sender: TObject);
begin
    Application.MessageBox('This feature is not implemented (and probably not implemented in game code?)', 'Not implemented',
    MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TfrmEventInsAdd.btnEditChoiceClick(Sender: TObject);
begin
    if lvChoiceList.ItemIndex = -1 then Exit();

    var tempChoicemp3:= GetChoiceItemSpeech(lvChoiceList.Items[lvChoiceList.ItemIndex].Data);

    if (chkDblClickToPlay.Checked) and (tempChoicemp3 <> '')  then begin
       PlayMP3Speech(tempChoicemp3);
       Exit();
    end;

    frmEditChoice.ShowModalAndLoadChoice(lvChoiceList);
end;

procedure TfrmEventInsAdd.btnFindObjectClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmObjects, cmbObjectToCheck);
end;

procedure TfrmEventInsAdd.btnHelpClick(Sender: TObject);
begin
    case cmbEventType.ItemIndex of
        0: frmHelp.LoadHelpResource('Speech');
        1: frmHelp.LoadHelpResource('Choice');
        2: frmHelp.LoadHelpResource('SetFlags');
        3: frmHelp.LoadHelpResource('CheckFlags');
        4: frmHelp.LoadHelpResource('CheckObject');
        5: frmHelp.LoadHelpResource('TransferObject');
        6: frmHelp.LoadHelpResource('MoveCamera');
        7: frmHelp.LoadHelpResource('PlayAnimation');
        8: frmHelp.LoadHelpResource('BuySellTrade');
        9: frmHelp.LoadHelpResource('Jump');
        10: frmHelp.LoadHelpResource('Random');
        11: frmHelp.LoadHelpResource('Trigger');
        12: frmHelp.LoadHelpResource('AddCompleteGoal');
        13: frmHelp.LoadHelpResource('AddNote');
        14: frmHelp.LoadHelpResource('AddSkillPoints');
        15: frmHelp.LoadHelpResource('AddCredits');
        16: frmHelp.LoadHelpResource('CheckPersona');
        17: frmHelp.LoadHelpResource('Comment');
        18: frmHelp.LoadHelpResource('End');
    end;
end;

procedure TfrmEventInsAdd.btnMoveUpChoiceClick(Sender: TObject);
begin
    if lvChoiceList.ItemIndex = 0
        then Exit();

    ExchangeListViewItems(lvChoiceList, lvChoiceList.Selected.Index, lvChoiceList.Selected.Index -1);
end;

procedure TfrmEventInsAdd.btnMoveDownChoiceClick(Sender: TObject);
begin
    if lvChoiceList.ItemIndex = lvChoiceList.Items.Count -1
        then Exit();

    ExchangeListViewItems(lvChoiceList, lvChoiceList.Selected.Index, lvChoiceList.Selected.Index +1);
end;

procedure TfrmEventInsAdd.btnNextEventClick(Sender: TObject); // next item in event list
begin
    if frmMain.ConEventList.ItemIndex = frmMain.ConEventList.Items.Count then Exit();

    if frmMain.ConEventList.ItemIndex <> -1 then
    begin
        frmMain.ConEventList.ItemIndex := frmMain.ConEventList.ItemIndex + 1;
        frmMain.ConEventListDblClick(frmMain.ConEventList);
    end;
end;

procedure TfrmEventInsAdd.btnPrevEventClick(Sender: TObject); // previous item in event list
begin
    if frmMain.ConEventList.ItemIndex = 0 then Exit();

    if frmMain.ConEventList.ItemIndex <> -1 then
    begin
        frmMain.ConEventList.ItemIndex := frmMain.ConEventList.ItemIndex - 1;
        frmMain.ConEventListDblClick(frmMain.ConEventList);
    end;
end;

procedure TfrmEventInsAdd.btnObjectToTransferClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmObjects, cmbObjectToTransfer);
end;

procedure TfrmEventInsAdd.btnObjTransferToPawnClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbTransferObjectTo);
end;

procedure TfrmEventInsAdd.btnPawnToAnimClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbPawnToAnimate);
end;

procedure TfrmEventInsAdd.btnPlayAudioFileClick(Sender: TObject);
begin
    var SpeechMP3File:= frmMain.ConFilePath +  '\Audio\' + edtSpeechAudioFile.Text;

    PlayMP3Speech(edtSpeechAudioFile.Text);

    if mp1.Mode = mpPlaying then
       btnPlayAudioFile.Caption:=strPlayMP3
    else
       btnPlayAudioFile.Caption:=strStopMP3;
end;

procedure TfrmEventInsAdd.btnRemoveAllRandomLabelsClick(Sender: TObject); // Удаляет метки перехода
begin
    lstRandomLabels.Items.Clear();
end;

procedure TfrmEventInsAdd.btnRemoveCurrentRandomLabelClick(Sender: TObject); // Только выбранную
begin
    if (lstRandomLabels.ItemIndex <> -1) then // Примечание: <> это то-же что и !=
       lstRandomLabels.Items.Delete(lstRandomLabels.ItemIndex);
end;

procedure TfrmEventInsAdd.btnSpeakingFromActorClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbSpeakingFrom);
end;

procedure TfrmEventInsAdd.btnSpeakingToActorClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbSpeakingTo);
end;

procedure TfrmEventInsAdd.btnTransferObjFromClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmActorsPawns, cmbTransferObjectFrom);
end;

procedure TfrmEventInsAdd.btnUpdateClick(Sender: TObject);
begin
    ValidateEvents(frmMain.CurrentEvent);
end;

procedure TfrmEventInsAdd.btnDeleteCheckFlagClick(Sender: TObject);
begin
    for var lst := lvCheckFlags.Items.Count -1 downto 0 do begin
        if lvCheckFlags.Items[lst].Selected = True then
            lvCheckFlags.Items[lst].Delete();
    end;
end;

procedure TfrmEventInsAdd.cboJumpConvChange(Sender: TObject);
begin
    cboJumpLabel.Items.Clear();
end;

procedure TfrmEventInsAdd.chAlphaBlendClick(Sender: TObject);
begin
    AlphaBlend := chAlphaBlend.Checked;
end;

procedure TfrmEventInsAdd.chkAnimTimedClick(Sender: TObject); // Заблокировать все элементы внутри группы Animation Timed
begin
    for var i := 0 to grpAnimTimed.ControlCount -1  do
        grpAnimTimed.Controls[i].Enabled := chkAnimTimed.Checked;
end;

procedure TfrmEventInsAdd.chkCycleEventsClick(Sender: TObject);
begin
    chkCycleOnce.Enabled := chkCycleEvents.Checked;
    chkRandomAfterCycle.Enabled := chkCycleEvents.Checked;

    if (chkCycleEvents.Checked = false) then
    begin
        chkCycleOnce.Checked := false;
        chkRandomAfterCycle.Checked := false;
    end;
end;

procedure TfrmEventInsAdd.chkDblClickToPlayClick(Sender: TObject);
begin
    btnEditChoice.Visible := not chkDblClickToPlay.Checked;
end;

procedure TfrmEventInsAdd.cmbEventRandomLabelsChange(Sender: TObject);
begin
    UpdateAddRandomLabelButtonState();
end;

procedure TfrmEventInsAdd.cmbEventRandomLabelsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    UpdateAddRandomLabelButtonState();
end;

procedure TfrmEventInsAdd.cmbAddLabelToRandomLabelsKeyPress(Sender: TObject;
  var Key: Char);
begin
    FilterEditInput(key);
end;

procedure TfrmEventInsAdd.cmbEventTypeChange(Sender: TObject);
begin
    EventsPages.ActivePageIndex := cmbEventType.ItemIndex;
    mp3Pos_pb.Visible := EventsPages.ActivePageIndex < 2;
    mp3VolumeControl.Visible := EventsPages.ActivePageIndex < 2;
    btnUpdate.Enabled := EventsPages.ActivePageIndex <> 8;
    EventWarning(False);


    case cmbEventType.ItemIndex of
    0: frmMain.EventType := ET_Speech;
    1: frmMain.EventType := ET_Choice;
    2: frmMain.EventType := ET_SetFlag;
    3: frmMain.EventType := ET_CheckFlag;
    4: frmMain.EventType := ET_CheckObject;
    5: frmMain.EventType := ET_TransferObject;
    6: frmMain.EventType := ET_MoveCamera;
    7: frmMain.EventType := ET_Animation;
    8: frmMain.EventType := ET_Trade;
    9: frmMain.EventType := ET_Jump;
    10: frmMain.EventType := ET_Random;
    11: frmMain.EventType := ET_Trigger;
    12: frmMain.EventType := ET_AddGoal;
    13: frmMain.EventType := ET_AddNote;
    14: frmMain.EventType := ET_AddSkillPoints;
    15: frmMain.EventType := ET_AddCredits;
    16: frmMain.EventType := ET_CheckPersona;
    17: frmMain.EventType := ET_Comment;
    18: frmMain.EventType := ET_End;
    end;
end;

procedure TfrmEventInsAdd.Consolas10Click(Sender: TObject);
begin
    frmMain.SetMemoFont(12, 'Consolas');
end;

procedure TfrmEventInsAdd.DefaultTahoma91Click(Sender: TObject);
begin
    frmMain.SetMemoFont(9, 'Tahoma');
end;

procedure TfrmEventInsAdd.editConditionValueChange(Sender: TObject);
begin
    if (Sender as TSpinEdit).Value < 0 then
       (Sender as TSpinEdit).Value := 0;
end;

procedure TfrmEventInsAdd.AllowFNameInput(Sender: TObject; var Key: Char);
begin
    if Sender is TComboBox then
        if ((CharInSet(Key, ['0'..'9'])) and (Length(TComboBox(Sender).Text) < 1)) then
            Key := #0;

    if Sender is TEdit then
        if ((CharInSet(Key, ['0'..'9'])) and (Length(TEdit(Sender).Text) < 1))  then
            Key := #0;

    FilterEditInput(Key);
end;

procedure TfrmEventInsAdd.ChangeMemoFontClick(Sender: TObject);
    var controlSent: String;
begin
    controlSent := MemoPopup.PopupComponent.Name; // Узнать, чьё это меню.

    if not FontDlgMemo.Execute() then exit();

    if controlSent = 'memoSpeech' then memoSpeech.Font := FontDlgMemo.Font else
    if controlSent = 'memoSkillPointMessage' then memoSkillPointMessage.Font := FontDlgMemo.Font else
    if controlSent = 'memoCommentText' then memoCommentText.Font := FontDlgMemo.Font else
    if controlSent = 'memoConversationNotes' then frmConvoProperties.memoConversationNotes.Font := FontDlgMemo.Font else
    if controlSent = 'memoGoalText' then memoGoalText.Font := FontDlgMemo.Font;

end;

procedure TfrmEventInsAdd.FormCreate(Sender: TObject);
  var i: Integer;
begin
  lblStatus.Caption := '';

  for i:=0 to EventsPages.PageCount -1 do // Убрать вкладки, нам они не нужны, только страницы.
      EventsPages.Pages[i].TabVisible := false;

    cmbEventTypeChange(self);
    UpdateControlsState();
end;

procedure TfrmEventInsAdd.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
    if ActiveControl is TSpinEdit then begin
        if Shift = [] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value - 1;
           Handled := True;
        end else
        if Shift = [ssCtrl] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value - 10;
           Handled := True;
        end else
        if Shift = [ssShift] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value - 100;
           Handled := True;
        end;
    end;
end;

procedure TfrmEventInsAdd.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
    if ActiveControl is TSpinEdit then begin
        if Shift = [] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value + 1;
           Handled := True;
        end else
        if Shift = [ssCtrl] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value + 10;
           Handled := True;
        end else
        if Shift = [ssShift] then begin
           TSpinEdit(ActiveControl).Value := TSpinEdit(ActiveControl).Value + 100;
           Handled := True;
        end;
    end;
end;

procedure TfrmEventInsAdd.FormResize(Sender: TObject);
begin
    UpdateSelActorButtons();
end;

procedure TfrmEventInsAdd.FormShow(Sender: TObject);
begin
    btnEditChoice.Visible := not chkDblClickToPlay.Checked;
end;

procedure TfrmEventInsAdd.lvCheckFlagsDblClick(Sender: TObject);
begin
    frmMain.ToggleLV_FlagValue(lvCheckFlags);
end;

procedure TfrmEventInsAdd.lvChoiceListChange(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
    with lvChoiceList do begin
        if ((ItemIndex = -1) or (Items.Count < 1)) then begin
          btnEditChoice.Enabled := False;
          btnDeleteChoice.Enabled := False;
        end
        else begin
          btnEditChoice.Enabled := true;
          btnDeleteChoice.Enabled := true;
        end;

        if ((ItemIndex = -1) or (Items.Count < 2)) then begin
          btnMoveUpChoice.Enabled := False;
          btnMoveDownChoice.Enabled := False;
        end
        else begin
          btnMoveUpChoice.Enabled := True;
          btnMoveDownChoice.Enabled := True;
        end;
    end;
end;

procedure TfrmEventInsAdd.lvSetFlagsChange(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
    with lvSetFlags do begin
        if ((ItemIndex = -1) or (Items.Count < 1)) then begin
          btnDeleteSetFlag.Enabled := False;
        end
        else begin
          btnDeleteSetFlag.Enabled := true;
        end;
    end;
end;

procedure TfrmEventInsAdd.lvSetFlagsDblClick(Sender: TObject);
begin
    frmMain.ToggleLV_FlagValue(lvSetFlags);
end;

procedure TfrmEventInsAdd.lvSetFlagsEditing(Sender: TObject; Item: TListItem; var AllowEdit: Boolean);
begin
    AllowEdit := False;
end;

procedure TfrmEventInsAdd.MemoPopupPopup(Sender: TObject);
begin
    ChangeMemoFont.Visible := MemoPopup.PopupComponent is TMemo;
    QFont.Visible := MemoPopup.PopupComponent is TMemo;

    if ChangeMemoFont.Visible = true then
       ChangeMemoFont.Caption := 'Font... ' + '(' + MemoPopup.PopupComponent.Name + ')';
end;


procedure TfrmEventInsAdd.mp1Notify(Sender: TObject);
begin
    mp3pos_pb.Max := mp1.Length; // update slider position
    mp3Pos_pb.Position := mp1.Position;

    if mp1.Mode = mpStopped then begin
       mp3posUpdateTimer.Enabled := False;
       btnPlayAudioFile.Caption := strPlayMP3;
    end;
    if mp1.Mode = mpPlaying then begin
      btnPlayAudioFile.Caption := strStopMP3;
    end;
end;

procedure TfrmEventInsAdd.mp3posUpdateTimerTimer(Sender: TObject);
begin
    mp3Pos_pb.Position := mp1.Position;

    if mp1.Mode = mpStopped then begin
       mp3posUpdateTimer.Enabled := False;
       btnPlayAudioFile.Caption := strPlayMP3;
    end;
end;

procedure TfrmEventInsAdd.mp3VolumeControlChange(Sender: TObject);
var
    Volume: Integer;
begin
    // Get the current volume from the TTrackBar
    Volume := mp3VolumeControl.Position;

    // Set the volume for your program using the Windows Multimedia API function
    waveOutSetVolume(0, Volume);
end;

procedure TfrmEventInsAdd.rbAddGoalClick(Sender: TObject);
    var i: Integer;
begin
    for i := 0 to grpGoalControls.ControlCount -1 do
        grpGoalControls.Controls[i].Enabled := rbAddGoal.Checked;
end;

procedure TfrmEventInsAdd.rbGoalCompletedClick(Sender: TObject);
    var i: Integer;
begin
    for i := 0 to grpGoalControls.ControlCount -1 do
        grpGoalControls.Controls[i].Enabled := not rbGoalCompleted.Checked;
end;


procedure TfrmEventInsAdd.rbLoopAnimClick(Sender: TObject);
begin
    if (rbLoopAnim.Checked = True) then
        begin
            chkWaitFinishAnim.Checked := false;
            chkWaitFinishAnim.Enabled := false;
        end;
end;

procedure TfrmEventInsAdd.rbPlayAnimOnceClick(Sender: TObject);
begin
    if (rbPlayAnimOnce.Checked = True) then
        chkWaitFinishAnim.Enabled := true;
end;

procedure TfrmEventInsAdd.rbPredefinedCameraPosClick(Sender: TObject);
begin
    cbbPredefinedCameraPos.Enabled:= True;
end;

procedure TfrmEventInsAdd.rbRandomCameraPosClick(Sender: TObject);
begin
    cbbPredefinedCameraPos.Enabled := False;
end;

procedure TfrmEventInsAdd.rbSpecialCameraPosClick(Sender: TObject);
begin
    cbbPredefinedCameraPos.Enabled := False;
end;

procedure TfrmEventInsAdd.Tahoma10Click(Sender: TObject);
begin
    frmMain.SetMemoFont(10, 'Tahoma');
end;


procedure TfrmEventInsAdd.RepaintCurrentEvent();
begin
    frmMain.ConEventList.SetFocus(); // repaint selected event
    SetFocus();
end;

// скорректировать положение кнопок для выбора актора
procedure TfrmEventInsAdd.UpdateSelActorButtons();
begin
  btnSpeakingFromActor.left := cmbSpeakingFrom.Width + cmbSpeakingFrom.Left + BTN_FIND_ACTOR_INDENT;
  btnSpeakingToActor.left := cmbSpeakingTo.Width + cmbSpeakingTo.Left + BTN_FIND_ACTOR_INDENT;
end;

// Обновить состояние элементов управления.
procedure TfrmEventInsAdd.UpdateControlsState();
begin
  mp1.Notify:= True; // set Notify to Media Player
  chAlphaBlend.Checked := AlphaBlend;
  chkAnimTimedClick(self);
end;


procedure TfrmEventInsAdd.UpdateAddRandomLabelButtonState();
begin
    btnAddRandomLabel.Enabled := Length(Trim(cmbEventRandomLabels.Text)) > 0;
end;


end.
