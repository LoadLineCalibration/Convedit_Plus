unit EditChoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Conversation.Classes;

type
  TfrmEditChoice = class(TForm)
    Panel1: TPanel;
    pgc1: TPageControl;
    TabSheet1: TTabSheet;
    Flags: TTabSheet;
    TabSheet3: TTabSheet;
    btnCancel: TButton;
    btnOk: TButton;
    mmoChoiceText: TMemo;
    editChoiceAudioFile: TEdit;
    cbbChoiceJumpToLabel: TComboBox;
    chkDisplayChoiceAsSpeech: TCheckBox;
    grpSkillGrp: TGroupBox;
    chkReqSkill: TCheckBox;
    cmbSkill: TComboBox;
    cmbSkillAtLevel: TComboBox;
    btnPickSkill: TButton;
    lbl1: TLabel;
    Label1: TLabel;
    lvChoiceFlagList: TListView;
    Label2: TLabel;
    btnAddChoiceFlag: TButton;
    btnDeleteChoiceFlag: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnPickSkillClick(Sender: TObject);
    procedure chkReqSkillClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);

    // New procedures
    procedure SendChoiceToList();
    procedure EditChoiceInList();
    procedure ShowModalAndLoadChoice(from: TListView);
    procedure mmoChoiceTextChange(Sender: TObject);
    procedure ResetAll();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvChoiceFlagListDblClick(Sender: TObject);
    procedure btnAddChoiceFlagClick(Sender: TObject);
  private
    { Private declarations }
  public
    Receiver: TListView;
    bEditMode: Boolean;
    { Public declarations }
  end;

var
  frmEditChoice: TfrmEditChoice;

implementation

uses AddInsertEvent, ConFileProperties, ConvoProperties, EditValueDialog, MainWindow, Table, frmFlagList1;

{$R *.dfm}

procedure TfrmEditChoice.ResetAll();
begin
  chkReqSkill.Checked := False;
  chkReqSkillClick(chkReqSkill);
  chkDisplayChoiceAsSpeech.Checked := True;
  mmoChoiceText.Clear();
  cbbChoiceJumpToLabel.Text := '';
  lvChoiceFlagList.Clear();
end;

procedure TfrmEditChoice.btnAddChoiceFlagClick(Sender: TObject);
begin
    frmFlagList.ShowModalCheckFlags(lvChoiceFlagList);
end;

procedure TfrmEditChoice.btnCancelClick(Sender: TObject);
begin
    ResetAll();
    Close();
end;

procedure TfrmEditChoice.ShowModalAndLoadChoice(from: TListView);
begin
    bEditMode := True;

    with from do begin
        if ItemIndex <> -1 then begin

            // fill ComboBox
            cbbChoiceJumpToLabel.Items.Clear();
            for var choiceLabelCounter:= 0 to High(frmMain.CurrentConversation.Events) do
                if frmMain.CurrentConversation.Events[choiceLabelCounter].EventLabel <> '' then
                   cbbChoiceJumpToLabel.Items.Add(frmMain.CurrentConversation.Events[choiceLabelCounter].EventLabel);

            // set GoToLabel
            cbbChoiceJumpToLabel.ItemIndex := cbbChoiceJumpToLabel.Items.IndexOf(TChoiceItemObject(Items[ItemIndex].Data).GoToLabel);

            mmoChoiceText.Text := TChoiceItemObject(Items[ItemIndex].Data).textline;
            cbbChoiceJumpToLabel.Text := TChoiceItemObject(Items[ItemIndex].Data).GoToLabel;
            editChoiceAudioFile.Text := TChoiceItemObject(Items[ItemIndex].Data).mp3;
            chkDisplayChoiceAsSpeech.Checked := TChoiceItemObject(Items[ItemIndex].Data).bDisplayAsSpeech;


            // flags
            for var L:= 0 to High(TChoiceItemObject(Items[ItemIndex].Data).RequiredFlags) do begin

                var choiceFlagItem:= lvChoiceFlagList.Items.Add();
                    choiceFlagItem.Caption := TChoiceItemObject(Items[ItemIndex].Data).RequiredFlags[L].flagName;
                    choiceFlagItem.SubItems.Add(BoolToStr(TChoiceItemObject(Items[ItemIndex].Data).RequiredFlags[L].flagValue, True));
                    choiceFlagItem.SubItems.Add(TChoiceItemObject(Items[ItemIndex].Data).RequiredFlags[L].flagIndex.ToString);
            end;

            // fill and set skills
            chkReqSkill.Checked := TChoiceItemObject(Items[ItemIndex].Data).bSkillNeeded = 0;
            chkReqSkillClick(chkReqSkill);

            cmbSkill.Items.Assign(frmMain.conFileParameters.fpSkills);
            cmbSkill.ItemIndex := cmbSkill.Items.IndexOf(TChoiceItemObject(Items[ItemIndex].Data).Skill);
            // just set index
            cmbSkillAtLevel.ItemIndex := TChoiceItemObject(Items[ItemIndex].Data).SkillLevel;

        end;
    end;
    ShowModal();
end;

procedure TfrmEditChoice.SendChoiceToList();
var item: TListItem;
begin
  with Receiver do begin
    item := Items.Add();
    item.Caption := mmoChoiceText.Lines[0];
    item.SubItems.Add(cbbChoiceJumpToLabel.Text);
  end;
end;

procedure TfrmEditChoice.EditChoiceInList();
var item: TListItem;
begin
   with Receiver do begin
        item := Selected;
        item.Caption := mmoChoiceText.Lines[0];
        item.SubItems[0] := cbbChoiceJumpToLabel.Text;
   end;
end;

procedure TfrmEditChoice.btnOkClick(Sender: TObject);
begin
    if bEditMode = true then
       EditChoiceInList() else
            SendChoiceToList();

    Close();
end;

procedure TfrmEditChoice.btnPickSkillClick(Sender: TObject);
begin
    frmMain.PickTableObject(tmSkills, cmbSkill);
end;

procedure TfrmEditChoice.chkReqSkillClick(Sender: TObject);
var i: Integer;
begin
    for i := 0 to grpSkillGrp.ControlCount -1  do
        grpSkillGrp.Controls[i].Enabled := chkReqSkill.Checked;
end;

procedure TfrmEditChoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ResetAll();
end;

procedure TfrmEditChoice.FormShow(Sender: TObject);
begin
    chkReqSkillClick(chkReqSkill);
end;

procedure TfrmEditChoice.lvChoiceFlagListDblClick(Sender: TObject);
begin
    frmMain.ToggleLV_FlagValue(lvChoiceFlagList);
end;

procedure TfrmEditChoice.mmoChoiceTextChange(Sender: TObject);
var L: Integer;
begin
    L := mmoChoiceText.GetTextLen();

    btnOk.Enabled := ((L > 0) and
    (Length(Trim(cbbChoiceJumpToLabel.Text)) > 0));
end;

end.
