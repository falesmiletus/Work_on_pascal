uses crt;
var
  t : boolean;
  x, y, z, p, q, k : integer;
begin
  t := ((x=y)and(x<>z))or((x=z)and(x<>y))or((y=z)and(y<>x));
  t := x>0;
  t := (x>0)and(y>0)and(z>0);
  t := ((x>0)and(y<=0)and(z<=0))or((x<=0)and(y>0)and(z<=0))or((x<=0)and(y<=0)and(z>0));
  t := p mod q=0;
  t := (k div 100=0)or(k div 10 mod 10=5)or(k mod 10=5);
end.