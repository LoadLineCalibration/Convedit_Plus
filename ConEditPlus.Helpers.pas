//
// Helper functions, utilities, etc.
//
unit ConEditPlus.Helpers;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils;

// functions
function StringStartsFromDigit(str: String): Boolean;
function IsInvalidFName(const AString: string): Boolean;
function ValidateFName(const AString: string): Boolean;
function GenerateRandomSuffix(): string;

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




end.
