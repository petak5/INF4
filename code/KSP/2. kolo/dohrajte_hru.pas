// Not working!!!
program dohrajte_hru;
uses sysutils;
var i, j, n, card_piles_count: integer;
    f: text;
    arr: array[1 .. 100, 1 .. 100] of integer;
    lines: array[1 .. 100] of string;
    temp: string;

begin
    assign(f, 'dohrajte_hru.txt');
    reset(f);

    readln(f, card_piles_count);
    for i := 1 to card_piles_count do readln(f, lines[i]);

    close(f);

    for i := 1 to card_piles_count do begin
        n := 1;
        temp := '';
        for j := 1 to length(lines[i]) do begin
            if lines[i, j] <> ' ' then temp := concat(temp, lines[i, j])
            else begin
                arr[i, n] := strtoint(temp);
                temp := '';
                inc(n, 1);
            end;
        end;

        if temp <> '' then begin
            arr[i, n] := strtoint(temp);
        end;
    end;

    
    for i := 1 to card_piles_count do begin
        for j := 1 to arr[i, 1] do begin
            write(arr[i, j], ' ');
        end;
        writeln;
    end;

    writeln;
    for i := 1 to card_piles_count do writeln(lines[i]);

end.