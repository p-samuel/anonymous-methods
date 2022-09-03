unit Example.Every;

interface

procedure Every;
procedure Every2;

implementation

uses
  System.SysUtils, Utils;

procedure Every;
var
  Every: Boolean;
  Numbers: TArray<Integer>;
begin
  //all numbers are greater than?
  Numbers := TArray<Integer>.Create(0, 1, 2, 3, 4);
  Every := TUtil.Every<Integer>(Numbers, function (Number: Integer): Boolean
  begin
    Result := Number > -1;
  end);
  WriteLn(BoolToStr(Every));
end;

procedure Every2;
var
  Names: TArray<String>;
  Every: Boolean;
begin
  //all names contains the letter 'a'?
  Names := TArray<String>.Create('Samuel', 'Bob', 'Obama', 'Andrew', 'Julia');
  Every := TUtil.Every<String>(Names, function (Name: String): Boolean
  begin
    Result := Name.ToLower().Contains('a');
  end);
  WriteLn(BoolToStr(Every));
end;

end.
