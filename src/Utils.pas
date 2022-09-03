unit Utils;

interface

uses
  System.SysUtils;

type
  TUtil = class sealed
    class function Map<T>(Args: TArray<T>; F: TFunc<T, T>): TArray<T>;
    class function Reduce<T>(Args: TArray<T>; F: TFunc<T, T, T>; InitialValue: T): T;
    class function Filter<T>(Args: TArray<T>; F: TFunc<T, Boolean>): TArray<T>;
    class function Every<T>(Args: TArray<T>; F: TFunc<T, Boolean>): Boolean;
    class function Some<T>(Args: TArray<T>; F: TFunc<T, Boolean>): Boolean;
    class function Find<T>(Args: TArray<T>; F: TFunc<T, Boolean>): T;
    class procedure ForEach<T>(Args: TArray<T>; F: TFunc<T, T>);
  end;

implementation

uses
  System.Generics.Collections;

{ TUtil }

class function TUtil.Every<T>(Args: TArray<T>; F: TFunc<T, Boolean>): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to Length(Args) - 1 do
     if not F(Args[I]) then
     begin
       Result := False;
       Exit;
     end;
end;

class function TUtil.Some<T>(Args: TArray<T>; F: TFunc<T, Boolean>): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Length(Args) - 1 do
    if F(Args[I]) then
    begin
      Result := True;
      Exit;
    end;
end;

class function TUtil.Filter<T>(Args: TArray<T>; F: TFunc<T, Boolean>): TArray<T>;
var
  I: Integer;
  List: TList<T>;
begin
  List := TList<T>.Create;
  try
    for I := 0 to Length(Args) - 1 do
      if F(Args[I]) then
        List.Add(Args[I]);
    Result := List.ToArray;
  finally
    List.Free;
  end;
end;

class function TUtil.Find<T>(Args: TArray<T>; F: TFunc<T, Boolean>): T;
var
  I: Integer;
begin
  for I := 0 to Length(Args) - 1 do
    if F(Args[I]) then
    begin
      Result := Args[I];
      Exit;
    end;
end;

class procedure TUtil.ForEach<T>(Args: TArray<T>; F: TFunc<T, T>);
var
  I: Integer;
begin
  for I := 0 to Length(Args) - 1 do
    Args[I] := F(Args[I]);
end;

class function TUtil.Map<T>(Args: TArray<T>; F: TFunc<T, T>): TArray<T>;
var
  I: Integer;
begin
  SetLength(Result, length(Args));
  for I := 0 to length(Args) - 1 do
    Result[I] := F(Args[I]);
end;

class function TUtil.Reduce<T>(Args: TArray<T>; F: TFunc<T, T, T>; InitialValue: T): T;
var
  I: T;
begin
  Result := InitialValue;
  for I in Args do
      Result := F(Result, I);
end;

end.
