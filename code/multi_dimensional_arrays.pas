program multi_dimensional_arrays;
type position = record
        x, y: integer;  // x is row and y is column !!!
    end;
var i, j, x, count: integer;
    arr: array[1 .. 5, 1 .. 4] of integer;
    sum_of_rows: array[1 .. 5] of integer;
    min, max: position;

begin
    randomize;

    min.x := 1;
    min.y := 1;

    max.x := 1;
    max.y := 1;

    for i := 1 to 5 do sum_of_rows[i] := 0;

    for i := 1 to 5 do
        for j := 1 to 4 do begin
            arr[i, j] := random(10) + 1;
            if arr[i, j] > arr[max.x, max.y] then begin max.x := i; max.y := j end;
            if arr[i, j] < arr[min.x, min.y] then begin min.x := i; min.y := j end;
            inc(sum_of_rows[i], arr[i, j]);
        end;

    write('What number to find? ');
    read(x);

    for i := 1 to 5 do begin
        for j := 1 to 4 do begin
            write(arr[i, j], ' ');
        end;
        writeln;
    end;

    count := 0;
    writeln('The number ', x, ' is at:');
    for i := 1 to 5 do begin
        for j := 1 to 4 do begin
            if arr[i, j] = x then begin
                writeln('row ', i, ', column ', j);
                inc(count);
            end;
        end;
    end;
    writeln('In total ', count, ' times.');
    writeln('The max is ', arr[max.x, max.y], ' located in the ', max.x, '. row and ', max.y, '. column');
    writeln('The min is ', arr[min.x, min.y], ' located in the ', min.x, '. row and ', min.y, '. column');

    writeln(#10, 'The sum of rows:');
    for i := 1 to 5 do writeln(i, '. row: ', sum_of_rows[i]);
end.