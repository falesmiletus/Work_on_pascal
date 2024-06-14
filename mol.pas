program afa1;
uses crt;
var
 tmpstr:string;
 temp:string;
 fin:text;
 z:longint;
procedure lines(tmpstr:string);
begin
 z:=0;
 assign(fin,tmpstr);
 reset(fin);
 while not eof(fin) do
 begin
  inc(z);
  readln(fin,temp);
  writeln(z,' ',temp);
  if ((z mod 20) =0) and (z>=20)
  then ReadKey;
 end;
end;
begin
 clrscr;
 tmpstr:='summachisel.pas';
 lines (tmpstr);
 readln
end.
