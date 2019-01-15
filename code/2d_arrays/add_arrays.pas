program add_arrays;
var i, j: integer;
    arr_a, arr_b, arr_c: array[1 .. 5, 1 .. 5] of integer;

begin
    randomize;
    for i := 1 to 5 do
        for j := 1 to 5 do begin
            arr_a[i, j] := random(9) + 1;
            arr_b[i, j] := random(9) + 1;
            arr_c[i, j] := arr_a[i, j] + arr_b[i, j];
        end;
    
    for i := 1 to 5 do begin
        for j := 1 to 5 do
            write(arr_a[i, j], ' ');
        writeln;
    end;
    writeln;
    for i := 1 to 5 do begin
        for j := 1 to 5 do
            write(arr_b[i, j], ' ');
        writeln;
    end;
    writeln;
    for i := 1 to 5 do begin
        for j := 1 to 5 do
            write(arr_c[i, j], ' ');
        writeln;
    end;
end.