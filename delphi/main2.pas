program Main2;

{$mode objfpc}{$H+}

uses
  SysUtils;

type
  Base = class
  end;

var
  obj: Base;
  i: int64;
  start, stop, elapsed : cardinal;
  fout : TextFile;
begin
  start := GetTickCount64();
  for i:=0 to 100000000 do
  begin
    obj := Base.Create;
    obj.Free;
  end;

  stop := GetTickCount64();
  elapsed := stop - start;
  
  Assign(fout, 'output.txt');
  if FileExists('output.txt') then
    Append(fout)
  else
    Rewrite(fout);
  WriteLn(fout, elapsed);
  Close(fout);
end.
