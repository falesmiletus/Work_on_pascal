uses crt;
var
   r1,r2,Sres: real;

function Skrug (r: real): real;
begin
  SKrug := Pi*sqr(R);
end;

function Scol (Rvnesh, Rvnutr: real): real;
begin
   Scol := Skrug(Rvnesh)- Skrug(Rvnutr);
end;

begin
  clrscr;
  write('Введите радиус внешнего круга:');
  readln (r2);
  write('Ведите радиус внешнего круга:');
  readln (r1);
  
  Sres := Scol(r2,r1);
  if r1 < r2
  then
     writeln('Площадь кольца = ',Sres:0:6)
  else
     writeln('Некоректный ввод данных');
  readkey;
end.