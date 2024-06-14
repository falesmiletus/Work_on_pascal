uses Crt, Graph;

const
  Nmax = 1024;
  x0 = 120;
  MY = 0.7;

type
  Float = Real;
  TDataVector = array[1..Nmax] of Float;

var
  eps,h,W,t,tg_delta,Fmax: Float;
  gr_Driver,gr_Mode,gr_Error: Integer;
  DataVector: TDataVector;
  k: Integer;
  Knorm: Float;

function MaxValue(Vector: TDataVector): Float;
var
  Max_Val: Float;
begin
  Max_Val := abs(Vector[1]);
  for k := 2 to Nmax do
    if abs(Vector[k])>Max_Val then
      Max_Val := abs(Vector[k]);
  MaxValue := Max_Val
end;

function Wef(W: Float): Float;
begin
  if W/h <= 0.16 then
    Wef := W + t*(1 + ln(4*Pi*W/t))/Pi
  else
    Wef := W + t*(1 + ln(2*h/t))/Pi
end;

function Eps_ef0(W: Float): Float;
begin
  Eps_ef0 := (eps + 1 + (eps - 1)/sqrt(1  + 10*h/W))/2
end;

function Z0w(W: Float): Float;
var
  A: Float;
begin
  if W/h <= 1 then
    Z0w := 120/sqrt(2*(eps + 1))*(ln(8*h/W) + sqr(W)/(32*sqr(h)) -
           (eps - 1)*(ln(Pi/2) + ln(4/Pi)/eps)/(eps + 1)/2)
  else
    begin
      A := 1.451 + ln(W/(2*h) + 0.94);
      Z0w := 60*Pi/sqrt(eps)/(W/2/h + 0.441 + 0.082*(eps - 1)/sqr(eps) +
             (eps + 1)*A/(2*Pi*eps));
    end;
end;

function Zw(W: Float): Float;
begin
  if t/h < 0.005
    then  Zw := Z0w(W)
    else  Zw := Z0w(Wef(W))
end;

begin
  Clrscr;
  writeln('1)Zadaite dielektricheskyu pronithaemost i tolshiny podlogki MPL:');
  write('a) eps = ');
  readln(eps);
  write('b) h[mm] = ');
  readln(h);

  writeln('2)Zadaite shiriny i tolshiny pechatnogo provodnika MPL:');
  write('v) W[mm] = ');
  readln(W);
  write('g) t[mm] = ');
  readln(t);

  writeln('3)Zadaite tangens ygla poter v dielectrike podlogki MPL:');
  write('d) tg delta = ');
  readln(tg_delta);

  writeln('4)Zadaite verhnyu granichnyu chastoty elektromagnitnoi volnu:');
  write('e) Fmax[GGz] = ');
  readln(Fmax);

  writeln;
  writeln('Z0w[Om] = ', Z0w(W):0:6);
  writeln('Zw[Om] = ', Zw(W):0:6);
  writeln('Wef = ', Wef(W):0:6);
  writeln('Eps_ef0 = ', Eps_ef0(W):0:6);
  readkey;

  gr_Driver := Detect;
  InitGraph(gr_Driver,gr_Mode,'');
  Line(x0,GetMaxY div 2,x0+Nmax,GetMaxY div 2);

  for k := 1 to Nmax do
    DataVector[k] := Zw(k*10/Nmax);

  Knorm := MaxValue(DataVector);
  for k := 1 to Nmax do
    PutPixel(x0 + k,round(GetMaxY*(1 - MY*DataVector[k]/Knorm)/2), White);
  readkey;

  CloseGraph
end.
