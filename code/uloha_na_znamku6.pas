// 5x5 array, mutiply by -1 the values at the border and diagonals
program uloha_na_znamku;
var i, j, n: integer;
    arr: array[1 .. 5, 1 .. 5] of integer;

begin
    randomize;
    n := 5;
    for i := 1 to n do begin
        for j := 1 to n do begin
            arr[i, j] := random(20) + 1;
            write(arr[i, j]:3, ' ');
        end;
        writeln;
    end;

    for i := 1 to n do begin
        for j := 1 to n do begin
            if (i = 1) or (i = n) or (j = 1) or (j = n) then arr[i, j] := -arr[i, j];
            if (i = j) and (i <> 1) and (i <> n) then arr[i, j] := -arr[i, j];
        end;
    end;

    writeln;
    for i := 1 to n do begin
        for j := 1 to n do begin
            write(arr[i, j]:3, ' ');
        end;
        writeln;
    end;
end.