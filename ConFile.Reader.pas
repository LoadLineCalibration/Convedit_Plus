//
//  Read binary .con file
//

unit ConFile.Reader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, winapi.ActiveX;

procedure LoadConFile(conFile: string);
function DoubleToDateTime(floatDateTime: Double): TDateTime;


implementation

function DoubleToDateTime(floatDateTime: Double): TDateTime;
var
    finalvalue: TSystemTime;
begin
    VariantTimeToSystemTime(floatDateTime, finalvalue);

    Result := SystemTimeToDateTime(finalvalue);
end;

procedure LoadConFile(conFile: string);
var
  fileStr: TFileStream;
  ConRead: TBinaryReader;
begin
    fileStr := TFileStream.Create(conFile, fmOpenRead);
    ConRead := TBinaryReader.Create(fileStr, TEncoding.ANSI, False);
try
    // I need to decide how to separate those huge procedures from test project...

    ConRead.Close();
finally
    ConRead.Free();
    fileStr.Free();
end;
end;

end.
