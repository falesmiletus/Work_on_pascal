uses crt, wincrt;
var
  a,b,eps,c,x,t,ff : double;
function  F(x:double): double;
begin
F := sin(2*x) - ln(x)
end;
begin
  writeln('Vvedite a');
  readln(a);
  writeln('Vvedite b');
  readln(b);
  writeln('Vvedite eps');
  readln(eps);
  while b-a>eps do
  begin
    c :=(a + b)/2;
  if f(a)*f(c)<0 then
    b := c
  else
    a := c
  end;
  x :=(a + b)/2;
  t :=(b - a)/2;
  writeln('x = ', x);
  writeln('f(x) = ', F(x));
  ReadLn;
end.
