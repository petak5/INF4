program sms_sender;
uses crt;
var f: text;
    s: string;
    i, count, sms_count: integer;

begin
    assign(f, 'text_to_send.txt');
    reset(f);
    count := 0;
    sms_count := 1;

    writeln(sms_count, '. SMS:');
    while not eof(f) do begin
        readln(f, s);
        for i := 1 to length(s) do begin
            inc(count);
            write(s[i]);

            if count >= 160 then begin
                count := 0;
                inc(sms_count);
                writeln;
                writeln(sms_count, '. SMS:');
            end;
        end;
    end;
end.