{
    ElevenLabs API integration.
}
unit UfrmSpeechGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, ES.Labels, vcl.GraphUtil,
  system.UITypes, system.Types, Vcl.Mask, Vcl.ExtCtrls, REST.Types, REST.Client, vcl.Clipbrd,
  Data.Bind.ObjectScope, system.Generics.Collections, System.JSON, Data.Bind.Components,
  system.Net.HttpClientComponent, system.IOUtils, Vcl.MPlayer, system.Threading, coneditplus.Consts,
  ES.BaseControls, ES.Layouts, coneditplus.Helpers;

type TElevenLabsRequest =
(
    rqNone,
    rqGetVoices,
    rqGetCharacters,
    rqGetModels,
    rqGetTTS,
    rqGetHistory
);

type
  TfrmSpeechGenerator = class(TForm)
    mmoSpeechText: TMemo;
    tbStyleExag: TTrackBar;
    tbSimilarity: TTrackBar;
    tbStability: TTrackBar;
    edtAPIKey: TEdit;
    gbVoiceParameters: TGroupBox;
    btnGenerateSpeech: TButton;
    btnClose: TButton;
    chkSpeakerBoost: TCheckBox;
    Label1: TLabel;
    EsLinkLabel1: TEsLinkLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGetStarted: TButton;
    lbVoices: TListBox;
    edtVoiceQSearch: TEdit;
    mmoLog: TMemo;
    edtRandSeed: TLabeledEdit;
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
    pb_mp3: TProgressBar;
    SGPlayer: TMediaPlayer;
    PlayVoiceUpdateTimer: TTimer;
    SaveDlg: TSaveDialog;
    pgcVoiceOptions_History: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    lbHistory: TListBox;
    EsPanel1: TEsPanel;
    btnLoadHistory: TButton;
    btnPlayHistoryItem: TButton;
    btnDownloadHistoryItem: TButton;
    btnDownloadGeneratedSpeech: TButton;
    btnPlayGeneratedSpeech: TButton;

    procedure ClearData(); // remove API key, voices, etc.
    procedure CancelRequests();

    procedure FillFields();
    procedure SetLogin();

    // Get - send request, fill - parse response
    procedure GetVoices();
    procedure FillVoices();

    procedure GetCharactersCount(bUseAsync: Boolean = False);
    procedure FillCharactersCount();

    procedure GetModels();
    procedure FillModels();

    procedure SendTTS();
    procedure ReceiveTTS();

    procedure GetHistory(bUseAsync: Boolean = False);
    procedure FillHistory();

    procedure DownloadFile(const aFileName: string); //https://stackoverflow.com/questions/3506251/downloading-a-file-in-delphi
    procedure PlayMp3File(const FileName: string);


    procedure btnCloseClick(Sender: TObject);
    procedure btnGetStartedClick(Sender: TObject);
    procedure lbVoicesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnGenerateSpeechClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    procedure PageControl1Change(Sender: TObject);
    procedure cmbModelsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure cmbModelsChange(Sender: TObject);
    procedure btnPlayVoiceDemoClick(Sender: TObject);
    procedure lbVoicesClick(Sender: TObject);
    procedure SGPlayerNotify(Sender: TObject);
    procedure PlayVoiceUpdateTimerTimer(Sender: TObject);
    procedure edtVoiceQSearchChange(Sender: TObject);
    procedure btnLoadHistoryClick(Sender: TObject);
    procedure lbHistoryDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnPlayGeneratedSpeechClick(Sender: TObject);
  private
    { Private declarations }
  public
     Voices: TDictionary<String, String>; // voice string and voice id
     CurrentVoiceid: string; // id
     CurrentVoiceName: string; // voice name, e.g. Daniel or Dorothy
     LastRequest: TElevenLabsRequest;
     LastGeneratedFile: string;
     CurrentVoiceModel: string;
     PreviewVoiceFile: string; // preview voice?
     TempPreviewVoiceFile: string;
     TaskPrepareForWork: iTask;
    { Public declarations }

  end;

var
  frmSpeechGenerator: TfrmSpeechGenerator;

implementation

{$R *.dfm}

uses AddInsertEvent, MainWindow;

function GenerateFilename(const param1, param2, param3, param4: string): string;
const
    InvalidChars = ['\', '/', ':', '*', '?', '"', '<', '>', '|'];
begin
    var filename := param1 + '_' + param2 + '_' + param3 + '_' + param4;

    for var i := 1 to Length(filename) do
    begin
        if CharInSet(filename[i], InvalidChars) then
          filename[i] := '_';
    end;

    Result := filename;
end;

// https://stackoverflow.com/questions/2183960/programatically-extract-the-file-name-from-a-download-link-using-delphi
function HexToInt(HexStr: String): Int64;
var RetVar : Int64;
    i : byte;
begin
    HexStr := UpperCase(HexStr);
    if HexStr[length(HexStr)] = 'H' then
       Delete(HexStr,length(HexStr),1);
    RetVar := 0;

    for i := 1 to length(HexStr) do begin
        RetVar := RetVar shl 4;
        if HexStr[i] in ['0'..'9'] then
           RetVar := RetVar + (byte(HexStr[i]) - 48)
        else
        if HexStr[i] in ['A'..'F'] then
            RetVar := RetVar + (byte(HexStr[i]) - 55)
        else
        begin
            Retvar := 0;
            break;
        end;
    end;

    Result := RetVar;
end;

function UrlDecode(const EncodedStr: String): String;
var
    I: Integer;
begin
    Result := '';
    if Length(EncodedStr) > 0 then
    begin
        I := 1;
        while I <= Length(EncodedStr) do
        begin
            if EncodedStr[I] = '%' then
            begin
                Result := Result + Chr(HexToInt(EncodedStr[I+1] + EncodedStr[I+2]));
                I := Succ(Succ(I));
            end
            else if EncodedStr[I] = '+' then
              Result := Result + ' '
            else
              Result := Result + EncodedStr[I];

            I := Succ(I);
        end;
    end;
end;

function GetURLFilename(const FilePath:String;Const Delimiter:String='/'):String;
    var I: Integer;
begin
    I := LastDelimiter(Delimiter, FILEPATH);
    Result := Copy(FILEPATH, I + 1, MaxInt);
    Result := UrlDecode(Result);
end;


procedure TfrmSpeechGenerator.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmSpeechGenerator.btnGenerateSpeechClick(Sender: TObject);
begin
    if Trim(edtAPIKey.Text) = '' then
    begin
        MessageDlg('Please type in or paste your API key first! Text-to-speech won''t work without valid API key!',  mtWarning, [mbOK], 0);
        Exit();
    end;

    btnGenerateSpeech.Caption := 'Wait, working...';
    btnGenerateSpeech.Enabled := False;
    SendTTS();
end;

procedure TfrmSpeechGenerator.btnGetStartedClick(Sender: TObject);
begin
    btnGetStarted.Enabled := False;
    Caption := strSpeechGenTitle + ' Please wait, sending API requests...';

    try
        GetVoices();
        GetModels();
        GetCharactersCount();
        GetHistory();
    except
        Caption := strSpeechGenTitle;
        btnGetStarted.Enabled := True;
        raise Exception.Create('Error while sending requests! Make sure you have an Internet connection.');
    end;

    Caption := strSpeechGenTitle;
    btnGetStarted.Enabled := True;

    cmbModels.ItemIndex := 0;
    cmbModelsChange(self);
end;

procedure TfrmSpeechGenerator.btnLoadHistoryClick(Sender: TObject);
begin
    GetHistory();
end;

procedure TfrmSpeechGenerator.btnPlayGeneratedSpeechClick(Sender: TObject);
begin
    if FileExists(LastGeneratedFile) then
        PlayMp3File(LastGeneratedFile);
end;

procedure TfrmSpeechGenerator.btnPlayVoiceDemoClick(Sender: TObject);
begin
    var TempString := lbVoices.Items[lbVoices.ItemIndex];
    var SemicolonPos := Pos(';', TempString);

    PreviewVoiceFile := Copy(TempString, SemicolonPos +1, Length(TempString) - SemicolonPos);

    DownloadFile(PreviewVoiceFile);

    if FileExists(TempPreviewVoiceFile) = False then Exit();

    PlayMp3File(TempPreviewVoiceFile);
end;

procedure TfrmSpeechGenerator.CancelRequests();
begin
    if (TaskPrepareForWork <> nil) and (TaskPrepareForWork.Status = TTaskStatus.Running) then
    begin
        TaskPrepareForWork.Cancel();
        btnGetStarted.Enabled := True;
        Caption := strSpeechGenTitle;
        pb_mp3.Position := 0;
    end;
end;

procedure TfrmSpeechGenerator.ClearData();
begin
    mmoLog.Clear();
    Voices.Clear();
    lbVoices.Clear();
    edtAPIKey.Clear();
end;

procedure TfrmSpeechGenerator.cmbModelsChange(Sender: TObject);
begin
    var itemIdx: Integer;

    itemIdx := cmbModels.ItemIndex;
    CurrentVoiceModel := cmbModels.Items[itemIdx];
    cmbModels.Hint := cmbModels.Items.ValueFromIndex[itemIdx];
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

procedure TfrmSpeechGenerator.DownloadFile(const aFileName: string);
var
    http : TNetHTTPClient;
    url : string;
    stream: TMemoryStream;
begin
    http := TNetHTTPClient.Create(nil);
    stream := TMemoryStream.Create;

    try
        url := PreviewVoiceFile;
        http.Get(url, stream);
        var FileName := GetURLFilename(url);

        var tempDirectory := GetEnvironmentVariable('TEMP');

        TempPreviewVoiceFile:= IncludeTrailingPathDelimiter(tempDirectory) + FileName;
        stream.SaveToFile(TempPreviewVoiceFile);

    finally
        stream.Free();
        http.Free();
    end;
end;

procedure TfrmSpeechGenerator.edtVoiceQSearchChange(Sender: TObject);
begin
    lbVoices.Items.BeginUpdate();

    try
        for var i:= 0 to lbVoices.Items.Count -1 do
        begin
            if Pos(UpperCase(edtVoiceQSearch.Text), UpperCase(lbVoices.Items[i])) > 0 then
            begin
                lbVoices.ItemIndex := i; //Selected[i] := True;
                Break;
            end;
        end;
    finally
        lbVoices.Items.EndUpdate();
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

procedure TfrmSpeechGenerator.GetCharactersCount(bUseAsync: Boolean = False);
begin
    LastRequest := rqGetCharacters;

    SetLogin();
    RESTRequest1.ClearBody();
    RESTRequest1.Method := TRESTRequestMethod.rmGET;
    RESTRequest1.Resource := '/user/subscription';
    RESTRequest1.Body.Add('', TRESTContentType.ctAPPLICATION_JSON);

    if bUseAsync = True then
        RESTRequest1.ExecuteAsync()
    else
        RESTRequest1.Execute();
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

    RESTRequest1.Execute();
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

        if (model_id <> 'eleven_english_sts_v2') and // skip STS models
           (model_id <> 'eleven_multilingual_sts_v2') then
            cmbModels.Items.AddPair(model_id, model_desc);
    end;
end;

procedure TfrmSpeechGenerator.SendTTS();
var
    JSONBody: TJSONObject;
begin
    LastRequest := rqGetTTS;

    SetLogin();
    RESTRequest1.Method := rmPOST;
    RESTRequest1.Resource := '/text-to-speech/' + CurrentVoiceid + '?mp3_44100_128';

    RESTRequest1.AddParameter('accept', 'audio/mpeg', pkHTTPHEADER, [poDoNotEncode]);
    JsonBody := TJSONObject.Create;

    try
        JsonBody.AddPair('text', mmoSpeechText.Text);
        JsonBody.AddPair('model_id', cmbModels.Items.Names[cmbModels.ItemIndex]);


        JSONBody.AddPair('voice_settings:', TJSONObject.Create
          .AddPair('stability', TJSONNumber.Create(tbStability.Position))
          .AddPair('style', TJSONNumber.Create(tbStyleExag.Position))
          .AddPair('similarity_boost', TJSONNumber.Create(tbSimilarity.Position))
          .AddPair('use_speaker_boost', TJSONBool.Create(chkSpeakerBoost.Checked))
        );

        //MessageBox(Handle, PChar(JSONBody.ToJSON()), 'voice_settings', MB_OK + MB_TOPMOST);
        RESTRequest1.AddBody(JsonBody.ToJson, ctAPPLICATION_JSON);
        RESTRequest1.Execute();

    finally
        FreeAndNil(JSONBody);
    end;
end;

procedure TfrmSpeechGenerator.ReceiveTTS();
var
    ResponseStream: TFileStream;
begin
    var aFileName := GenerateFilename('ElevenLabs', DateTimeToStr(Now), CurrentVoiceName,
                                      'gen_s' + tbStability.Position.ToString + '_sb' + tbSimilarity.Position.ToString +
                                      '_se' + tbStyleExag.Position.ToString + BoolToStr(chkSpeakerBoost.Checked, True));

    var tempDirectory := GetEnvironmentVariable('TEMP');

    LastGeneratedFile := IncludeTrailingPathDelimiter(tempDirectory) + aFileName + '.mp3';
    ResponseStream := TFileStream.Create(LastGeneratedFile, fmCreate);

    try
        ResponseStream.WriteBuffer(RESTResponse1.RawBytes, Length(RESTResponse1.RawBytes));
    finally
        ResponseStream.Free();
    end;

    GetCharactersCount(True); // Async if true
    GetHistory(True);

    btnGenerateSpeech.Enabled := True;
    btnGenerateSpeech.Caption := 'Generate Speech';
    btnPlayGeneratedSpeechClick(self);
end;

procedure TfrmSpeechGenerator.GetHistory(bUseAsync: Boolean = False);
begin
    LastRequest := rqGetHistory;

    SetLogin();
    RESTRequest1.ClearBody();
    RESTRequest1.Method := TRESTRequestMethod.rmGET;
    RESTRequest1.Resource := '/history?page_size=500'; // max = 1000, default = 100
    RESTRequest1.Body.Add('', TRESTContentType.ctAPPLICATION_JSON);

    if bUseAsync = True then
        RESTRequest1.ExecuteAsync()
    else
        RESTRequest1.Execute();
end;

procedure TfrmSpeechGenerator.FillHistory();
var
    HistoryItemText: string;
    HistoryItemVoiceName: string;
    ResponseData: TJSONObject;
begin
    ResponseData := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJSONObject; // parse contents of RESTResponse1

    lbHistory.Clear();

    try
        var HistoryArray := ResponseData.GetValue('history') as TJSONArray;

        for var i:= 0 to HistoryArray.Count -1 do
        begin
            var HistoryItemObject := HistoryArray.Items[i] as TJSONObject;

            HistoryItemText := HistoryItemObject.GetValue('text').Value;
            HistoryItemVoiceName := HistoryItemObject.GetValue('voice_name').Value;

            lbHistory.Items.AddPair(HistoryItemVoiceName, HistoryItemText);
        end;

    finally
        ResponseData.Free();
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
    CancelRequests();
    ClearData();
end;

procedure TfrmSpeechGenerator.FormCreate(Sender: TObject);
begin
    Caption := strSpeechGenTitle;
    Voices := TDictionary<String, String>.Create; // Create list for voices
    FillFields();
    PageControl1Change(self);
    lbVoicesClick(self);
end;

procedure TfrmSpeechGenerator.lbHistoryDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    var HistoryVoice, HistoryText: String;
    var tempRect := Rect;

    tempRect.Left := Rect.Left + 2;

    HistoryVoice := (Control as TListBox).Items.Names[Index];
    HistoryText := (Control as TListBox).Items.ValueFromIndex[Index];

    with (Control as TListBox).Canvas do
    begin
        Pen.Style := psInsideFrame;
        Frame3D(TListBox(Control).Canvas, Rect, clWhite, frmMain.clrGrid, 1); // разделитель
        Font.Name := 'Tahoma';

        if odSelected in State then
        begin
            Brush.Style := bsClear;
            GradientFillCanvas((Control as TListBox).Canvas, clPurple, clBlack, Rect, gdHorizontal);
            Font.Color := clWhite;
            Font.Size := 8;
            Font.Style := [fsBold];
            DrawText(Handle, HistoryVoice, -1, tempRect, DT_LEFT or DT_END_ELLIPSIS);

            tempRect.Top := Rect.Top + Round(14 * GetDPIAsRatio());
            tempRect.Right := Rect.Right - frmMain.SysScrollBarWidth; // right offset
            Font.Size := 9;
//            Font.Name := 'Tahoma';
            Font.Style := [];
            DrawText(Handle, HistoryText, -1, TempRect,  DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        end else
        begin
            FillRect(Rect);
            Font.Color := clBlack;
            Font.Style := [fsBold];
            Font.Size := 8;
            DrawText(Handle, HistoryVoice, -1, tempRect, DT_LEFT or DT_END_ELLIPSIS);

            tempRect.Top := Rect.Top + Round(14 * GetDPIAsRatio());
            tempRect.Right := Rect.Right - frmMain.SysScrollBarWidth; // right offset
            Font.Style := [];
//            Font.Name := 'Tahoma';
            Font.Size := 9;
            DrawText(Handle, HistoryText, -1, TempRect,  DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL);
        end;
    end;
end;

procedure TfrmSpeechGenerator.lbVoicesClick(Sender: TObject);
begin
    var ItemIdx := lbVoices.ItemIndex;

    btnPlayVoiceDemo.Enabled := ItemIdx <> -1;
    btnGenerateSpeech.Enabled := ItemIdx <> -1;

    if lbVoices.ItemIndex = -1 then Exit();

    var StartPos := Pos('=', lbVoices.Items[ItemIdx]) + 1;
    var EndPos := Pos(';', lbVoices.Items[ItemIdx]);

    CurrentVoiceid := Copy(lbVoices.Items[ItemIdx], StartPos, EndPos - StartPos);
    CurrentVoiceName := lbVoices.Items.Names[ItemIdx];
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

procedure TfrmSpeechGenerator.PlayMp3File(const FileName: string);
begin
    if SGPlayer.Mode = mpPlaying then
    begin
        SGPlayer.Stop();
        Exit();
    end;


    PlayVoiceUpdateTimer.Enabled := True;
    SGPlayer.FileName := FileName;
    SGPlayer.Open();
    pb_mp3.Position := 0;
    pb_mp3.Max := SGPlayer.Length;
    SGPlayer.Play();
end;

procedure TfrmSpeechGenerator.PlayVoiceUpdateTimerTimer(Sender: TObject);
begin
    pb_mp3.Position := SGPlayer.Position;

    if SGPlayer.Mode = mpStopped then
        PlayVoiceUpdateTimer.Enabled := False;
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
        rqGetTTS: ReceiveTTS();
        rqGetHistory: FillHistory();
    end;

//    mmoLog.Lines.Add(#13#10 + DateTimeToStr(Now()) + ':---------------------------------------------------');
//    mmoLog.Lines.Add(RESTResponse1.Content);
end;

procedure TfrmSpeechGenerator.SetLogin();
begin
    RESTRequest1.Params.Clear();
    RESTRequest1.Params.AddHeader('xi-api-key', edtAPIKey.Text);
    RESTRequest1.Params.ParameterByName('xi-api-key').Options := [poDoNotEncode];
end;

procedure TfrmSpeechGenerator.SGPlayerNotify(Sender: TObject);
begin
    pb_mp3.Max := SGPlayer.Length;
    pb_mp3.Position := SGPlayer.Position;
end;

end.
