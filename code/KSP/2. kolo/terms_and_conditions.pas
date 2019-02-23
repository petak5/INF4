program terms_and_conditions;
uses sysutils, math;
var i, j, line_count: integer;
    f: text;
    arr: array[1 .. 1000] of string;

begin
    assign(f, 'terms_and_conditions.txt');
    reset(f);

    readln(f, arr[1]);
    line_count := strtoint(arr[1]);

    i := 1;
    while not eof(f) do begin
        readln(f, arr[i]);
        inc(i);
    end;

    for i := 1 to line_count-2 do begin // to -2 because we are checking from the current line to +2 line
        for j := 1 to min( min(length(arr[i]), length(arr[i+1])) , length(arr[i+2])) do begin // go to the maximum of the shortest line, going further would throw a runtime error
            if (arr[i, j] = '+') and (arr[i, j+1] = '-') and (arr[i, j+2] = '+') and        // 1st line
               (arr[i+1, j] = '|') and (arr[i+1, j+1] = ' ') and (arr[i+1, j+2] = '|') and  // 2nd line
               (arr[i+2, j] = '+') and (arr[i+2, j+1] = '-') and (arr[i+2, j+2] = '+')      // 3rd line
                then arr[i+1, j+1] := 'X';
        end;
    end;

    for i := 1 to line_count do begin
        writeln(arr[i]);
    end;
    
end.