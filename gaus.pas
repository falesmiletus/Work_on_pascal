uses CRT;

var
  Matrix: array [1..3,1..4] of double;
  X: array [1..3] of double;
  Kof : double;
  stolbs, stroks,ind : byte;
//��楤�� ��� ����ண� �뢥����� ������
procedure Show_Matrix;
begin
for stroks := 1 to 3 do
  begin
    for stolbs := 1 to 4 do
    begin
      write(Matrix[stroks,stolbs]:7:2);
    end;
    writeln;
  end;
end;



Begin
  Clrscr;

  Matrix[1,1] := 2.34;
  Matrix[2,1] := 8.04;
  Matrix[3,1] := 3.92;
  Matrix[1,2] := -4.21;
  Matrix[2,2] := 5.22;
  Matrix[3,2] := -7.99;
  Matrix[1,3] := -11.61;
  Matrix[2,3] := 0.27;
  Matrix[3,3] := 8.37;
  Matrix[1,4] := 14.41;
  Matrix[2,4] := -6.44;
  Matrix[3,4] := 55.56;
//�뢥����� ��砫쭮� ������
  writeln('1.��室��� �����:');
  writeln('-------------------');
    Show_Matrix;
    writeln;
  Kof := Matrix[1,1];
  For stolbs := 1 to 4 do
    Matrix[1,stolbs] := Matrix[1,stolbs]/Kof;
  for ind := 2 to 3 do
  begin
    Kof := Matrix[ind,1];
    for stolbs := 1 to 4 do
      Matrix[ind,stolbs] := Matrix[ind,stolbs] - Kof * Matrix[1,stolbs];
  writeln;
  end;
//�ਢ������ ��ன ��ப�
  Kof := Matrix[2,2];
  For stolbs := 2 to 4 do
    Matrix[2,stolbs] := Matrix[2,stolbs] / Kof;
  Kof := Matrix[3,2];
  For stolbs := 2 to 4 do
    Matrix[3,stolbs] := Matrix[3,stolbs] - Kof * Matrix[2,stolbs];
//�ਢ������ ��⥩ ��ப�
  Kof := Matrix[3,3];
  For stolbs := 3 to 4 do
    Matrix[3,stolbs] := Matrix[3,stolbs] / Kof;
//�뢥����� 㦥 �ਢ��񭭮� ������
  writeln('2.�८�ࠧ������� �����:');
  writeln('--------------------------');
  Show_Matrix;
//��砫� �८�ࠧ������ � ������ ������
  X[3] := Matrix[3,4];
  X[2] := (Matrix[2,4] - Matrix[2,3]*X[3])/Matrix[2,2];
  X[1] := (Matrix[1,4] - Matrix[1,3]*X[3] - Matrix[1,2]*X[2])/Matrix[1,1];
//�뢥����� ��୥� ��⥬� �஢�����
  writeln('        ');
  writeln('3.��୨ ��⥬� �ࠢ�����:');
  writeln('--------------------------');
  writeln('       X1 = ', X[1]:7:2);
  writeln('       X2 = ', X[2]:7:2);
  writeln('       X3 = ', X[3]:7:2);
  writeln;
  readln;
end.





