unit Example.Map;

interface

procedure Map;

implementation

uses
  System.SysUtils,
  Utils;

procedure Map;
var
  I: String;
  Letras: TArray<String>;
  LetrasMaiusculas: TArray<String>;
begin

  Letras := TArray<String>.Create('a', 'b', 'c', 'd', 'e');
  LetrasMaiusculas := TUtil.Map<String>(
    Letras, function (Letra: String): String
    begin
      Result := UpperCase(Letra);
    end
  );

  WriteLn('Letras minúsculas: ');
  for I in Letras do
    Write(I + ', ');

  WriteLn;
  WriteLn('Letras maiúsculas: ');
  for I in LetrasMaiusculas do
    Write(I + ', ');

  ReadLn;

end;

end.
