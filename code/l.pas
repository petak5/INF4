program l;
var width, height, i, j :integer;

begin
    write('width: ');
    read(width);
    write('height: ');
    read(height);

    for i:=1 to height do
        begin
        if i=height then
        begin
            for j:=1 to width do
                begin
                write('*');
                end;
                writeln;
        end
        else
            begin
            writeln('*');
            end;
        end;
end.