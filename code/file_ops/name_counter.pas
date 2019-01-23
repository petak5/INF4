program name_counter;
type name_count = record
        name: string;
        count: integer;
    end;
var f: text;
    s: string;
    i: integer;
    arr: array[1 .. 30] of name_count;

begin
    for i := 1 to 30 do begin
        arr[i].count := 0;
        arr[i].name := '';
    end;

    assign(f, 'names.txt');
    reset(f);

    while not eof(f) do begin
        readln(f, s);
        for i := 1 to 30 do begin
            if arr[i].name = s then begin
                inc(arr[i].count);
                break;
            end;
            if arr[i].name = '' then begin
                arr[i].name := s;
                inc(arr[i].count);
                break;
            end;
        end;
    end;

    for i := 1 to 30 do begin
        if arr[i].name = '' then break;
        writeln(arr[i].name, ' - ', arr[i].count);
    end;
end.