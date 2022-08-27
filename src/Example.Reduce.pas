unit Example.Reduce;

interface

procedure Reduce;

implementation

uses
  System.SysUtils,
  Utils;

procedure Reduce;
var
  Numeros: TArray<Double>;
  Soma: Double;
begin

  Numeros := TArray<Double>.Create(8.5, 6.5, 7.8, 10);
  Soma := TUtil.Reduce<Double>(Numeros, function (X, Y: Double): Double
  begin
    Result := X + Y;
  end, 0);

  WriteLn(Format('Somando os números 8.5, 6.5, 7.8, 10: %.2f', [Soma]));
  ReadLn;
end;

end.
