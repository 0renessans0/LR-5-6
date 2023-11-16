program p12;

var
  a: array[1..20] of Integer;
  b: array[1..100] of Integer;
  i, j: Integer;

begin
  
  Randomize;
  for i := 1 to 20 do
    a[i] := Random(20) - 10;
  
  
  j := 1;
  for i := 1 to 20 do
  begin
    if a[i] > 0 then
    begin
      b[j] := 0;
      j := j + 1;
    end;
    b[j] := a[i];
    j := j + 1;
  end;
  
  
  for i := 1 to 100 do
    Writeln(b[i]);
  
end.