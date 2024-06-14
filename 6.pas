uses crt;
var
  x1, x2, d, a, b, c : Real;
begin clrscr;
  write('Введите a = ');
  readln(a);
  writeln('Введите b = ');
  readln(b);
  write('Введите c = ');
  readln(c);
  d := sqr(b) - 4*a*c;
  if d < 0
  then writeln('Вещественные корни отсутствуют')
  else
    if d = 0
    then writeln('Один вещественный корень x = ', -b/(2*a))
    else
    begin
      x1 := (-b + sqr(d))/(2*a);
      x2 := (-b - sqr(d))/(2*a);
      writeln('x1 = ', x1:0:6);
      writeln('x2 = ', x2:0:6);
      end;
      readkey;
      end.