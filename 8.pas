program p8;
const n=20; m=10;
var
a: array[1..n] of Integer;
b: array[0..m-1] of Integer;
i, mx: Integer;
begin
Randomize;
WriteLn('Массив:'); {mx:=0;}
for i:=1 to n do 
begin
a[i]:=Random(m); Write(' ', a[i]);
Inc(b[a[i]]); if b[mx]<b[a[i]] then mx:=a[i];
end; 
WriteLn;
Write('Наиболее частые (',b[mx],') значения:');
for i:=0 to m-1 do if b[mx]=b[i] then Write(' ',i);
end.