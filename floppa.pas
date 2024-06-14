uses
  crt;
var
  Finp, Fout: text;
  c: string;
  n: integer;
Begin
  clrscr;

  n := 0;
  Assign(Finp,'C:\FPC\3.2.0\bin\i386-win32\b1.pas');
  Reset(Finp);
  Assign(Fout,'C:\linaD.txt');
  Rewrite(Fout);

  while not Eof(Finp) do
  Begin
    inc(n);
    readln(Finp, c);
    writeln(n,'. ',c);
    writeln(Fout,n,'. ',c)
  End;

  close(Finp);
  close(Fout);

  readkey
End.
