program read_from_file;

var i, j: integer;
    arr: array[1 .. 20] of string;
    f: text;

begin
    for i := 1 to 20 do arr[i] := '';

    assign(f, 'text.txt');
    reset(f);

    i := 1;
    while not eof(f) do begin
        readln(f, arr[i]);
        inc(i);
    end;

    close(f);

    assign(f, 'encrypted.txt');
    rewrite(f);
    for i := 20 downto 1 do begin
        for j := length(arr[i]) downto 1 do begin
            write(f, arr[i, j]);
        end;
        writeln(f, '');
    end;

    close(f);
end.