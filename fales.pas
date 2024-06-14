uses math, crt;


var
x, y, z, n, b : integer;

function Factorial(n: word): extended;
begin
  If n<=1
  Then Factorial :=1
  Else Factorial := Factorial (N-1) * N
end;

function F1(x : double): double;
begin
  F1 := sqr(1+x);
end;

function F2(x : double): double;
begin
  F2 := sqrt(1 + x*x);
end;

function F3(x : double): double;
begin
  F3 := sqr(cos(x*x));
end;

function F4(x : double): double;
begin
  F4 := ln(x/5)/ln(2);
end;

function F5(x : double): double;
begin
  F5 := arcsin(x);
end;

function F6(x: double): double;
begin
  F6 := (exp(x) + exp(-x))/2;
end;

function F7(x: double): double;
begin
  F7 := exp(ln(x) * sqrt(2));
end;

function F8(x: double): double;
begin
  F8 := exp (1/3 * ln(x+1));
end;

function F9(x: double): double;
begin
  F9 := sqrt(sqr(sqr(sqr(x))) + exp(x*ln(8)));
end;

function F10(x: double): double;
begin
  F10 := (x*y*z-3.3*abs(x+sqrt(sqrt(y))))/(exp(ln(10)*7)+ln(24));
end;

function F11(x: double): double;
begin
  F11 := (b + sqr(sin(sqr(pi*pi))))/(cos(2) + abs(cos(y)/sin(y)));
end;

begin
  Clrscr;
  Writeln('Введите значение n:');
  Write('n = ');
  Readln(n);
 // if (n<1) then do
  //while(n<1); do
  //begin
  //Writeln('Введите значение n:');
  //Write('n = ');
 // end;
 // end;
  Writeln('n! = ', Factorial(n):0:0);
  Readln;

end.
