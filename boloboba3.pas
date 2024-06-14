uses Graph, crt;

const
  X0 = 100;
  MY = 0.9;

var
  grDriver, grMode, n : integer;
  k : Byte;
  o,l,a,s : string;
  p,j, MaxUal, XBeg, XEnd,x ,y ,mm ,eps : double;
  m : word;
  FuncData: array [1..1024] of double;

function F(x: double): double;
Begin
  F := sin (2*x) - ln(x)
End;
function F1(x: double): double;
begin
  F1 := 2*cos(2*x) - 1/x;
end;

Begin
  ClrScr;
  writeln('Vvedite nachalinoe znacenia X:');
  write('XBeg =');
  readln(XBeg);
  writeln('Vvedite konchnoe znacenia X:');
  write('XEnd = ');
  readln(XEnd);
  writeln('Введите x');
  write('x =');
  readln(x);
  writeln('Введите mm');
  write('mm =');
  readln(mm);
  writeln('Введите eps');
  write('eps =');
  readln(eps);
  n :=0;
  while (abs(f1(x)/mm)>eps) do
  begin
  y := x-f1(x)/(2*cos(2*x)-1/x);
  x := y;
  n := n+1;
end;
writeln('x = ',x);
Xend := Xend+1;
Readln;
  For m := 1 to 1024 do
  Begin
    FuncData[m] := F(XBeg + (m - 1)*(XEnd - XBeg)/1023);
  end;
    Writeln(FuncData[m]);
//  p := abs(Xend - Xbeg) - (abs(Xbeg - Xend)/10);
//  j := abs(Xend - Xbeg);
  p := abs(Xend-Xbeg);
  j := abs(Xend-Xbeg);
  grDriver := Detect;
  InitGraph(grDriver, grMode, '');
  MaxUal := (FuncData[1]);

  for m := 2 to 1024 do
  if  abs(FuncData[m]) > MaxUal then MaxUal := abs(FuncData[m]);
  Writeln('MaxUal = ', MaxUal);

  for m := 1 to 1024 do
  Begin
    Writeln(GetMaxX+1);
    Writeln(GetMaxY+1);
    Line(X0,GetMaxY div 2,1024+X0,GetMaxY div 2);
    Line(X0, round(GetMaxY/2 - MY*5*GetMaxY/10),X0,round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/10)));
  End;

  MoveTo(X0,round(GetMaxY));

  for m := 2 to 1024 do
  Begin
    SetColor(LightGreen);
    LineTo(X0+m,round(GetMaxY/2*(1 - MY*FuncData[m]/MaxUal)));
  End;

  SetColor(White);

  for k:= 1 to 5 do
  begin
    Line(X0,round(GetMaxY/2 + MY*k*GetMaxY/10),
         1024+X0,round(GetMaxY/2 + MY*k*GetMaxY/10));
    Line(X0,round(GetMaxY/2 - MY*k*GetMaxY/10),
         1024+X0,round(GetMaxY/2 - MY*k*GetMaxY/10));
  end;
  for k:= 1 to 10 do
  begin
    Line(X0 + (round(k*1024/10)),round(GetMaxY/2 - MY*5*GetMaxY/10),
         X0 + (round(k*1024/10)),round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/10)));
  end;
  for k:= 1 to 5 do
  begin
    MaxUal:=MaxUal + (MaxUal/20);
    str(MaxUal:3:6,o);
    str(-MaxUal:3:6,l);
    OutTextXY(X0-80,round(GetMaxY/2),'0.000000');
    OutTextXY(X0-80,round(GetMaxY/2 + MY*k*GetMaxY/10),l);
    OutTextXY(X0-80,round(GetMaxY/2 - MY*k*GetMaxY/10),o);
  end;
  for k:= 1 to 5 do
  begin
    p := k* (abs(Xend-Xbeg)/5)-(abs(Xbeg - Xend)/10);
    j := k* (abs(Xend-Xbeg)/5);

    str(XBeg:3:6,a);
    OutTextXY(X0,round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/9.6)), a);
//    str(XEnd:3:6,s);
//    OutTextXY(X0 + (round(5*1024/5))-round(X0/2.2),round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/9.6)), s);
    str(p:3:6,a);
    str(j:3:6,s);
    OutTextXY(X0 div 200 + (round(k*1024/5))-round(X0/2.2),round(GetMaxY/2 - MY*5*GetMaxY/10)-20,a);
    OutTextXY(X0 +(round(k*1024/5))-round(X0/2.2),round(GetMaxY-(GetMaxY/2 - MY*5.2*GetMaxY/10)),s);
 end;

  Readln;
  CloseGraph
end.
