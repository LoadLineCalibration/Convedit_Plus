//
// Helper functions, utilities, etc.
//
unit ConvEditPlus_Util;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes;

function StringStartsFromDigit(str: String): Boolean;

implementation

function StringStartsFromDigit(str: String): Boolean;
begin
    if CharInSet(str[1], ['0'..'9']) then Result := True
       else Result := False;
end;

end.
