var
   n, c : integer;
begin
  writeln('Введите число: ');
  readln(n);
  if n<0
  then write('Введите число > ');
  while n>0 do
    begin
      c := c*n;
      n := n-1;
    end;
    write(c);
end.   