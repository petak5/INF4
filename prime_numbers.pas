program prime_numbers;
var i, j, num : integer;
    is_prime : boolean;

begin
    writeln('Prime numbers generator');
    write('Enter the max num: ');
    read(num);

    for i := 2 to num do    // 1 is not a prime number (i := 2)
    begin
        is_prime := true;
        for j := 1 to i do
        begin
            if (i mod j) = 0 then
            begin
                if (j <> 1) and (j <> i) then is_prime := false;
            end;
        end;
        if is_prime then write(i, ' ');
    end;
    writeln;
end.