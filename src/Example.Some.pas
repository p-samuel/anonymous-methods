unit Example.Some;

interface

procedure Some;
procedure Some2;

implementation

uses
  System.SysUtils, Utils;

procedure Some;
var
  Some: Boolean;
  Numbers: TArray<Integer>;
begin
  //at least one number is greater than?
  Numbers := TArray<Integer>.Create(0, 1, 2, 3, 4);
  Some := TUtil.Some<Integer>(Numbers, function (Number: Integer): Boolean
  begin
    Result := Number > 5;
  end);
  WriteLn(BoolToStr(Some));
end;

procedure Some2;
var
  Names: TArray<String>;
  Some: Boolean;
begin
  //at least one name is 'Bob'?
  Names := TArray<String>.Create('Samuel', 'Bob', 'Obama', 'Andrew', 'Julia');
  Some := TUtil.Some<String>(Names, function (Name: String): Boolean
  begin
    Result := Name = 'Bob';
  end);
  WriteLn(BoolToStr(Some));
end;

end.
