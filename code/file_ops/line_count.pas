program line_count;
var f:text;
    s: string;
    max: integer;

begin
    max := 0;
    assign(f, 'text.txt');
    reset(f);

    while not eof(f) do begin
        readln(f, s);
        if length(s) > max then max := length(s);
    end;

    writeln('The longest line is ', max, ' characters long');
    
end.