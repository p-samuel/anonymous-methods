unit Draft;

interface

type
  TAnonimo = reference to procedure;

implementation

uses
  System.SysUtils;

var
  MetodoAnonimo: TAnonimo;

initialization
  MetodoAnonimo := procedure
  begin
    Writeln('Olá, eu sou um procedimento anônimo!')
  end;

end.
