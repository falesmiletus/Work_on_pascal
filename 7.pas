uses crt;
var
   r1, r2 ,Sres: real;
   function Skrug (r : real): real;
   begin 
   Skrug := Pi*sqr(R);
   end;
   procedure scol (Rvnesh, rvnutr: real ; var scole: real);
   begin
     scole := Skrug(rvnesh) - Skrug(rvnutr)
   end;
   begin
     clrscr;
     write('Введите радиус внешнего круза');
     readln(r2);
     write('Введите радиус внутреннего круга');
     readln(r1);
     scol(r2, r1,sres);
     if r1<r2
     then
       writeln('площадь кольца =', Sres:0:3)
     else 
       writeln('некоретный ввод данных ');
     readkey;
   end.