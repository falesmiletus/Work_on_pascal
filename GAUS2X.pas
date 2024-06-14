uses CRT;
const
Knorm = 4;
var
  Matrix: array [1..Knorm,1..Knorm+1] of double;
  X: array [1..Knorm] of double;
  Kof : double;
  stolbs, stroks, ind : byte;

//процедура для быстрого вывода матриц
procedure Show_Matrix;
begin
for stroks := 1 to Knorm do
  begin
    for stolbs := 1 to Knorm+1 do
    begin
      write(Matrix[stroks,stolbs]:7:2);
    end;
    writeln;
  end;
end;

Begin
  Clrscr;

  Matrix[1,1] := 12.14;
  Matrix[2,1] := -0.89;
  Matrix[3,1] := 2.65;
  Matrix[4,1] := 2.44;
  Matrix[1,2] := 1.32;
  Matrix[2,2] := 16.75;
  Matrix[3,2] := -1.27;
  Matrix[4,2] := 1.52;
  Matrix[1,3] := -0.78;
  Matrix[2,3] := 1.88;
  Matrix[3,3] := -15.64;
  Matrix[4,3] := 1.93;
  Matrix[1,4] := -2.75;
  Matrix[2,4] := -1.55;
  Matrix[3,4] := -0.64;
  Matrix[4,4] := -11.43;
  Matrix[1,5] := 14.78;
  Matrix[2,5] := -12.14;
  Matrix[3,5] := -11.65;
  Matrix[4,5] := 4.26;
//выведение начальной матрицы
  writeln('1.Исходная матрица:');
  writeln('===================');
    Show_Matrix;
    writeln;

  Kof := Matrix[1,1];
  For stolbs := 1 to Knorm+1 do
    Matrix[1,stolbs] := Matrix[1,stolbs]/Kof;

  for ind := 2 to 4 do
  begin
    Kof := Matrix[ind,1];
    for stolbs := 1 to 5 do
      Matrix[ind,stolbs] := Matrix[ind,stolbs] - Kof * Matrix[1,stolbs];
  writeln;
  end;

  Kof := Matrix[2,2];
  For stolbs := 2 to 5 do
    Matrix[2,stolbs] := Matrix[2,stolbs] / Kof;

  for ind := 3 to 4 do
  begin
    Kof := Matrix[ind,2];
    For stolbs := 2 to 5 do
      Matrix[ind,stolbs] := Matrix[ind,stolbs] - Kof * Matrix[2,stolbs];
  end;

  Kof := Matrix[3,3];
  For stolbs := 3 to 5 do
    Matrix[3,stolbs] := Matrix[3,stolbs] / Kof;

  Kof := Matrix[4,3];
  For stolbs := 3 to 5 do
    Matrix[4,stolbs] := Matrix[4,stolbs] - Kof * Matrix[3,stolbs];

   Kof := Matrix[4,4];
  For stolbs := 4 to 5 do
    Matrix[4,stolbs] := Matrix[4,stolbs] / Kof;

  writeln('2.Преобразованная матрица:');
  writeln('==========================');
  Show_Matrix;

  X[4] := Matrix[4,5];
  X[3] := Matrix[3,5] - Matrix[3,4]*X[4];
  X[2] := Matrix[2,5] - Matrix[2,4]*X[4] - Matrix[2,3]*X[3];
  X[1] := Matrix[1,5] - Matrix[1,4]*X[4] - Matrix[1,3]*X[3]- Matrix[1,2]*X[2];

  writeln('        ');
  writeln('        ');
  writeln('3.Корни системы уравнений:');
  writeln('==========================');
  writeln('       X1 = ', X[1]:7:2);
  writeln('       X2 = ', X[2]:7:2);
  writeln('       X3 = ', X[3]:7:2);
  writeln('       X4 = ', X[4]:7:2);
  writeln;
  readln;
end.
