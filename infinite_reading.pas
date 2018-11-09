program infinite_reading;
var x, count, sum, even, odd: integer;

begin

count := 0;
sum := 0;
even := 0;
odd := 0;

repeat
    read(x);
    if (x = 0) then break;  // Exit
    inc(count);
    sum := sum + x;
    if (x mod 2 = 1) then inc(odd)
    else inc(even);
until (x = 0);

writeln('The sum of ', count, ' numbers is ', sum);
writeln('The average is ', sum / count:0:2);
writeln('Even: ', even, ' | Odd ', odd);

end.