program die_number_count;
var i: integer;
    arr: array[1..6] of integer;

begin
    randomize;
    for i := 1 to 6 do arr[i] := 0;
    
    for i := 1 to 50 do inc(arr[random(6) + 1]);

    for i := 1 to 6 do writeln(i, ': ', arr[i]);
end.