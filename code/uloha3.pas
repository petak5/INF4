program uloha3;
var i, j, row, column, row_sum, col_sum: integer;
    arr: array[1 .. 4, 1 .. 4] of integer;

begin
    randomize;
    col_sum := 0;
    row_sum := 0;

    for i := 1 to 4 do
        for j := 1 to 4 do
            arr[i, j] := random(9) + 1;

    write('Row: ');
    readln(row);
    write('Column: ');
    readln(column);

    for i := 1 to 4 do begin
        inc(col_sum, arr[i, row]);
        inc(row_sum, arr[column, i]);
    end;

    for i := 1 to 4 do begin
        for j := 1 to 4 do
                write(arr[i, j], ' ');
        writeln;
    end;

    if (col_sum > row_sum) then begin
        writeln('The sum of column is bigger than row');
    end
    else if (col_sum = row_sum) then begin
        writeln('The sum of column is equal to row');
    end
    else begin
        writeln('The sum of row is bigger than column');
    end;

end.