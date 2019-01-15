program olympic_medals;
uses crt;
var i, j, max_medals, max_points, max_medals_gold, temp_medals, temp_points: integer;
    arr_medals: array[1 .. 5, 1 .. 3] of integer;
    arr_points, arr_medals_total: array[1 .. 5] of integer;

begin
    randomize;
    // Set color to 15 (white) because it is somewhat different from the default one (dunno why)
    textcolor(15);
    max_medals := 0;
    max_points := 0;
    max_medals_gold := 0;

    for i := 1 to 5 do begin
        for j := 1 to 3 do
            arr_medals[i, j] := random(5);
        arr_points[i] := 0;
        arr_medals_total[i] := 0;
    end;
    
    for i := 1 to 5 do begin
        temp_medals := 0;
        temp_points := 0;
        for j := 1 to 3 do begin
            if (j = 1) then begin
                inc(arr_points[i], 5 * arr_medals[i, j]);
                if (arr_medals[i, 1] > max_medals_gold) then max_medals_gold := arr_medals[i, 1];
            end
            else if (j = 2) then
                inc(arr_points[i], 3 * arr_medals[i, j])
            else
                inc(arr_points[i], 1 * arr_medals[i, j]);
            
            inc(arr_medals_total[i], arr_medals[i, j]);
        end;
        if (temp_medals > max_medals) then max_medals := temp_medals;
        if (temp_points > max_points) then max_points := temp_points;
    end;
    
    writeln('N. G-S-B medals points');
    for i := 1 to 5 do begin
        write(i, '. ');
        for j := 1 to 3 do begin
            if (arr_medals[i, 1] = max_medals_gold) and (j = 1) then begin
                textcolor(2);
                write(arr_medals[i, j], ' ');
                textcolor(15);
            end
            else write(arr_medals[i, j], ' ');
        end;
        write(arr_medals_total[i], '      ');
        write(arr_points[i]);
        writeln;
    end;
end.