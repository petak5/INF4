{ IS BROKEN }   // TO DO - FINISH IT <padam tccc>
program logik;
var i, j, corr_pos, incorr_pos: integer;
    playing: boolean;
    arr, guess: array[1..4] of integer;

begin
    randomize;
    playing := true;
    corr_pos := 0;
    incorr_pos := 0;

    // Initialize `arr` with random numbers ranging from `1` to `4`
    for i := 1 to 4 do begin
        arr[i] := random(4) + 1;
    end;

    while(playing) do begin
        write('Enter your guess: ');
        for i := 1 to 4 do read(guess[i]);

        for i := 1 to 4 do if (guess[i] = arr[i]) then inc(corr_pos);

        // This is wrong
        for i := 1 to 4 do begin
            for j := i to 4 do begin
                if ((i <> j) and (guess[i] = arr[j])) then inc(incorr_pos);
            end;
        end;

        writeln(corr_pos, ' are on correct position and ', incorr_pos, ' are on INcorrect position');
        break;
    end;

    for i := 1 to 4 do begin
        writeln(arr[i], ' AND ', guess[i]);
    end;
end.