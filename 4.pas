program p4;

const
  c = 30;

var
  A: array[1..c] of integer;
  B: array[1..c] of integer;
  i, j: integer;

begin
  for i := 1 to c do
    A[i] := random(67) - 99;  
  writeln('Массив А:');
  for i := 1 to c do
    write(A[i], ' ');
  
  j := 1;
  for i := 1 to c do
    if A[i] mod 2 = 0 then
    begin
      B[j] := A[i];
      j := j + 1;
    end; 
  writeln;
  writeln('Массив В:');
  for i := 1 to j - 1 do
    write(B[i], ' ');
end.