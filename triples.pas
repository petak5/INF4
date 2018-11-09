program triples;
var i, j : integer;

begin
    for i := 1 to 9 do
    begin
        if i = 3 then
        begin
            for j := 0 to 9 do write(3, j, ' ');
        end
        else write(i, 3, ' ');
    end;
    writeln;
end.