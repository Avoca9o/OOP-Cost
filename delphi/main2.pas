program Main2;

{$mode objfpc}{$H+}

type
  Base = class
  end;

var
  obj: Base;
  i: int64;

begin
  for i:=0 to 100000000 do
  begin
    obj := Base.Create;
    obj.Free;
  end;
end.
