program p2;

const
  c = 20;

var
  arr: array[1..c] of integer;
  i, num, a, b, sum: integer;

begin
  randomize;
  
  for i := 1 to c do
    arr[i] := random(93) - 22; 
  
  for i := 1 to c do
    write(arr[i], ' ');
  
  
  a := 0;
  for i := 2 to c step 2 do
    if arr[i] mod 2 = 0 then
      a := a + 1;
  
  writeln;
  writeln('Количество четных элементов на нечетных местах:', a);
  
  b := 1;
  for i := 1 to c do
    if arr[i] mod 2 <> 0 then
      b := b * arr[i];
  
  writeln('Произведение нечетных элементов массива:', b);
  
  writeln('Введите начало и конец промежутка:');
  readln(num, sum);

  sum := 0;
  for i := 1 to c do
    if (arr[i] >= num) and (arr[i] <= sum) then
      sum := sum + arr[i];
  
  writeln('Сумма элементов массива, принадлежащих заданному промежутку:', sum);
end.