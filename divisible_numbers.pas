program divisible_numbers;
var i, num, sum : integer;

begin
    i := 1;
    sum := 0;   // number of dividents

    write('Num: ');
    read(num);

    repeat
        if (num mod i) = 0 then
        begin
            write(i, ' ');
            inc(sum);
        end;
        inc(i);
    until (i > num);
    writeln;
    writeln('Number ', num, ' has ', sum, ' dividents');
    if sum = 2 then writeln(num, ' is a prime number')
    else writeln(num, ' is NOT a prime number');
end.