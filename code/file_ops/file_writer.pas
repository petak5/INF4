program file_writer;
var f: text;
    s: string;

begin
    assign(f, 'output.txt');

    rewrite(f);

    repeat
        readln(s);
        writeln(f, s);
    until s = ' ';

    close(f);
end.