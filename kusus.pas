uses crt;

var
  a, b: integer;

begin
  Writeln ('������ ��ࢮ� ���祭�� a=');
  Readln(a);
  Writeln ('������ ��ࢮ� ���祭�� b=');
  Readln(b);
  Writeln ('��ࢮ� ���祭�� a=', a);
  Writeln ('��ࢮ� ���祭�� b=', b);
  a := a+b;
  b := a-b;
  a := a-b;
  Writeln ('��஥ ���祭�� a=', a);
  Writeln ('��஥ ���祭�� b=', b);

  Readln;
  Clrscr;
end.