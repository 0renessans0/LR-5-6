program p9;

var
  arr: array[1..20] of integer;
  i, min, b, c: integer;

begin
  randomize;
  
  for i := 1 to 20 do
    arr[i] := random(100) - 50;
  
  min := arr[1];
  b := 1;
  for i := 2 to 20 do
  begin
    if arr[i] < min then
    begin
      min := arr[i];
      b := i;
    end;
  end;
  
  c := -1;
  for i := 1 to 20 do
  begin
    if arr[i] > 0 then
    begin
      c := i;
      break;
    end;
  end;
  
  if c <> -1 then
  begin
    for i := c to 19 do
      arr[i] := arr[i + 1];
    arr[20] := 0; 
  end;
  
  for i := b to 19 do
    arr[i] := arr[i + 1];
  arr[20] := 0;
  
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(arr[i], ' ');
  
  writeln;
  
  writeln('Массив после удаления  положительного и наименьшегоо элемента:');
  for i := 1 to 19 do
    write(arr[i], ' ');
end.