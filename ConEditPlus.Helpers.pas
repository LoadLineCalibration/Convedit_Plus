//
// Helper functions, utilities, etc.
//
unit ConEditPlus.Helpers;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
     Conversation.Classes;

// functions
function StringStartsFromDigit(str: String): Boolean;
function IsInvalidFName(const AString: string): Boolean;
function ValidateFName(const AString: string): Boolean;
function GetDPIAsRatio(): Single;
function GenerateRandomSuffix(): string;
function FormatConversationDetails(const Conversation: TConversation): string;

// procedures
procedure FilterEditInput(var aKey: Char);

implementation

function StringStartsFromDigit(str: String): Boolean;
begin
    if (Length(str) > 0) and (CharInSet(str[1], ['0'..'9'])) then Result := True
       else Result := False;
end;

function IsInvalidFName(const AString: string): Boolean;
begin
    Result := false;

    for var i:= 1 to Length(AString) do
    begin
        if not CharInSet(AString[i], ['A'..'Z', 'a'..'z', '0'..'9', '_']) then
        begin
            Result := true;
            break;
        end;
    end;
end;

function ValidateFName(const AString: string): Boolean;
begin
    Result := (Pos(' ', AString) = 0) and
              (Pos('_', AString) > 0) and
              (CharInSet(AString[1],  ['A'..'Z', 'a'..'z'])) and
              (not CharInSet(AString[1], ['0'..'9']));
end;

{function ValidateFName(const AString: string): Boolean;
var
  CharIndex: Integer;
begin
  Result := (Pos(' ', AString) = 0) and
            (CharInSet(AString[1], ['A'..'Z', 'a'..'z'])) and
            (not CharInSet(AString[1], ['0'..'9']));

  for CharIndex := 1 to Length(AString) do
  begin
    if not (AString[CharIndex] in ['A'..'Z', 'a'..'z', '_']) then
    begin
      Result := False;
      Break;
    end;
  end;
end;}


function GetDPIAsRatio(): Single;
var
    DC: HDC;
begin
    DC := GetDC(0);
    Result := GetDeviceCaps(DC, LOGPIXELSX) / 96.0;
    ReleaseDC(0, DC);
end;

function GenerateRandomSuffix(): string;
begin
    Randomize;
    Result := '_';

    for var i := 1 to 3 do
        Result := Result + Chr(Ord('a') + Random(26));
end;

procedure FilterEditInput(var aKey: Char);
begin
    if CharInSet(aKey, ['A'..'Z', 'a'..'z', '0'..'9', '_', #8]) then
    else
    aKey := #0;
end;

function FormatConversationDetails(const Conversation: TConversation): string;
begin
  Result := Format('unknown0: %d'#13#10 +
                  'id: %d'#13#10 +
                  'conDescription: "%s"'#13#10 +
                  'conCreatedByDate: "%s"'#13#10 +
                  'conCreatedByName: "%s"'#13#10 +
                  'conModifiedByDate: "%s"'#13#10 +
                  'conModifiedByName: "%s"'#13#10 +
                  'conOwnerIndex: %d'#13#10 +
                  'conOwnerName: "%s"'#13#10 +
                  'bInfoLink: %s'#13#10 +
                  'conNotes: "%s"'#13#10 +
                  'bOnlyOnce: %s'#13#10 +
                  'bFirstPerson: %s'#13#10 +
                  'bNonInteract: %s'#13#10 +
                  'bRandomCamera: %s'#13#10 +
                  'bCanInterrupt: %s'#13#10 +
                  'bCannotInterrupt: %s'#13#10 +
                  'bPCBumps: %s'#13#10 +
                  'bPCFrobs: %s'#13#10 +
                  'bNPCSees: %s'#13#10 +
                  'bNPCEnters: %s'#13#10 +
                  'distance: %d',
                  [Conversation.unknown0,
                   Conversation.id,
                   Conversation.conDescription,
                   Conversation.conCreatedByDate,
                   Conversation.conCreatedByName,
                   Conversation.conModifiedByDate,
                   Conversation.conModifiedByName,
                   Conversation.conOwnerIndex,
                   Conversation.conOwnerName,
                   BoolToStr(Conversation.bInfoLink, True),
                   Conversation.conNotes,
                   BoolToStr(Conversation.bOnlyOnce, True),
                   BoolToStr(Conversation.bFirstPerson, True),
                   BoolToStr(Conversation.bNonInteract, True),
                   BoolToStr(Conversation.bRandomCamera, True),
                   BoolToStr(Conversation.bCanInterrupt, True),
                   BoolToStr(Conversation.bCannotInterrupt, True),
                   BoolToStr(Conversation.bPCBumps, True),
                   BoolToStr(Conversation.bPCFrobs, True),
                   BoolToStr(Conversation.bNPCSees, True),
                   BoolToStr(Conversation.bNPCEnters, True),
                   Conversation.distance]);
end;

end.
