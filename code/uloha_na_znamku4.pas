program uloha_na_znamku4;
uses crt;
var i, j, sum, count: integer;
    arr: array[1 .. 6, 1 .. 4] of integer;

begin
    randomize;
    textcolor(15);
    count := 0;
    sum := 0;

    for i := 1 to 6 do begin
        for j := 1 to 4 do begin
            arr[i, j] := random(31) - 10;
            if arr[i, j] < 0 then begin
                inc(count);
                sum := sum + arr[i, j];
            end;
        end;
    end;

    for i := 1 to 6 do begin
        for j := 1 to 4 do begin
            if arr[i, j] < 0 then begin
                textcolor(4);
                write(arr[i, j], ' ');
                textcolor(15);
            end
            else
                write(arr[i, j], ' ');
        end;
        writeln;
    end;

    writeln('Count: ', count);
    writeln('Average: ', sum / count:0:2);

end.