program calendar;
var i, first_day, line_count: integer;
    spacer, day_spacer: string;

begin
    spacer := '   ';
    day_spacer := '  ';
    line_count := 0;

    writeln('Enter the first day of the month (1 - 7): ');
    readln(first_day);

    if (first_day < 1) or (first_day > 7) then begin
        writeln('Invalid day provided (`', first_day, '`)');
        exit;
    end;

    writeln('Mon  Tue  Wed  Thu  Fri  Sat  Sun');
    for i := 1 to first_day - 1 do begin
        write(day_spacer , spacer);
        inc(line_count);
    end;

    for i := 1 to 30 do begin
        if line_count >= 7 then begin
            writeln;
            line_count := 0;
        end;

        write(i:2, spacer);
        inc(line_count);
    end;
end.