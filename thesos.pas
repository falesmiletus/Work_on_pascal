uses crt;
var
x, k, n, y : integer;
P1 : longint;
p : extended;
t, a, b : boolean;
begin
  K := 15;
  Writeln('k mod 7=k div 5-1=  ', k mod 7=k div 5-1);
  p := 0.182;
  Writeln('odd(trunc(10*p))  ',odd(trunc(10*p)));
  n := 0;
  Writeln('not odd(n)  ',not odd(n));
  t := True;
  P1 := 10101;
  Writeln('t and(P mod 3=0)  ',t and(P1 mod 3=0));
  x := 2;
  y := 1;
  Writeln('(x*y <> 0) and (y > x)  ', (x*y <> 0) and (y > x));
  a := False;
  b := True;
  Writeln('a or not b  ', a or not b);
  Readln;
  Clrscr;

end.
