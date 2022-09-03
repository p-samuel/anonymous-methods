unit Example.ForEach;

interface

procedure ForEach;

implementation

uses
  System.SysUtils, Utils;

procedure ForEach;
var
  Number: Integer;
  Numbers: TArray<Integer>;
begin
  Numbers := TArray<Integer>.Create(1, 2, 3, 4, 5);
  TUtil.ForEach<Integer>(Numbers, function (Number: Integer): Integer
  begin
    Result := Number + 1000;
  end);

  for Number in Numbers do
    Writeln(IntToStr(Number));
end;

end.
