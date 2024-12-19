const
  N = 8; 

var
  matrix: array[1..N, 1..N] of Integer;
  minArray: array[1..N] of Integer;
  i, j: Integer;
  sum, average: Integer;
  

begin
  Randomize; 
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      
      matrix[i, j] := Random(100);
      write(' ',matrix[i, j]);
   end;
   writeln;
   end;

  // Находим минимальные элементы и суммируем их
  sum := 0;
  for i := 1 to N do
  begin
    minArray[i] := matrix[i, 1]; 
    for j := 2 to N do
      if matrix[i, j] < minArray[i] then
        minArray[i] := matrix[i, j]; 

    sum := sum + minArray[i]; 
  end;

  average := sum div N; 
  
  WriteLn('Минимальные элементы строк:');
  for i := 1 to N do
    Write(minArray[i], ' ');

  WriteLn;
  
  WriteLn('Среднее арифметическое: ', average);
 
end.

