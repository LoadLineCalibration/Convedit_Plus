unit Conversation.Classes;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, ConvEditPlus_Const,
  System.Types, System.Generics.Collections;


type // Various and sundry Event Types
TEventType = (
	ET_Speech,
	ET_Choice,
	ET_SetFlag,
	ET_CheckFlag,
	ET_CheckObject,
	ET_TransferObject,
	ET_MoveCamera,
	ET_Animation,
	ET_Trade,
	ET_Jump,
	ET_Random,
	ET_Trigger,
	ET_AddGoal,
	ET_AddNote,
	ET_AddSkillPoints,
	ET_AddCredits,
	ET_CheckPersona,
	ET_Comment,
	ET_End);

// For use in missions lists.
TMissionNumObj = class (TObject)
    missionNum: Integer;

    public
    constructor Create(num: Integer);
end;

TConParameters = class (TObject)
  conFileVersion: Integer;
  conCreatedByName: string;
  conCreatedByDate: string;

  conModifiedByName: string;
  conModifiedByDate: string;

  conAudioPackage: string;
  conNotes: string;

  conMissions: array of Integer;

  var conActors: TStringList; //TDictionary<Integer,string>; // why TDictionary? TStringList contains strings and automatically adds indexes, this is exactly what I need!
  var conFlags: TStringList;
  var conSkills: TStringList;
  var conObjects: TStringList;

  public
  constructor Create();
  destructor Destroy(); override;

  procedure Clear();
  function conXMLDateTime(): string;
end;


implementation

constructor TMissionNumObj.Create(num: Integer);
begin
  missionNum := num;
end;

constructor TConParameters.Create(); // create required lists here. Also fill some fields.
begin
  conFileVersion := CEP_CONXML_FILE_VERSION;
  conCreatedByDate := conXMLDateTime();

  conActors :=  TStringList.Create();
  conFlags :=   TStringList.Create();
  conSkills :=  TStringList.Create();
  conObjects := TStringList.Create();

  inherited; // Super.doSomething()
end;

destructor TConParameters.Destroy(); // освободить память при уничтоженнии объекта
begin
  conActors.Free();
  conFlags.Free();
  conSkills.Free();
  conObjects.Free();

  inherited; // Super.doSomething()
end;

procedure TConParameters.Clear(); // clear everything and set current date + time
begin
  conCreatedByName:= '';
  conCreatedByDate:= conXMLDateTime();

  conModifiedByName:= '';
  conModifiedByDate:= conXMLDateTime();

  conAudioPackage:= '';
  conNotes:='';

  conActors.Clear();
  conFlags.Clear();
  conSkills.Clear();
  conObjects.Clear();
end;

function TConParameters.conXMLDateTime(): string;
begin
    var EngDate:= TFormatSettings.Create('en-US'); // Для записи даты на Английском (иначе берется язык системы)

    var myTime := FormatDateTime('HH:MM:SS', Now());
    var myDate := FormatDateTime('dd mmm yyyy', Now(), EngDate);

    Result := myDate + ' ' + myTime + ' GMT'; // stub, not a real GMT!
end;


end.
