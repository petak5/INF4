program vianocna_uloha1;
var i, n, counter: integer;
    finished: boolean;
    arr1, temp: array[1 .. 50] of integer;

begin
    randomize;

    write('Enter number between 2 and 50: ');
    readln(n);

    if ((n < 2) or (n > 50)) then begin
        writeln('Invalid input!');
        exit;
    end;
    
    // 0 = LEFT, 1 = RIGHT
    for i := 1 to n do begin
        arr1[i] := random(2);
        temp[i] := arr1[i];
    end;

    finished := false;
    // Number of loops it took, startng at zero 
    counter := 0;
    while (not finished) do begin
        finished := true;
        for i := 1 to n-1 do begin
            // The couple is NOT looking in the same direction
            if (arr1[i] <> arr1[i + 1]) then begin
                // The leftmost is looking RIGHT
                if ((i = 1) and (arr1[i] = 1)) then begin
                    finished := false;
                    temp[i] := 0;
                    temp[i + 1] := 1;
                end
                // The rightmost is looking LEFT
                else if ((i = n - 1) and (arr1[i + 1] = 0)) then begin
                    finished := false;
                    temp[i] := 0;
                    temp[i + 1] := 1;
                end
                // Any other that the first and last (or leftmost and rightmost)
                else if ((i > 1) and (i < n)) then
                    // The first of the couple is looking to the RIGHT
                    // meaning that the other one is looking LEFT
                    if arr1[i] = 1 then begin
                        finished := false;
                        temp[i] := 0;
                        temp[i + 1] := 1;
                    end;
            end;
        end;

        // Output the array
        for i := 1 to n do begin
            // Fancy formatting
            if (arr1[i] = 0) then
                write('L ')
            else
                write('R ');
            
            // Warning: for hardcore users only!
            // Use at your own risk.
            //write(arr1[i], ' ');
        end;
        writeln;

        // arr1 := temp
        for i := 1 to n do arr1[i] := temp[i];

        inc(counter);
    end;

    writeln('The program took ''', counter, 's'' to execute.');

end.