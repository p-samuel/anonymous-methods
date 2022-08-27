unit Example.Filter;

interface

procedure Filter;
procedure FilterNumbers;

implementation

uses
  System.SysUtils,
  Utils;

procedure Filter;
var
  Fruta: String;
  Frutas: TArray<String>;
  FrutasComB: TArray<String>;
begin
  Frutas := TArray<String>.Create('Uva', 'Kiwi', 'Banana', 'Abacate', 'Limão', 'Laranja');
  FrutasComB := TUtil.Filter<String>(Frutas, function (Fruta: String): Boolean
  begin
    Result := Fruta.Contains('b') or Fruta.Contains('B');
  end);

  WriteLn('Frutas que contém a letra "b"');
  for Fruta in FrutasComB do
    Write(Fruta + ', ');
  ReadLn;
end;

procedure FilterNumbers;
var
  Numero: Integer;
  Numeros: TArray<Integer>;
  Filtro: TArray<Integer>;
begin
  //Números múltiplos de 3
  Numeros := TArray<Integer>.Create(1, 3, 4, 5, 6, 14, 15, 17, 22, 23, 25, 32);
  Filtro := TUtil.Filter<Integer>(Numeros, function (Numero: Integer): Boolean
  begin
    Result := (Numero mod 3 = 0);
  end);

  for Numero in Filtro do
    Write(Numero.ToString + ', ');

  ReadLn;

end;

end.
