uses Graph, crt;

const
  X0 = 100;
  MY = 0.9;

var
  grDriver, grMode : integer;
  k : byte;
  m : integer;
  o,l,a,s : string;
  p,j,Knorn,sas : double;
  FuncData: array[1..1024] of double;
  Xbeg,Xend, MaxVal : double;
  b, x, dy, sy, ly : double;


function F(x: double): double;
begin

  F := sin(2x)-ln(x);
  end;
begin
  ClrScr;
  writeln('Введите начальное значение X:');
  write('Xbeg = ');
  readln(Xbeg);
  writeln('Введите конечное  значение X:');
  write('Xend = ');
  readln(Xend);
  for m := 1 to 1024 do
    FuncData[m] := F(Xbeg + (m- 1)*(Xend- Xbeg)/1023);
    Writeln(FuncData[m]);
  p := - 11;
  j := -10;
  b := 1024;
  sy := (GetmaxX-X0-30);
  MaxVal := abs(FuncData[1]);
  for m := 2 to 1024 do
    if abs(FuncData[m]) > maxVal then maxVal := abs(FuncData[m]);
  dy:=(508)/MaxVal;
  Writeln('MaxVal = ',MaxVal);
  grDriver := Detect;
  InitGraph(grDriver, grMode, '');
  PutPixel(X0,round(GetMaxY/2 - MY*5*GetMaxY/10),cyan);
  for m := 1 to 1024 do begin
    PutPixel(X0+m,round(GetMaxY/2*(1 - MY*FuncData[m]/MaxVal)), White);
  end;

  Writeln(GetMaxX+1);
  Writeln(GetMaxY+1);
  Line(X0,GetMaxY div 2,1024+X0,GetMaxY div 2);
  Line(X0, round(GetMaxY/2 - MY*5*GetMaxY/10),X0,round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/10)));
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
  str(MaxVal*k/5:3:6,o);
  str(MaxVal*k/-5:3:6,l);
    OutTextXY(X0-80,round(GetMaxY/2),'0');
    OutTextXY(X0-80,round(GetMaxY/2 + MY*k*GetMaxY/10),l);
    OutTextXY(X0-80,round(GetMaxY/2 - MY*k*GetMaxY/10),o);
  end;
  for k:= 1 to 5 do
  begin
  p:=p + 20/5;
  j:=j + 20/5;
    str(p:3:6,a);
    str(j:3:6,s);
    OutTextXY(X0 div 100 +(round(k*1024/5))-round(X0/2.4),round(GetMaxY/15 - MY*GetMaxY/20),a);
    OutTextXY(X0 +(round(k*1024/5))-round(X0/2.2),round(GetMaxY-(GetMaxY/2 - MY*5.2*GetMaxY/10)),s);
    OutTextXY(X0,round(GetMaxY-(GetMaxY/2 - MY*5*GetMaxY/9.6)),'-10.000000');
  end;

  Readln;
  CloseGraph;

end.
