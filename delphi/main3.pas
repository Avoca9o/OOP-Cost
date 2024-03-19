program Main3;

{$mode objfpc}{$H+}

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
begin
  obj := TDerived.Create;

  for i:=0 to 100000000 do
  begin
    obj.DoNothing;
  end;

  obj.Free;
end.
