program lift;

var x, max_weight, sum, count: integer;

begin

max_weight := 1000;
sum := 0;
count := 0;

repeat
    read(x);
    sum := sum + x;
    if (sum > max_weight) then break;   // Exit
    inc(count);
until (sum > max_weight);

writeln('No.: ', count);

end.