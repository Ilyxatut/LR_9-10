const N = 10;
var arr: array[1..N]  of integer;
    brr: array[1..N]  of integer;
    i: integer;
    sum1,sum2: integer;
begin
  sum1:= 0;
  sum2:= 0;
  for i:=1 to N do 
    begin
  arr[i] := Random(20)-10;
  write(arr[i],' ');
  end;
  writeln;
  for i:=1 to N do 
    begin
  brr[i] := Random(20)-10;
  write(brr[i],' ');
  end;
  for i:=1 to N do begin
    if arr[i] > 0 then
    sum1:= sum1 + arr[i];
    if brr[i] > 0 then
    sum2:= sum2 + brr[i];
  end;
  writeln;
  writeln;
  if sum1 < sum2 then begin
    for i:=1 to N do begin
      arr[i] := arr[i] * 10;
      write(arr[i],' ');
    end;
    end;
  if sum2 < sum1 then begin
     for i:=1 to N do begin
      brr[i] := brr[i] * 10;
      write(brr[i],' ');
    end;
    end;
    
  writeln;
  writeln;
  write(sum1);
  writeln;
  write(sum2);
end.
