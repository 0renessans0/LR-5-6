program p1;
var a:array[1..20] of integer;
var i: integer;
begin
  for i := 1 to 20 do
  begin
    write('Введите элемент массива: ');
    readln(a [i]);
  end;
  for i := 1 to 20 do
  begin
    if a[i] > 0 then
      a[i] := 0
    else
      a[i] := sqr(a[i]);
  end;
  writeln('Измененный массив:');
  for i := 1 to 20 do
    write(a[i], ' ');
  readln;
end.
