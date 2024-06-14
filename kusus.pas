uses crt;

var
  a, b: integer;

begin
  Writeln ('Напишите первое значение a=');
  Readln(a);
  Writeln ('Напишите первое значение b=');
  Readln(b);
  Writeln ('Первое значение a=', a);
  Writeln ('Первое значение b=', b);
  a := a+b;
  b := a-b;
  a := a-b;
  Writeln ('Второе значение a=', a);
  Writeln ('Второе значение b=', b);

  Readln;
  Clrscr;
end.