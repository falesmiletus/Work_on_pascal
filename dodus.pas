uses crt;
var
  a, d : boolean;
  x : byte;
begin
x := 1;
a := true;
writeln(' d:= x < 2 ', x < 2);
writeln(' d:= not a or odd(x)',not a or odd(x) );
writeln(' d:= ord(a) <> x', ord(a) <> x );
readln;
end.