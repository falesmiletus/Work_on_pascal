uses crt, wincrt;
var
  x,y,m,eps : double;
  n : integer;

function  F(x: double): double;
begin
  F := sin(2*x) - ln(x);
end;

function  F1(x: double): double;
begin
  F1 := 2*cos(2*x) - 1/x;
end;

begin
  writeln('Введите x');
  write('Введите x=');
  readln(x);
  writeln('Введите m');
  write('Введите m=');
  readln(m);
  writeln('Vvedite eps');
  write('Введите eps=');
  readln(eps);
  n:=0;
  while (abs(f1(x)/m)>eps) do
begin
  y:=x-f1(x)/(2*cos(2*x)-1/x);
  x:=y;
  n:=n+1;
end;
  writeln('Vvedite x=',x);
  ReadLn;
end.