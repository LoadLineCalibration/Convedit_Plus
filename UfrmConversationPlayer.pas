unit UfrmConversationPlayer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;


type
  TfrmConversationPlayer = class(TForm)
    btnClose: TButton;


    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmConversationPlayer: TfrmConversationPlayer;

implementation

{$R *.dfm}


procedure TfrmConversationPlayer.btnCloseClick(Sender: TObject);
begin
    Close();
end;

end.
