uses crt;
const 
 ndigit = 3;
var sum,n: integer;
begin
   clrscr;
   writeln('Введите целое из ',ndigit, ' цифр ');
write('n= ');
readln(n);

sum := (n div 100)+ (n div 10 mod 10)+(n mod 10);
writeln('Сумма цифр числа = ',sum);
readkey
end.