{
    ElevenLabs API integration.
}
unit UfrmSpeechGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, ES.Labels, vcl.GraphUtil,
  system.UITypes, system.Types, Vcl.Mask, Vcl.ExtCtrls, REST.Types, REST.Client,
  Data.Bind.ObjectScope, system.Generics.Collections, System.JSON, Data.Bind.Components;

type TElevenLabsRequest =
(
    rqNone,
    rqGetVoices,
    rqGetCharacters,
    rqGetModels
);

type
  TfrmSpeechGenerator = class(TForm)
    mmoSpeechText: TMemo;
    tbStyleExag: TTrackBar;
    tbSimilarity: TTrackBar;
    tbStability: TTrackBar;
    edtAPIKey: TEdit;
    GroupBox1: TGroupBox;
    btnGenerate: TButton;
    btnClose: TButton;
    chkSpeakekBoost: TCheckBox;
    Label1: TLabel;
    EsLinkLabel1: TEsLinkLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGetStarted: TButton;
    lbVoices: TListBox;
    edtVoiceQSearch: TEdit;
    mmoLog: TMemo;
    LabeledEdit1: TLabeledEdit;
    edtCharsQuota: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnPlayVoiceDemo: TButton;
    cmbModels: TComboBox;
    Label4: TLabel;

    // New procedures
    procedure GenerateSpeech();
    procedure FillFields();
    procedure SetLogin();

    // Get - send request, fill - parse response
    procedure GetVoices();
    procedure FillVoices();

    procedure GetCharactersCount();
    procedure FillCharactersCount();

    procedure GetModels();
    procedure FillModels();

    procedure btnCloseClick(Sender: TObject);
    procedure btnGetStartedClick(Sender: TObject);
    procedure lbVoicesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnGenerateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RESTClient1HTTPProtocolError(Sender: TCustomRESTClient);
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    procedure PageControl1Change(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure cmbModelsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure cmbModelsChange(Sender: TObject);
  private

    { Private declarations }
  public
     Voices: TDictionary<String, String>; // voice string and voice id
     LastRequest: TElevenLabsRequest;
     CurrentVoiceModel: string;
    { Public declarations }

  end;

var
  frmSpeechGenerator: TfrmSpeechGenerator;

implementation

{$R *.dfm}

procedure TfrmSpeechGenerator.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmSpeechGenerator.btnGenerateClick(Sender: TObject);
begin
    GenerateSpeech();
end;

procedure TfrmSpeechGenerator.btnGetStartedClick(Sender: TObject);
begin
{    if Trim(edtAPIKey.Text) = '' then
    begin
        MessageDlg('Please type in or paste your API key first! This tool cannot work without valid API key!',  mtWarning, [mbOK], 0);
        Exit();
    end;}

    GetVoices();
    GetModels();
end;

procedure TfrmSpeechGenerator.cmbModelsChange(Sender: TObject);
begin
    var itemIdx: Integer;

    itemIdx := cmbModels.ItemIndex;
    CurrentVoiceModel := cmbModels.Items.ValueFromIndex[itemIdx];
    cmbModels.Hint := CurrentVoiceModel;
end;

procedure TfrmSpeechGenerator.cmbModelsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    var ItemText, ItemText2: String;
    var equalsPos: Byte;
    var tempRect := Rect;

    tempRect.Left := Rect.Left + 4;

    ItemText := (Control as TComboBox).Items[Index];
    equalsPos := Pos('=', ItemText);
    ItemText2 := Copy(ItemText, 1, equalsPos -1);

    with (Control as TComboBox).Canvas do
    begin
        if odSelected in State then
        begin
            Brush.Style := bsClear;
            GradientFillCanvas((Control as TComboBox).Canvas, clPurple, clBlack, Rect, gdHorizontal);
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

procedure TfrmSpeechGenerator.GetVoices();
begin
    LastRequest := rqGetVoices;

    SetLogin();
    RESTRequest1.ClearBody();
    RESTRequest1.Method := TRESTRequestMethod.rmGET;
    RESTRequest1.Resource := '/voices';
    RESTRequest1.Body.Add('', TRESTContentType.ctAPPLICATION_JSON);

    RESTRequest1.Execute();
end;

procedure TfrmSpeechGenerator.Label4Click(Sender: TObject);
begin
    GetModels();
end;

procedure TfrmSpeechGenerator.FillVoices();
var
    previewURL: string;
    ResponseData: TJSONObject;
begin
    ResponseData := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJSONObject; // parse contents of RESTResponse1

    Voices.Clear(); // Clear dictionary
    lbVoices.Clear();

    try
        var voicesArray := ResponseData.GetValue('voices') as TJSONArray;

        for var i:= 0 to voicesArray.Count -1 do
        begin
            var voiceObject := voicesArray.Items[i] as TJSONObject;
            previewURL := voiceObject.GetValue('preview_url').Value;
            Voices.Add(voiceObject.GetValue('name').Value, voiceObject.GetValue('voice_id').Value + ';' + previewURL);
        end;

    finally
        ResponseData.Free();
    end;

    for var voice in Voices do // fill the ListBox
        lbVoices.Items.AddPair(voice.Key, voice.Value);
end;

procedure TfrmSpeechGenerator.GetCharactersCount();
begin
    LastRequest := rqGetCharacters;

    SetLogin();
    RESTRequest1.ClearBody();
    RESTRequest1.Method := TRESTRequestMethod.rmGET;
    RESTRequest1.Resource := '/user/subscription';
    RESTRequest1.Body.Add('', TRESTContentType.ctAPPLICATION_JSON);

    RESTRequest1.ExecuteAsync();
end;

procedure TfrmSpeechGenerator.FillCharactersCount();
var
    ResponseData: TJSONObject;
    tier: string;
    characterCount, characterLimit: string;
begin
    ResponseData := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJSONObject; // parse contents of RESTResponse1

    try
        tier := ResponseData.GetValue('tier').Value;
        characterCount := ResponseData.GetValue('character_count').Value;//.ToInteger();
        characterLimit := ResponseData.GetValue('character_limit').Value;//.ToInteger();

    finally
        ResponseData.Free();
    end;

    mmoLog.Lines.Add('Tier: ' + tier);
    mmoLog.Lines.Add('character_count: ' + characterCount);
    mmoLog.Lines.Add('character_limit: ' + characterLimit);
    mmoLog.Lines.Add('Characters remaining: ' + (characterLimit.ToInteger - characterCount.ToInteger).ToString);
    edtCharsQuota.Text := 'Characters remaining: ' + (characterLimit.ToInteger - characterCount.ToInteger).ToString;
end;

procedure TfrmSpeechGenerator.GetModels();
begin
    LastRequest := rqGetModels;

    SetLogin();
    RESTRequest1.ClearBody();
    RESTRequest1.Method := TRESTRequestMethod.rmGET;
    RESTRequest1.Resource := '/models';
    RESTRequest1.Body.Add('', TRESTContentType.ctAPPLICATION_JSON);

    RESTRequest1.ExecuteAsync();
end;

procedure TfrmSpeechGenerator.FillModels();
var
    ResponseData: TJSONArray;
    model_id, model_name, model_desc: string;
begin
    ResponseData := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJSONArray; // parse contents of RESTResponse1

    cmbModels.Clear();

    for var i:= 0 to ResponseData.Count -1 do
    begin
        var modelObject := ResponseData.Items[i] as TJSONObject;

        model_id := modelObject.GetValue('model_id').Value;
        model_name := modelObject.GetValue('name').Value;
        model_desc := modelObject.GetValue('description').Value;

        cmbModels.Items.AddPair(model_name + ';' + model_id, model_desc);
    end;
end;

procedure TfrmSpeechGenerator.FillFields();
begin
    // RESTResponse
    RESTResponse1.ContentType := CONTENTTYPE_APPLICATION_JSON;// 'application/json';

    // RESTClient
    RESTClient1.AcceptCharset := 'UTF-8';
    RESTClient1.UserAgent := 'ElevenLabsClient';
    RESTClient1.Accept := CONTENTTYPE_APPLICATION_JSON;
    RESTClient1.ContentType := CONTENTTYPE_APPLICATION_JSON;
    RESTClient1.BaseURL := 'https://api.elevenlabs.io/v1';

    // RESTRequest
    RESTRequest1.AcceptCharset := 'UTF-8';
    RESTRequest1.Accept := CONTENTTYPE_APPLICATION_JSON;
    RESTRequest1.Params.Clear();
    RESTRequest1.Body.ClearBody();

    mmoLog.Clear();
    mmoSpeechText.Clear();
end;

procedure TfrmSpeechGenerator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    mmoLog.Clear();
    Voices.Clear();
    edtAPIKey.Clear();
end;

procedure TfrmSpeechGenerator.FormCreate(Sender: TObject);
begin
    Voices := TDictionary<String, String>.Create; // Create list for voices
    FillFields();
    PageControl1Change(self);
end;

procedure TfrmSpeechGenerator.GenerateSpeech();
begin
    var ItemIdx := lbVoices.ItemIndex;

    if ItemIdx = -1 then
    begin
        MessageDlg('Select voice from Library first!',  mtWarning, [mbOK], 0);
        Exit();
    end;
end;

procedure TfrmSpeechGenerator.lbVoicesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    var ItemText, ItemText2: String;
    var semicolonPos: Byte;
    var tempRect := Rect;

    tempRect.Left := Rect.Left + 4;

    ItemText := (Control as TListBox).Items[Index];
    semicolonPos := Pos(';', ItemText);
    ItemText2 := Copy(ItemText, 1, semicolonPos -1);

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

procedure TfrmSpeechGenerator.PageControl1Change(Sender: TObject);
begin
    btnPlayVoiceDemo.Visible := PageControl1.TabIndex < 1;
    edtVoiceQSearch.Visible := PageControl1.TabIndex < 1;
end;

procedure TfrmSpeechGenerator.RESTClient1HTTPProtocolError(Sender: TCustomRESTClient);
begin
  //
end;

procedure TfrmSpeechGenerator.RESTRequest1AfterExecute(Sender: TCustomRESTRequest); // Request has been executed, do something
begin
    mmoLog.Lines.Add(DateTimeToStr(Now()) + ': ' + RESTResponse1.StatusCode.ToString + ': ' + RESTResponse1.StatusText);

    // The code is not 200, so no reason to continue
    if RESTResponse1.StatusCode <> 200 then Exit();


    case LastRequest of
        rqNone: ;
        rqGetVoices: FillVoices();
        rqGetCharacters: FillCharactersCount();
        rqGetModels: FillModels();
    end;

    mmoLog.Lines.Add(#13#10 + DateTimeToStr(Now()) + ':---------------------------------------------------');
    mmoLog.Lines.Add(RESTResponse1.Content);
end;

procedure TfrmSpeechGenerator.SetLogin();
begin
    RESTRequest1.Params.Clear();
    RESTRequest1.Params.AddHeader('xi-api-key', edtAPIKey.Text);
    RESTRequest1.Params.ParameterByName('xi-api-key').Options := [poDoNotEncode];
end;

end.
