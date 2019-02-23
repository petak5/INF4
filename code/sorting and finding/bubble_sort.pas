program bubble_sort;
var i, j, n, temp: integer;
    arr: array[1 .. 10] of integer;

begin
    randomize;

    n := 10;

    for i := 1 to n do arr[i] := random(10) + 1;

    for i := 1 to n - 1 do begin
        for j := 1 to n - i do begin
            if arr[j] < arr[j + 1] then begin
                temp := arr[j];
                arr[j] := arr[j + 1];
                arr[j + 1] := temp
            end;
        end;
    end;

    for i := 1 to n do write(arr[i], ' ');
end.