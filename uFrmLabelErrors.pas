unit uFrmLabelErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Conversation.Classes;

type
  TfrmLabelErrors = class(TForm)
    lvLabelErrors: TListView;
    Label1: TLabel;
    btnClose: TButton;
    Label2: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvLabelErrorsDblClick(Sender: TObject);
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

procedure TfrmLabelErrors.btnCloseClick(Sender: TObject);
begin
    frmLabelErrors.Close();
end;

procedure TfrmLabelErrors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    lvLabelErrors.Items.Clear();
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

end.
