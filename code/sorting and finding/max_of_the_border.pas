// Finds the max value of the border of the given 2D array
program max_of_the_border;
var i, j, n, maximum: integer;
    arr: array[1 .. 10, 1 .. 10] of integer;

begin
    randomize;
    n := 10;
    maximum := 0;

    for i := 1 to n do begin
        for j := 1 to n do begin
            arr[i, j] := random(20) + 1;
        end;
    end;

    for i := 1 to n do begin
        for j := 1 to n do begin
            if  (i = 1) or (i = n) or
                (j = 1) or (j = n) then
                if arr[i, j] > maximum then maximum := arr[i, j];
        end;
    end;

    for i := 1 to n do begin
        for j := 1 to n do begin
            write(arr[i, j]:2, ' ');
        end;
        writeln;
    end;

    writeln(#10, 'The maximum of the border is: ', maximum);
end.