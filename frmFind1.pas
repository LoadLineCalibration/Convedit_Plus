unit frmFind1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.AnsiStrings, system.StrUtils,
  Conversation.Classes, System.RegularExpressions, system.UITypes, ConvEditPlus.Consts;

type
  TfrmFind = class(TForm)
    Label1: TLabel;
    cbbFindWhat: TComboBox;
    btnFind: TButton;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    rbAllConvos: TRadioButton;
    rbCurrentConvo: TRadioButton;
    chkFindWholeWordOnly: TCheckBox;
    chkMatchCase: TCheckBox;
    GroupBox2: TGroupBox;
    lbSearchResults: TListBox;
    Label2: TLabel;
    edtSearchResults: TEdit;
    grpLookIn: TGroupBox;
    chkLookInSpeech: TCheckBox;
    chkLookInChoices: TCheckBox;
    chkLookInGoals: TCheckBox;
    chkLookInComments: TCheckBox;
    chkLookInNotes: TCheckBox;
    chkLookInAddSkillPts: TCheckBox;
    btnCheckAll: TButton;
    btnCheckSpeechOnly: TButton;

    // new functions
    function FindText(const WordToFind, TextToLookIn: string; ASearchOptions: TStringSearchOptions): Boolean;
    function GetConversationName(const itemText: string): string;

    // new procedures
    procedure SearchInConversations(const TextToFind: string);

    // for events with text
    procedure LookInSpeech(con: TConversation; SpeechEvent: TConEventSpeech; const TextToFind: string);
    procedure LookInChoice(con: TConversation; ChoiceEvent: TConEventChoice; const TextToFind: string);
    procedure LookInAddGoal(con: TConversation; GoalEvent: TConEventAddGoal; const TextToFind: string);
    procedure LookInAddNote(con: TConversation; NoteEvent: TConEventAddNote; const TextToFind: string);
    procedure LookInAddSkillPts(con: TConversation; AddSkillPtsEvent: TConEventAddSkillPoints; const TextToFind: string);
    procedure LookInComment(con: TConversation; comment: TConEventComment; const TextToFind: string);

    procedure btnCloseClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbSearchResultsDblClick(Sender: TObject);
    procedure btnCheckAllClick(Sender: TObject);
    procedure btnCheckSpeechOnlyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFind: TfrmFind;

implementation

{$R *.dfm}

uses MainWindow;

procedure TfrmFind.btnFindClick(Sender: TObject);
var
    chkTemp: TCheckBox;
begin
    if Trim(cbbFindWhat.Text).IsEmpty = true then
    begin
        MessageDlg(strSearchEnterSomething,  mtWarning, [mbOK], 0);
        Exit();
    end;

    var bAllUnchecked:= True;

    for var i := 0 to grpLookIn.ControlCount -1 do // “о-ли вручную вписать, то-ли через массив обойти..?
    begin
        if grpLookIn.Controls[i] is TCheckBox then
        begin
            chkTemp := TCheckBox(grpLookIn.Controls[i]);

            if chkTemp.Checked = True then
            begin
                bAllUnchecked := False;
            end;
        end;
    end;

    if bAllUnchecked = True then
    begin
        MessageDlg(strSearchSelectEvent,  mtWarning, [mbOK], 0);
        Exit();
    end;

    SearchInConversations(cbbFindWhat.Text);
end;

function TfrmFind.FindText(const WordToFind, TextToLookIn: string; ASearchOptions: TStringSearchOptions): Boolean;
begin
    var Size := StrLen(PChar(TextToLookIn));

    Result := SearchBuf(PChar(TextToLookIn), Size, 0,0, WordToFind, ASearchOptions) <> nil;
end;

function TfrmFind.GetConversationName(const itemText: string): string;
var
    Regex: TRegEx;
    Match: TMatch;
begin
    Regex := TRegEx.Create('>(.*?)>', [roIgnoreCase]);
    Match := Regex.Match(ItemText);

    if Match.Success then
        Result := Trim(Match.Groups[1].Value)
    else
        Result := '';
end;

procedure TfrmFind.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    lbSearchResults.Clear();
end;

procedure TfrmFind.lbSearchResultsDblClick(Sender: TObject);
begin
    if lbSearchResults.Count = 0 then Exit();

    if lbSearchResults.ItemIndex = -1 then Exit();

    var itemIdx := lbSearchResults.ItemIndex;
    var conName := GetConversationName(lbSearchResults.Items[itemIdx]);
    var ConObj := frmMain.FindConversationObjByString(conName);

    frmMain.SelectTreeItemByObject(frmMain.ConvoTree, ConObj);

    if frmMain.ConvoTree.Selected <> nil then
    begin
        var EventObj := lbSearchResults.Items.Objects[itemIdx];

        if EventObj <> nil then
        begin
            for var i:= 0 to frmMain.ConEventList.Count -1 do
            begin
                if frmMain.ConEventList.Items.Objects[i] = EventObj then
                begin
                    frmMain.ConEventList.Selected[i] := True;
                    Break;
                end;
            end;
        end;
    end;
end;

procedure TfrmFind.SearchInConversations(const TextToFind: string);
begin
    if Visible = False then Show();

    lbSearchResults.Clear();
    cbbFindWhat.Text := TextToFind;
    cbbFindWhat.Items.Add(TextToFind);

    if rbAllConvos.Checked = True then // search in All conversations
    begin
        for var con in frmmain.conversationslist do
        begin
            for var Event in con.Events do
            begin
                if Event is TConEventSpeech then // speech
                begin
                    if chkLookInSpeech.Checked = True then
                    begin
                        var SpeechEvent := TConEventSpeech(Event);

                        LookInSpeech(con, SpeechEvent, TextToFind);
                    end;
                end;

                if Event is TConEventChoice then // choice
                begin
                    if chkLookInChoices.Checked = True then
                    begin
                        var ChoiceEvent := TConEventChoice(Event);

                        LookInChoice(con, ChoiceEvent, TextToFind);
                    end;
                end;

                if Event is TConEventAddGoal then // add/complete goal
                begin
                    if chkLookInGoals.Checked = True then
                    begin
                        var AddGoalEvent := TConEventAddGoal(Event);

                        LookInAddGoal(con, AddGoalEvent, TextToFind);
                    end;
                end;

                if Event is TConEventAddNote then // add note to datavault
                begin
                    if chkLookInNotes.Checked = True then
                    begin
                        var AddNoteEvent := TConEventAddNote(Event);

                        LookInAddNote(con, AddNoteEvent, TextToFind);
                    end;
                end;

                if Event is TConEventAddSkillPoints then // add skill points (the text message is optional)
                begin
                    if chkLookInAddSkillPts.Checked = True then
                    begin
                        var AddSkillPtsEvent := TConEventAddSkillPoints(Event);

                        LookInAddSkillPts(con, AddSkillPtsEvent, TextToFind);
                    end;
                end;

                if Event is TConEventComment  then // comment
                begin
                    if chkLookInComments.Checked = True then
                    begin
                        var CommentEvent := TConEventComment(Event);

                        LookInComment(con, CommentEvent, TextToFind);
                    end;
                end;
            end;
        end;
    end;

    if rbCurrentConvo.Checked = True then // or only in current
    begin
        var con := frmMain.CurrentConversation;

        if con = nil then
        begin
            MessageDlg(strSearchSelectConversation,  mtWarning, [mbOK], 0);
            Exit();
        end;

        for var Event in con.Events do
        begin
            if Event is TConEventSpeech then // speech
            begin
                var SpeechEvent := TConEventSpeech(Event);

                LookInSpeech(con, SpeechEvent, TextToFind);
            end;

            if Event is TConEventChoice then // choice
            begin
                var ChoiceEvent := TConEventChoice(Event);

                LookInChoice(con, ChoiceEvent, TextToFind);
            end;

            if Event is TConEventAddGoal then // add/complete goal
            begin
                if chkLookInGoals.Checked = True then
                begin
                    var AddGoalEvent := TConEventAddGoal(Event);

                    LookInAddGoal(con, AddGoalEvent, TextToFind);
                end;
            end;

            if Event is TConEventAddNote then // add note to datavault
            begin
                if chkLookInNotes.Checked = True then
                begin
                    var AddNoteEvent := TConEventAddNote(Event);

                    LookInAddNote(con, AddNoteEvent, TextToFind);
                end;
            end;

            if Event is TConEventAddSkillPoints then // add skill points (the text message is optional)
            begin
                if chkLookInAddSkillPts.Checked = True then
                begin
                    var AddSkillPtsEvent := TConEventAddSkillPoints(Event);

                    LookInAddSkillPts(con, AddSkillPtsEvent, TextToFind);
                end;
            end;

            if Event is TConEventComment  then // comment
            begin
                if chkLookInComments.Checked = True then
                begin
                    var CommentEvent := TConEventComment(Event);

                    LookInComment(con, CommentEvent, TextToFind);
                end;
            end;
        end;
    end;

    edtSearchResults.Text := strSearchResults + lbSearchResults.Count.ToString;
end;

procedure TfrmFind.LookInSpeech(con: TConversation; SpeechEvent: TConEventSpeech; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        if FindText(TextToFind, SpeechEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + SpeechEvent.ClassName + ' > ' + TextToFind, SpeechEvent);
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        if FindText(TextToFind, SpeechEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + SpeechEvent.ClassName + ' > ' + TextToFind, SpeechEvent);
    end;
end;

procedure TfrmFind.LookInChoice(con: TConversation; ChoiceEvent: TConEventChoice; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        for var choiceItem in ChoiceEvent.Choices do
        begin
            if FindText(TextToFind, choiceItem.TextLine, tempSO) = true then
                lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + ChoiceEvent.ClassName + ' > ' + TextToFind, ChoiceEvent);
        end;
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        for var choiceItem in ChoiceEvent.Choices do
        begin
            if FindText(TextToFind, choiceItem.TextLine, tempSO) = true then
                lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + ChoiceEvent.ClassName + ' > ' + TextToFind, ChoiceEvent);
        end;
    end;
end;

procedure TfrmFind.LookInAddGoal(con: TConversation; GoalEvent: TConEventAddGoal; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        if FindText(TextToFind, GoalEvent.GoalText, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + GoalEvent.ClassName + ' > ' + TextToFind, GoalEvent);
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        if FindText(TextToFind, GoalEvent.GoalText, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + GoalEvent.ClassName + ' > ' + TextToFind, GoalEvent);
    end;
end;

procedure TfrmFind.LookInAddNote(con: TConversation; NoteEvent: TConEventAddNote; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        if FindText(TextToFind, NoteEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + NoteEvent.ClassName + ' > ' + TextToFind, NoteEvent);
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        if FindText(TextToFind, NoteEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + NoteEvent.ClassName + ' > ' + TextToFind, NoteEvent);
    end;
end;

procedure TfrmFind.LookInAddSkillPts(con: TConversation; AddSkillPtsEvent: TConEventAddSkillPoints; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        if FindText(TextToFind, AddSkillPtsEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + AddSkillPtsEvent.ClassName + ' > ' + TextToFind, AddSkillPtsEvent);
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        if FindText(TextToFind, AddSkillPtsEvent.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + AddSkillPtsEvent.ClassName + ' > ' + TextToFind, AddSkillPtsEvent);
    end;
end;

procedure TfrmFind.LookInComment(con: TConversation; comment: TConEventComment; const TextToFind: string);
begin
    var tempSO: TStringSearchOptions;

    if chkFindWholeWordOnly.Checked = True then
    begin
        tempSO := [soDown, soWholeWord];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soWholeWord, soMatchCase];

        if FindText(TextToFind, comment.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + comment.ClassName + ' > ' + TextToFind, comment);
    end;

    if chkFindWholeWordOnly.Checked = False then
    begin
        tempSO := [soDown];

        if chkMatchCase.Checked = true then
            tempSO := [soDown, soMatchCase];

        if FindText(TextToFind, comment.TextLine, tempSO) = true then
            lbSearchResults.items.AddObject(con.conOwnerName + ' > ' + con.conName + ' > ' + comment.ClassName + ' > ' + TextToFind, comment);
    end;
end;

procedure TfrmFind.btnCheckAllClick(Sender: TObject);
begin
    chkLookInComments.checked := True;
    chkLookInAddSkillPts.checked := True;
    chkLookInNotes.checked := True;
    chkLookInSpeech.checked := True;
    chkLookInChoices.checked := True;
    chkLookInGoals.checked := True;
end;

procedure TfrmFind.btnCheckSpeechOnlyClick(Sender: TObject);
begin
    chkLookInComments.checked := False;
    chkLookInAddSkillPts.checked := False;
    chkLookInNotes.checked := False;
    chkLookInSpeech.checked := True;
    chkLookInChoices.checked := False;
    chkLookInGoals.checked := False;
end;

procedure TfrmFind.btnCloseClick(Sender: TObject);
begin
    lbSearchResults.Clear();
    Close();
end;

end.
