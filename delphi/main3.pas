program Main3;

{$mode objfpc}{$H+}

uses
  SysUtils;

type
  TBase = class
  public
    procedure DoNothing; virtual;
  end;

  TDerived = class(TBase)
  public
    procedure DoNothing; override;
  end;

procedure TBase.DoNothing;
begin
end;

procedure TDerived.DoNothing;
begin
end;

var
  obj: TBase;
  i: int64;
  start, stop, elapsed : cardinal;
  fout : TextFile;
begin
  obj := TDerived.Create;
  start := GetTickCount64();

  for i:=0 to 100000000 do
  begin
    obj.DoNothing;
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
  obj.Free;
end.
