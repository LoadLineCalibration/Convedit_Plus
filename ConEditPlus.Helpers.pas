//
// Helper functions, utilities, etc.
//
unit ConEditPlus.Helpers;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
     Conversation.Classes, VCL.Graphics;

// functions
function ValidateFName(const AString: string): Boolean;
function GetDPIAsRatio(): Single;
function GenerateRandomSuffix(): string;
function FormatConversationDetails(const Conversation: TConversation): string;

// procedures
procedure FilterEditInput(var aKey: Char);
procedure SetConversationEventsIdx(con: TConversation);
procedure ExtractRGB(aColor: TColor; out r, g, b: Byte);

implementation

function ValidateFName(const AString: string): Boolean;
begin
    if (AString <> '') and
       ((CharInSet(AString[1], ['0'..'9'])) or
       (Pos(' ', AString) > 0)) then
    begin
        Result := False;
        Exit;
    end;

    // Проверяем каждый символ
    for var i := 1 to Length(AString) do
    begin
        if not CharInSet(AString[i], ['A'..'Z', 'a'..'z', '0'..'9', '_']) then
        begin
            Result := False;
            Exit;
        end;
    end;

    Result := True;
{    if (AString = '') or
       (CharInSet(AString[1], ['0'..'9'])) or
       (Pos(' ', AString) > 0) then
    begin
        Result := False;
        Exit;
    end;

    // Проверяем каждый символ
    for var i := 1 to Length(AString) do
    begin
        if not CharInSet(AString[i], ['A'..'Z', 'a'..'z', '0'..'9', '_']) then
        begin
            Result := False;
            Exit;
        end;
    end;

    Result := True;
}
end;

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
    Randomize();
    Result := '_';

    for var i := 1 to 3 do
        Result := Result + Chr(Ord('a') + Random(26));
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

procedure FilterEditInput(var aKey: Char);
begin
    if CharInSet(aKey, ['A'..'Z', 'a'..'z', '0'..'9', '_', #8]) then
    else
    aKey := #0;
end;

procedure SetConversationEventsIdx(con: TConversation);
begin
    var NewIndex := 0;

    for var Event in con.Events do
    begin
        Event.EventIdx := NewIndex;
        Event.unknown1 := Event.EventIdx + 1;
        Inc(NewIndex);
    end;
end;

procedure ExtractRGB(aColor: TColor; out r, g, b: Byte);
begin
    var rgbColor := VCL.Graphics.ColorToRGB(aColor);
    r := Byte(rgbColor);
    g := Byte(rgbColor shr 8);
    b := Byte(rgbColor shr 16);
end;


end.
