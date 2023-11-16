program p10;

var
  a: array[1..20] of integer;
  i, b, c: integer;

begin
  randomize;
  for i := 1 to 20 do
  begin
    a[i] := random(200) - 100; 
  end;
  
  writeln('Массив:');
  for i := 1 to 20 do
  begin
    write(a[i], ' ');
  end;
  writeln;
  c := 0; 
  for i := 1 to 20 do
  begin
    if a[i] >= 0 then
    begin
      a[i - c] := a[i];
    end
    else
    begin
      c := c + 1;
    end;
  end;
  for b := 20 - c + 1 to 20 do
  begin
    a[b] := 0;
  end;
  writeln('После удаления отрицательных элементов:');
  for i := 1 to 20 do
  begin
    write(a[i], ' ');
  end;
end.