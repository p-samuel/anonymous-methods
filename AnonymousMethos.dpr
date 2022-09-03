program AnonymousMethos;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Draft in 'src\Draft.pas',
  Utils in 'src\Utils.pas',
  Example.Map in 'src\Example.Map.pas',
  Example.Reduce in 'src\Example.Reduce.pas',
  Example.Filter in 'src\Example.Filter.pas',
  Example.Every in 'src\Example.Every.pas',
  Example.Some in 'src\Example.Some.pas',
  Example.Find in 'src\Example.Find.pas',
  Example.ForEach in 'src\Example.ForEach.pas';

begin

  Map;
  Reduce;
  Filter;
  Every;
  Some;
  Find;
  ForEach;

end.
