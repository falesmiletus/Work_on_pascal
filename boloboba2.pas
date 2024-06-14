uses crt, graph;
function F(x: real): real;

begin
F := x - 10*sin(x);
end;
var x, max, min, mx, my, a , b: real;
x0, y0, i: integer;s: string;
begin
a := 0.001;
b :=3;
max := F(a);
min := F(a);
x := a;
while x<=b do
begin
if F(x) > max then max := F(x);
if F(x) < min then min := F(x);
x := x+0.01;
end;
x0 :=50
y := round (max*windowheight/(max-min))-50;
mx :=(windowwidth-x0-30)/b;
my :=(y0-30)/max;

