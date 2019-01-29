program perfect_number; // oh yeah boy
var i: integer;

function is_perfect(x: integer): boolean; var i, sum: integer; begin
    sum := 0;
    for i := 1 to x-1 do begin
        if x mod i = 0 then inc(sum, i);
    end;

    is_perfect := sum = x;
end;

begin
    for i := 1 to 10000 do begin
        if is_perfect(i) then write(i, ' ');
    end;
    writeln;
end.