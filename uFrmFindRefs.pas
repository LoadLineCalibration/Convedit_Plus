unit uFrmFindRefs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Conversation.Classes, Vcl.ComCtrls;

type
  TfrmFindRefs = class(TForm)
    btnClose: TButton;
    GroupBox1: TGroupBox;
    btnReload: TButton;
    lvRefs: TListView;
    Label1: TLabel;

    // New procedures
    procedure ListConEventJump();
    procedure btnCloseClick(Sender: TObject);
    procedure lstRefsClick(Sender: TObject);
    procedure lvRefsDblClick(Sender: TObject);
    procedure lvRefsEditing(Sender: TObject; Item: TListItem; var AllowEdit: Boolean);
    procedure lvRefsCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFindRefs: TfrmFindRefs;

implementation

{$R *.dfm}

uses MainWindow, frmFind1;

{ TfrmFindRefs }

procedure TfrmFindRefs.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmFindRefs.ListConEventJump();
begin
    lvRefs.Items.Clear();

    for var con in frmMain.ConversationsList do
    begin
        for var Event in con.Events do
        begin
            if Event is TConEventJump then
            begin
                var Jump := TConEventJump(Event);
                var Item := lvRefs.Items.Add();
                var ConvoToJumpTo := frmMain.FindConversationObjById(Jump.conversationId);

                Item.Caption := con.conOwnerName + ' > ' + con.conName;
                Item.Data := ConvoToJumpTo;
                Item.SubItems.AddObject(Jump.GotoLabel, Jump);
            end;
        end;
    end;
end;

procedure TfrmFindRefs.lstRefsClick(Sender: TObject);
begin
    ListConEventJump();
end;

// https://stackoverflow.com/questions/25974281/how-can-i-change-the-background-and-font-color-of-a-selected-item-in-list-view
procedure TfrmFindRefs.lvRefsCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
    rt, r: TRect;
    s: String;
    i: Integer;
    c: TCanvas;

    // Fit the rect used for TextRect
    Procedure PrepareTextRect;
    begin
        rt := r;
        rt.Left := rt.Left + 5;
        rt.Top := rt.Top + 1;
    end;

begin
    c := Sender.Canvas;

    if (cdsSelected in State) then
    begin
        c.Brush.Color := clHighlight;
        c.Font.Color := clHighlightText;

        // will get the rect for Item + Subitems in ViewStyle = vsReport
        r := Item.DisplayRect(drBounds);
        c.FillRect(r);
        // set width to get fitting rt for tfEndEllipsis
        r.Right := r.Left + TListView(Sender).Columns[0].Width;
        s := Item.Caption;
        PrepareTextRect;
        c.TextRect(rt, s, [tfSingleLine, tfEndEllipsis]);

        if TListView(Sender).ViewStyle = vsReport then
        begin // Paint the Subitems if ViewStyle = vsReport
            for i := 0 to Item.SubItems.Count - 1 do
            begin
                r.Left := r.Left + TListView(Sender).Columns.Items[i].Width;
                r.Right := r.Left + TListView(Sender).Columns.Items[i + 1].Width;
                PrepareTextRect;
                s := Item.SubItems[i];
                c.TextRect(rt, s, [tfSingleLine, tfEndEllipsis]);
            end;
        end;
        DefaultDraw := false;
    end;
end;

procedure TfrmFindRefs.lvRefsDblClick(Sender: TObject);
begin
    if lvRefs.Items.Count = 0 then Exit();
    if lvRefs.ItemIndex = -1 then Exit();

    var itemIdx := lvRefs.ItemIndex;

    frmMain.SelectTreeItemByObject(frmMain.ConvoTree, lvRefs.Items[itemIdx].Data);

    if frmMain.ConvoTree.Selected <> nil then
    begin
        var EventObj := lvRefs.Items[itemIdx].SubItems.Objects[0];

        if EventObj <> nil then
            frmMain.SelectEventByObject(EventObj);
    end;
end;

procedure TfrmFindRefs.lvRefsEditing(Sender: TObject; Item: TListItem; var AllowEdit: Boolean);
begin
    AllowEdit := False;
end;

end.
