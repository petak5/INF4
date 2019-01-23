program longest_word;
var f: text;
    s, the_word: string;
    i, count, max: integer;

begin
    assign(f, 'text.txt');
    reset(f);

    max := 0;
    while not eof(f) do begin
        readln(f, s);
        count := 0;
        for i := 1 to length(s) do begin
            if (s[i] = ' ') or (s[i] = '.') or (s[i] = '?') or (s[i] = '!') or (s[i] = ',') then count := 0
            else inc(count);

            if count > max then begin 
                max := count;
                // Create the substring
                the_word := copy(s, i - max, i);
            end;
        end;
    end;

    writeln(max, ' - ', the_word);
end.