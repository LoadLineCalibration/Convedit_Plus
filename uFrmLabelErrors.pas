unit uFrmLabelErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Conversation.Classes,
  ConEditplus.Consts, System.Generics.Collections, Vcl.Buttons;

type
  TfrmLabelErrors = class(TForm)
    lvLabelErrors: TListView;
    Label1: TLabel;
    btnClose: TButton;
    lblDblClick: TLabel;
    btnContinue: TBitBtn;
    btnCancel: TBitBtn;

    // new functions
    function CheckEventLabel(con: TConversation; aLabel: string): String;

    // new procedures
    procedure VerifyLabels(bSilent: Boolean = False);
    procedure CheckLabelDuplicates(const con: TConversation);

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvLabelErrorsDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabelErrors: TfrmLabelErrors;

implementation

{$R *.dfm}

uses frmFind1, MainWindow;


function TfrmLabelErrors.CheckEventLabel(con: TConversation; aLabel: string): String;
begin
    Result := '';

    for var event in con.Events do
    begin
        if LowerCase(event.EventLabel) = LowerCase(aLabel) then
            Result := event.EventLabel
    end;
end;

procedure TfrmLabelErrors.CheckLabelDuplicates(const con: TConversation);
begin
    var TempDict := TDictionary<string, Integer>.Create();
    var bDuplicateFound: Boolean := False;

    try
        for var aEvent in con.Events do
        begin
            var aEventLabel := LowerCase(aEvent.EventLabel);

            if aEventLabel <> '' then
            begin
                if TempDict.ContainsKey(aEventLabel) then
                begin
                    bDuplicateFound := True;
                    TempDict[aEventLabel] := TempDict[aEventLabel] + 1; // Update the count of duplicates for the event label
                end
                else
                begin
                    TempDict.Add(aEventLabel, 1);
                end;
            end;
        end;

        if bDuplicateFound then
        begin
            ShowMessage('Duplicate event labels found.');

            for var Key in TempDict.Keys do // Display the duplicate event labels and their counts
            begin
                if TempDict[Key] > 1 then
                    ShowMessage('Duplicate Event Label: ' + Key + ' Count: ' + TempDict[Key].ToString);
            end;
        end
        else
        begin
            //ShowMessage('No duplicates found.');
        end;

    finally
        TempDict.Free();
    end;
end;

procedure TfrmLabelErrors.VerifyLabels(bSilent: Boolean = False);
begin
    lvLabelErrors.Clear();
{ events which use labels to jump to:

    TConEventCheckFlag
    TConEventCheckObject
    TConEventTransferObject
    TConEventJump
    TConEventRandom (array)
    TConEventCheckPersona

    also TConEventChoice > Choices have JumpTolabel when choice is selected.
    Note: the OG conedit allows empty labels in choiceitems, but gives an error if label is invalid
}
    if frmMain.currentConFile = '' then Exit();


    for var con in frmMain.ConversationsList do
    begin
        for var event in con.Events do
        begin
            if event is TConEventCheckFlag then
            begin
                // ToDo: взять текущий Conversation, обойти его и поискать такую метку в EventLabel!
                var EventCheckFlag := TConEventCheckFlag(event);

                if LowerCase(EventCheckFlag.GotoLabel) <> LowerCase(CheckEventLabel(con, EventCheckFlag.GotoLabel)) then
                begin
                    Event.EventHighlightType := EHT_Error;

                    if bSilent = False then
                    begin
                        with frmLabelErrors do
                        begin
                            var LErrorItem:= lvLabelErrors.Items.Add();

                            LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                            LErrorItem.SubItems.AddObject(EventCheckFlag.GotoLabel, EventCheckFlag);
                        end;
                    end;
                end;
            end;

            if event is TConEventCheckObject then
            begin
                var EventCheckObj := TConEventCheckObject(event);

                if LowerCase(EventCheckObj.GoToLabel) <> LowerCase(CheckEventLabel(con, EventCheckObj.GoToLabel)) then
                begin
                    Event.EventHighlightType := EHT_Error;

                    if bSilent = False then
                    begin
                        with frmLabelErrors do
                        begin
                            var LErrorItem:= lvLabelErrors.Items.Add();

                            LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                            LErrorItem.SubItems.AddObject(EventCheckObj.GotoLabel, EventCheckObj);
                        end;
                    end;
                end;
            end;

            if event is TConEventTransferObject then
            begin
                var EventTransObj := TConEventTransferObject(event);

                if LowerCase(EventTransObj.GotoLabel) <> LowerCase(CheckEventLabel(con, EventTransObj.GotoLabel)) then
                begin
                    Event.EventHighlightType := EHT_Error;
                    if bSilent = False then
                    begin
                        with frmLabelErrors do
                        begin
                            var LErrorItem:= lvLabelErrors.Items.Add();

                            LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                            LErrorItem.SubItems.AddObject(EventTransObj.GotoLabel, EventTransObj);
                        end;
                    end;
                end;
            end;

            if event is TConEventJump then
            begin
                var EventJump := TConEventJump(event);
                var JumpCon := frmMain.FindConversationObjById(EventJump.conversationId);

                if LowerCase(EventJump.gotoLabel) <> LowerCase(CheckEventLabel(JumpCon, EventJump.gotoLabel)) then
                begin
                    Event.EventHighlightType := EHT_Error;

                    if bSilent = False then
                    begin
                        with frmLabelErrors do
                        begin
                            var LErrorItem:= lvLabelErrors.Items.Add();

                            LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                            LErrorItem.SubItems.AddObject(EventJump.GotoLabel, EventJump);
                        end;
                    end;
                end;
            end;

            if event is TConEventRandom then
            begin
                var EventRandom := TConEventRandom(event);

                for var i:= 0 to High(EventRandom.GoToLabels) do
                begin
                    if LowerCase(EventRandom.GoToLabels[i]) <> LowerCase(CheckEventLabel(con, EventRandom.GoToLabels[i])) then
                    begin
                        Event.EventHighlightType := EHT_Error;

                        if bSilent = False then
                        begin
                            with frmLabelErrors do
                            begin
                                var LErrorItem:= lvLabelErrors.Items.Add();

                                LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName + ' > ' + EventRandom.GoToLabels[i];
                                LErrorItem.SubItems.AddObject(EventRandom.GoToLabels[i], EventRandom);
                            end;
                        end;
                    end;
                end;
            end;

            if event is TConEventCheckPersona then
            begin
                var EventCheckPersona := TConEventCheckPersona(event);

                if LowerCase(EventCheckPersona.CheckGoToLabel) <> LowerCase(CheckEventLabel(con, EventCheckPersona.CheckGoToLabel)) then
                begin
                    Event.EventHighlightType := EHT_Error;

                    if bSilent = False then
                    begin
                        with frmLabelErrors do
                        begin
                            var LErrorItem:= lvLabelErrors.Items.Add();

                            LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                            LErrorItem.SubItems.AddObject(EventCheckPersona.CheckGotoLabel, EventCheckPersona);
                        end;
                    end;
                end;
            end;

            if event is TConEventChoice then
            begin
                var ChoiceEvent := TConEventChoice(event);

                for var k:= 0 to High(ChoiceEvent.Choices) do
                begin
                    if LowerCase(ChoiceEvent.Choices[k].GoToLabel) <> LowerCase(CheckEventLabel(con, ChoiceEvent.Choices[k].GoToLabel)) then
                    begin
                        Event.EventHighlightType := EHT_Error;

                        if bSilent = False then
                        begin
                            with frmLabelErrors do
                            begin
                                var LErrorItem:= lvLabelErrors.Items.Add();

                                LErrorItem.Caption := con.conOwnerName + ' > ' + con.conName + ' > ' + event.ClassName;
                                LErrorItem.SubItems.AddObject(ChoiceEvent.Choices[k].GoToLabel, ChoiceEvent);
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end;

procedure TfrmLabelErrors.btnCloseClick(Sender: TObject);
begin
    frmLabelErrors.Close();
end;

procedure TfrmLabelErrors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    lvLabelErrors.Items.Clear();
end;

procedure TfrmLabelErrors.FormShow(Sender: TObject);
begin
    if fsModal in FormState then // check if form has been opened using ShowModal();
    begin
        lblDblClick.Hide();
        btnClose.Hide();
        btnContinue.Show();
        btnCancel.Show();
    end else
    begin
        lblDblClick.Show();
        btnClose.Show();
        btnContinue.Hide();
        btnCancel.Hide();
    end;
end;

procedure TfrmLabelErrors.lvLabelErrorsDblClick(Sender: TObject);
begin
    if lvLabelErrors.GetCount() = 0 then Exit();
    if lvLabelErrors.ItemIndex = -1 then Exit();

    var itemIdx := lvLabelErrors.ItemIndex;
    var conName := frmFind.GetConversationName(lvLabelErrors.Items[itemIdx].Caption);
    var ConObj := frmMain.FindConversationObjByString(conName);

    frmMain.SelectTreeItemByObject(frmMain.ConvoTree, ConObj);

    if frmMain.ConvoTree.Selected <> nil then
    begin
        var EventObj := lvLabelErrors.Items[itemIdx].SubItems.Objects[0];

        if EventObj <> nil then
            frmMain.SelectEventByObject(EventObj);
    end;
end;

end.
