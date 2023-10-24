unit frmFlagList1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ConvEditPlus_Const;

type
  TfrmFlagList = class(TForm)
    lbl1: TLabel;
    lstFlags: TListBox;
    btnEditFlags: TButton;
    grp1: TGroupBox;
    lblValue: TLabel;
    lblMissionExp: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    cbbFlagValue: TComboBox;
    cbbFlagExp: TComboBox;
    Label1: TLabel;
    procedure btnCancelClick(Sender: TObject);

    // new procedures
    procedure FillExpirationList();
    procedure FillFlagsList();
    procedure SendFlagsToEvent();
    procedure ShowModalSetFlags(rcv: TListView);
    procedure ShowModalCheckFlags(rcv: TListView);

    procedure btnOkClick(Sender: TObject);
    procedure btnEditFlagsClick(Sender: TObject);

  private
    { Private declarations }
  public
    Receiver: TListView;
    { Public declarations }
  end;

var
  frmFlagList: TfrmFlagList;

implementation

uses
  AddInsertEvent, ConFileProperties, ConvoProperties, EditChoice, EditValueDialog, HelpWindow,
  MainWindow, Table;

{$R *.dfm}

procedure TfrmFlagList.ShowModalSetFlags(rcv: TListView);
begin
    lblMissionExp.Visible := True;
    cbbFlagExp.Visible := True;

    FillFlagsList();
    FillExpirationList();

    if rcv <> nil then Receiver := rcv;

    Self.ShowModal();
end;

procedure TfrmFlagList.ShowModalCheckFlags(rcv: TListView);
begin
    lblMissionExp.Visible := False;
    cbbFlagExp.Visible := False;

    FillFlagsList();
    FillExpirationList();

    if rcv <> nil then Receiver := rcv;

    Self.ShowModal();
end;

procedure TfrmFlagList.btnEditFlagsClick(Sender: TObject);
begin
    frmMain.Flags1Click(Self);
end;

procedure TfrmFlagList.btnOkClick(Sender: TObject);
begin
    SendFlagsToEvent();
    Close();
end;

procedure TfrmFlagList.SendFlagsToEvent(); // fill flags list in Add/Edit event form.
var item: TListItem;
var i: Integer;
begin
    if Receiver = nil then Exit();

    with Receiver do
    begin
        for i:=lstFlags.Items.Count -1 downto 0 do
            begin
            if lstFlags.Selected[i] then
                begin
                    if FindCaption(0, lstFlags.Items[i], False, True, true) <> nil then // don't add if already exists
                        Continue;
                       //     ShowMessage('found item');

                    if Receiver.Name = 'lvCheckFlags' then begin
                        item := Items.Add();
                        item.Caption := lstFlags.Items[i];
                        Item.SubItems.Add(cbbFlagValue.Text);
                        Item.SubItems.Add(lstFlags.Items.IndexOf(lstFlags.Items[i]).ToString);
                    end;

                    if (Receiver.Name = 'lvSetFlags') then begin
                        item := Items.Add();
                        item.Caption := lstFlags.Items[i];
                        Item.SubItems.Add(cbbFlagValue.Text);
                        item.SubItems.Add(cbbFlagExp.Text);
                        Item.SubItems.Add(lstFlags.Items.IndexOf(lstFlags.Items[i]).ToString);
                    end;

                    if (Receiver.Name = 'lvConvoDependsOnFlags') then begin
                        item := Items.Add();
                        item.Caption := lstFlags.Items[i];
                        Item.SubItems.Add(cbbFlagValue.Text);
                        Item.SubItems.Add(lstFlags.Items.IndexOf(lstFlags.Items[i]).ToString);
                    end;
                end;
            end;
    end;
end;

procedure TfrmFlagList.FillExpirationList();
var i: Integer;
begin
    cbbFlagExp.Clear();

    for i:=0 to CEP_MAX_PLAYABLE_MISSIONS do
        cbbFlagExp.Items.Add(IntToStr(i));

    cbbFlagExp.ItemIndex := 0; // so combobox will always have something valid selected
end;

procedure TfrmFlagList.FillFlagsList();
begin
    lstFlags.Clear();

    for var flgs:= 0 to frmMain.listFlags.Count -1 do begin
        lstFlags.Items.Add(frmMain.listFlags[flgs]);
    end;
end;

procedure TfrmFlagList.btnCancelClick(Sender: TObject);
begin
    Close();
end;

end.
