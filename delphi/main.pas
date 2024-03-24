program Main;
uses
  SysUtils;
var
  i : int64;
  start, stop, elapsed : cardinal;
  fout : TextFile;
begin
  start := GetTickCount64();

  for i:=0 to 100000000 do
  begin
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