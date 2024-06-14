program afa2;
uses crt;
var
  r1,r2,sres: real;
function skrug (R: real):real;
begin
 skrug := pi*sqr(R);
end;

function scol (rvnesh,rvnutr: real): real;
begin
 scol := skrug (Rvnesh) - skrug(rvnutr);
end;

begin
 clrscr;
 write('vvedite radius vneshnego kruga: ');
 readln(r2);
 write('vvedite radius vnutrenego kruga: ');
 readln(r1);

 sres:= scol(r2,r1);
 if r1 < r2
 then
  writeln('ploshad kolca = ', sres:0:6)
  else
  writeln('nekorektnui vvod dannux');
ReadKey
end.