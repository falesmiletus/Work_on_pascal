uses crt;
var
x : extended;

begin
  Writeln('trunc(6.9)=', trunc(6.9));
  Writeln('trunc(6.2)=', trunc(6.2));
  Writeln('20 div 6=', 20 div 6);
  Writeln('2 div 5=', 2 div 5);
  Writeln('round(6.9)=', round(6.9));
  Writeln('round(6.2)=', round(6.2));
  Writeln('20 mod 6=', 20 mod 6);
  Writeln('2 mod 5=', 2 mod 5);
  x := 3 * 7 div 2 mod 7/3-trunc(sin(1));
  Writeln('3 * 7 div 2 mod 7/3-trunc(sin(1))=', x:3:6);
  Readln;
  Clrscr;

end.