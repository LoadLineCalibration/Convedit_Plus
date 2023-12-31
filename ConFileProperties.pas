unit ConFileProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Conversation.Classes, vcl.GraphUtil, system.Types;

type
  TfrmConvoFileProperties = class(TForm)
    btnOk: TButton;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tsMissions: TTabSheet;
    Label5: TLabel;
    Label11: TLabel;
    tsFlags: TTabSheet;
    Label10: TLabel;
    tsStats: TTabSheet;
    tsInfo: TTabSheet;
    btnCancel: TButton;
    lstThisFileMissions: TListBox;
    lstAllMissions: TListBox;
    btnAddToLeft: TButton;
    btnAllAddToLeft: TButton;
    btnRemove: TButton;
    btnRemoveAll: TButton;
    mmoConvFileNotes: TMemo;
    edtConvoFileAudioPackage: TEdit;
    lbl1: TLabel;
    lvStatistics: TListView;
    lbl2: TLabel;
    Label6: TLabel;
    edtConFileVersion: TEdit;
    edtConFileLastModifiedBy: TEdit;
    Label9: TLabel;
    Label8: TLabel;
    edtConFileLastModifiedOn: TEdit;
    edtConFileCreatedBy: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    edtConFileCreatedOn: TEdit;
    StaticText1: TStaticText;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddToLeftClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    // new procedures
    procedure CheckIfCorrect();
    procedure UpdateConParameters();
    procedure FillMissionList();
    procedure ResetAll();
    procedure LoadAfterCreation();

    procedure FormShow(Sender: TObject);
    procedure edtConvoFileAudioPackageChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lstAllMissionsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConvoFileProperties: TfrmConvoFileProperties;

implementation

uses MainWindow;

{$R *.dfm}

procedure TfrmConvoFileProperties.LoadAfterCreation(); // fill from conParameters
begin
    with frmMain.conFileParameters do
    begin
        edtConvoFileAudioPackage.Text := fpAudioPackage;
        edtConFileVersion.Text   := fpFileVersion.ToString;
        edtConFileCreatedOn.Text := fpCreatedByDate;
        edtConFileCreatedBy.Text := fpCreatedByName;
        edtConFileLastModifiedOn.Text := fpModifiedByDate;
        edtConFileLastModifiedBy.Text := fpModifiedByName;
        mmoConvFileNotes.Text := fpNotes;

        for var i:=0 to lstAllMissions.Items.Count -1 do
        begin
            for var mc:= 0 to High(fpMissions) do               //if TMissionNumObj(lstAllMissions.Items.Objects[i]).missionNum = fpMissions[mc] then
            if lstAllMissions.Items.ValueFromIndex[i].ToInteger = fpMissions[mc] then
            begin
                //frmMain.mmoOutput.Lines.Add(TMissionNumObj(lstAllMissions.Items.Objects[i]).missionNum.ToString);// + ' ' + BoolToStr(lstAllMissions.Selected[i], true));
                frmMain.AddLog(lstAllMissions.Items.ValueFromIndex[i]);
                lstAllMissions.Selected[i] := True;  // select items we have saved before
            end;
        end;
    end;
    btnAddToLeftClick(btnAddToLeft); // "click" the button to add items from right list.
end;

procedure TfrmConvoFileProperties.lstAllMissionsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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
            GradientFillCanvas((Control as TListBox).Canvas, clPurple, clBlack, Rect, gdHorizontal);
            Font.Color := clWhite;
            DrawText(Handle, ItemText2, -1, tempRect, DT_LEFT);
        end else
        begin
            FillRect(Rect);
            Font.Color := clBlack;
            DrawText(Handle, ItemText2, -1, tempRect, DT_LEFT);
        end;
    end;
end;

procedure TfrmConvoFileProperties.ResetAll();
begin
    lstThisFileMissions.Clear();
    edtConvoFileAudioPackage.Clear();
    mmoConvFileNotes.Clear();
    lvStatistics.Clear();
    FillMissionList();
    PageControl1.ActivePageIndex := 0;
end;

procedure TfrmConvoFileProperties.FillMissionList();
//var
//    missionNumItem: TMissionNumObj;
begin
//    missionNumItem := nil;
//try
    with lstAllMissions do
    begin
        Clear();
        // Fill in four steps! :D
        //missionNumItem := TMissionNumObj.Create(99);
        //Items.AddObject('EndGame_' + missionNumItem.missionNum.ToString, missionNumItem);
        Items.AddPair('EndGame', '99');  //Object('EndGame_' + missionNumItem.missionNum.ToString, missionNumItem);

        //missionNumItem := TMissionNumObj.Create(98);
        //Items.AddObject('Intro_' + missionNumItem.missionNum.ToString, missionNumItem);
        Items.AddPair('Intro', '98');

        for var i:= 0 to 9 do
        begin
            //missionNumItem := TMissionNumObj.Create(i);
            //Items.AddObject('Mission 0' + missionNumItem.missionNum.ToString, missionNumItem);
            Items.AddPair('Mission 0' + i.ToString, i.ToString);
        end;

        for var k:=10 to 97 do
        begin
            //missionNumItem := TMissionNumObj.Create(k);
            //Items.AddObject('Mission ' + missionNumItem.missionNum.ToString, missionNumItem);
            Items.AddPair('Mission ' + k.ToString, k.ToString);
        end;
    end;
//finally
//missionNumItem.Free();
//end;
end;

procedure TfrmConvoFileProperties.UpdateConParameters();
begin
    with frmMain do
    begin
        SetLength(conFileParameters.fpMissions, 0);
        SetLength(conFileParameters.fpMissions, lstThisFileMissions.Items.Count);
        for var i:= 0 to lstThisFileMissions.Items.Count -1 do
        begin
            conFileParameters.fpMissions[i] := lstThisFileMissions.Items.ValueFromIndex[i].ToInteger; //TMissionNumObj(lstThisFileMissions.Items.Objects[i]).missionNum;
        end;

        conFileParameters.fpCreatedByName := edtConFileCreatedBy.Text;
        conFileParameters.fpCreatedByDate := edtConFileCreatedOn.Text;

        conFileParameters.fpModifiedByName := edtConFileLastModifiedBy.Text;
        conFileParameters.fpModifiedByDate := edtConFileLastModifiedOn.Text;

        conFileParameters.fpAudioPackage := edtConvoFileAudioPackage.Text;
        conFileParameters.fpNotes := mmoConvFileNotes.Lines[0];
    end;
end;

procedure TfrmConvoFileProperties.CheckIfCorrect();
begin
    btnOk.Enabled := (lstThisFileMissions.Items.Count > 0) and (Length(Trim(edtConvoFileAudioPackage.Text)) > 0);
end;

procedure TfrmConvoFileProperties.edtConvoFileAudioPackageChange(Sender: TObject);
begin
    CheckIfCorrect();
end;

// �������� �� ���� � ������������
procedure TfrmConvoFileProperties.btnAddToLeftClick(Sender: TObject);
var i: Integer;
begin
    for i := lstAllMissions.Items.Count -1 downto 0 do
        if lstAllMissions.Selected[i] then
        begin
            lstThisFileMissions.Items.Add(lstAllMissions.Items[i]);
            //lstThisFileMissions.Items.AddObject(lstAllMissions.Items[i], lstAllMissions.Items.Objects[i]);
            //lstThisFileMissions.Items.AddPair(lstAllMissions.Items[i], lstAllMissions.Items.ValueFromIndex[i]);
            lstAllMissions.Items.Delete(i);
        end;
    CheckIfCorrect();
end;

procedure TfrmConvoFileProperties.btnCancelClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmConvoFileProperties.btnOkClick(Sender: TObject);
begin
    UpdateConParameters();
    Close();
end;

// ������ �� ������������.
procedure TfrmConvoFileProperties.btnRemoveClick(Sender: TObject);
var i: Integer;
begin
    for i := lstThisFileMissions.Items.Count -1 downto 0 do
        if lstThisFileMissions.Selected[i] then
        begin
            lstAllMissions.Items.Add(lstThisFileMissions.Items[i]);
            //lstAllMissions.Items.AddObject(lstThisFileMissions.Items[i], lstThisFileMissions.Items.Objects[i]);
            //lstAllMissions.Items.AddPair(lstThisFileMissions.Items[i], lstThisFileMissions.Items.ValueFromIndex[i]);
            lstThisFileMissions.Items.Delete(i);
        end;
    CheckIfCorrect();
end;

procedure TfrmConvoFileProperties.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ResetAll();
end;

procedure TfrmConvoFileProperties.FormCreate(Sender: TObject);
begin
    lstAllMissions.Sorted := True;
    lstThisFileMissions.Sorted := True;

    CheckIfCorrect();
    FillMissionList();
end;

procedure TfrmConvoFileProperties.FormShow(Sender: TObject);
begin
    CheckIfCorrect();
end;

procedure TfrmConvoFileProperties.PageControl1Change(Sender: TObject);
begin
    CheckIfCorrect();

    case PageControl1.TabIndex of
    1: edtConvoFileAudioPackage.SetFocus();
    2: lvStatistics.SetFocus();
    3: PageControl1.SetFocus();
    end;
end;

end.
