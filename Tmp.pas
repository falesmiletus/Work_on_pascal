uses
  crt;
const
  Nmax = 100;
var
  V: array[1..Nmax] of byte;
  i, n: integer;
  flag: boolean;
  k: byte;
Begin
  ClrScr;
  Randomize;

  for i := 1 to Nmax do
  begin
    V[i] := Random(250);
  end;

  Writeln('Repetitive: ');
  for i := 1 to Nmax do
  begin
    flag:= true;
    for n:= 1 to i-1 do
      if V[i] = V[n] then
      begin
        flag := false;
        break;
      end;
      if flag = false then
      begin
        k := 0;
        for n := 1 to Nmax do
          if V[i] = V[n] then
            inc(k);
            if k > 1 then
            write('  V[',i,'] = ', V[i]);
            if i mod 3 = 0 then
              writeln
      end
  end;

  writeln;
  Writeln('Not repetitive:');

  for i := 1 to Nmax do
  begin
    flag:= true;
    for n:= 1 to i-1 do
      if V[i] = V[n] then
      begin
        flag := false;
        break;
      end;
      if flag = true then
      begin
        k := 0;
        for n := 1 to Nmax do
          if V[i] = V[n] then
            inc(k);
            if k = 1 then
            write('  V[',i,'] = ', V[i]);
            if i mod 3 = 0 then
              writeln
      end
  end;

Readkey
End.
