unit UfrmConversationPlayer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, ES.BaseControls, ES.NinePatch, Vcl.ExtCtrls, Vcl.MPlayer,
  Conversation.Classes, System.Types, System.Generics.Collections, Vcl.GraphUtil;


type
  TfrmConversationPlayer = class(TForm)
    btnClose: TButton;
    lbAnswer: TListBox;
    txtSpeech: TEsImageLabel;
    mp1: TMediaPlayer;
    Button1: TButton; // play conversation

    procedure btnCloseClick(Sender: TObject);
    procedure lbAnswerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure mp1Notify(Sender: TObject);
    procedure TryToPlayNexEvent();
    procedure lbAnswerDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConversationPlayer: TfrmConversationPlayer;
  currentEvent: TConEvent;


implementation

{$R *.dfm}

uses MainWindow;


procedure TfrmConversationPlayer.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmConversationPlayer.lbAnswerDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    var ItemText, ItemText2: String;
    var EqualsPos: Byte;
    var tempRect := Rect;

    tempRect.Left := Rect.Left + 4;

    ItemText := (Control as TListBox).Items[Index];
    EqualsPos := Pos('=', ItemText);
    ItemText2 := Copy(ItemText, 1, EqualsPos -1);

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            Brush.Style := bsClear;
            GradientFillCanvas((Control as TListBox).Canvas, clBlue, clWebLightBlue, Rect, gdHorizontal);
            Font.Color := clYellow;
            DrawText(Handle, ItemText, -1, tempRect, DT_LEFT);
        end else
        begin
            FillRect(Rect);
            Font.Color := clWhite;
            DrawText(Handle, ItemText, -1, tempRect, DT_LEFT);
        end;
    end;
end;

procedure TfrmConversationPlayer.lbAnswerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
    Idx: Integer;
begin
    Idx := lbAnswer.ItemAtPos(Point(X, Y), True); // selection follows cursor, like in the game.

    if (Idx <> -1) and (Idx <> lbAnswer.ItemIndex) then
      lbAnswer.ItemIndex := Idx;
end;

procedure TfrmConversationPlayer.mp1Notify(Sender: TObject);
begin
    if mp1.NotifyValue = nvSuccessful then
        TryToPlayNexEvent();
end;

procedure TfrmConversationPlayer.TryToPlayNexEvent();
begin
//
end;

end.
