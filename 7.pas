program p7;
const m=100;
var a: array[1..m] of integer;
i,j,k,mx,n: integer;
begin
write('число элементов массива n = ');
readln(n);
writeln('массив:');
randomize;
for i:=1 to n do 
begin
a[i]:=random(-10,10);
write(a[i],' ');
end;
writeln;
k:=1; mx:=0; i:=1;
repeat
if a[i+1]>=a[i] then k:=k+1 else 
begin
if k>mx then mx:=k;
k:=1;
end;  
i:=i+1;
until i=n;
if k>mx then mx:=k;
writeln('максимальная длина монот. послед. = ',mx); // наиболее часто встречающийся элемент // сортировка массива
for i:=1 to n-1 do
for j:=i+1 to n do
if a[j]<a[i] then swap(a[j],a[i]); // вывод на экран отсортированного массива
for i:=1 to n do write(a[i],' ');// поиск наиболее часто встречающегося 
writeln;   
i:=1; k:=1; mx:=1;
repeat
while (a[i]=a[i+1]) and (i<n) do
begin
i:=i+1;
k:=k+1;
end;
if k>mx then
begin
mx:=k;
j:=i-1;
end;
k:=1;
i:=i+1;
until i>=n;  
writeln('наиболее часто встреч. ',a[j],'  ',mx,' раз(а)');
end.