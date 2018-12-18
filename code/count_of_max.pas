program count_of_max;
var i, count, max, temp: integer;
    arr: array[1 .. 15] of integer;

begin
    randomize;
    count := 0;
    max := 0;
    for i := 1 to 15 do begin
        temp := random(5) + 1;
        arr[i] := temp;
        if temp = max then
            inc(count)
        else if temp > max then begin
            max := temp;
            count := 1;
        end;

        write(arr[i], ' ');
    end;

    writeln(#10, 'The maximum is ', max, ' and it is in the array ', count, ' time(s).');

end.