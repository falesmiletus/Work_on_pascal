Uses CRT;

Const
  N_max = 10000000;

var
  summa : extended;
  i : longint;

begin
  ClrScr;
  summa := 0;
  for i := 1 to N_max do
    summa := summa + 1/i;
  writeln(summa);
  readkey;

  ClrScr;
  summa := 0;
  begin
  for i := 1 to N_max do
    summa := summa + 1/i;
  writeln(summa);
  readkey;
  end;

end.