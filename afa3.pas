program afa3;
uses crt;
var
 x1,x2,d,a,b,c: real;
begin clrscr;
 write('vvedite a =');
 readln(a);
 write('vvefite b =');
 readln(b);
 write('vvefite c =');
 readln(c);

 d:= sqr(b) - 4*a*c;
 if d < 0
  then wtiteln('veshestvenue kornei net')
 elce
  if d=0
  when writeln(' edinctvenui veshedtvenui koren x =', -b/(2*a))
  else
  begin
   x1 := (-b + sqrt(d)) /(2*a);
   x2 := (-b - sqrt(d)) /(2*a);
   writeln ('x1 =', x1:0:6);
   writeln ('x2 =', x2:0:6);
   end;
 readkey;
end.