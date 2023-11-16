program p6;
var k,n,m:integer; 
a:array of int64; 
b:int64; 
yesno:boolean; 
begin write('n='); 
readln(n); 
m:=n-1; write('>> '); 
setlength(a,n); 
for k:=0 to m do read(a[k]); 
for k:=0 to m do writeln(k+1:3,a[k]:20); 
writeln; yesno:=true; 
for k:=1 to m do if (a[k]<=a[k-1]) then 
begin 
yesno:=false; 
break end; 
if (yesno=true) then 
begin a[0]:=sqr(a[0]);
a[m]:=sqr(a[m]) end else 
begin b:=a[0]; 
a[0]:=a[m]; 
a[m]:=b 
end; 
for k:=0 to m do 
writeln(k+1:3,a[k]:20) 
end.