program file_io;
var count: integer;
    c: char;
    f: text;

begin
    count := 0;

    assign(f, 'text.txt');
    reset(f);

    while not eof(f) do begin
        if eoln(f) then inc(count);
        read(f, c);
        write(c);
    end;

    writeln(#10, 'There were ', count div 2 + 1, ' lines');

end.