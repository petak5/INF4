///** 
//  * Not Working!
//  */
program rotate_array;
var i, j, ti, tj: integer;
    arr: array[1 .. 3, 1 .. 3] of integer;

begin
    randomize;

    for i := 1 to 3 do
        for j := 1 to 3 do
                arr[i, j] := random(10) + 1;

    // Output table pre-rotate
    for i := 1 to 3 do begin
        for j := 1 to 3 do begin
            write(arr[i, j], ' ');
        end;
        writeln;
    end;

    // rotate array 90 degrees
    writeln;
    for i := 1 to 3 do begin
        for j := 1 to 3 do begin
        
            ti:=3-i+1; tj:=3-j+1;
        write(arr[ti,tj],' ');
            
        end;
        writeln;
    end;

    // Output table after-rotate
    writeln;
    for i := 1 to 3 do begin
        for j := 1 to 3 do begin
            write(arr[i, j], ' ');
        end;
        writeln;
    end;

end.