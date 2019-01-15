program symetrical_array;
var i, j: integer;
    is_symetrical: boolean;
    arr: array[1 .. 4, 1 .. 4] of integer;

begin
    randomize;
    for i := 1 to 4 do
        for j := 1 to 4 do
            arr[i, j] := random(2) + 1;

    is_symetrical := true;
    for i := 1 to 4 do begin
        for j := 1 to 4 do begin
            write(arr[i, j], ' ');
            if (arr[i, j] <> arr[j, i]) then is_symetrical := false;
        end;
        writeln;
    end;

    if (is_symetrical) then writeln('The array is symetrical.')
    else writeln('The array is NOT symetrical.');
end.