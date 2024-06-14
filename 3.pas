uses crt;
var x, y : Longint;
begin clrscr;
  write('x = ');
  readln(y);
  
  writeln('x + y = ', x+y);
  writeln('x - y = ', x-y);
  writeln('x / y = ', x/y);
  writeln('x / y = ', round(x/y));
  readkey
end.  