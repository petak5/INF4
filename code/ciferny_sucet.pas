program ciferny_sucet;
var num, sum, desired_num, desired_num_count, temp : longint;

begin
    write('Your number: ');
    read(num);
    write('Desired number: ');
    read(desired_num);

    sum := 0;
    desired_num_count := 0;

    repeat
        temp := num mod 10;
        if (temp = desired_num) then inc(desired_num_count);
        sum := sum + temp;
        num := num div 10;
    until(num <= 0);
    writeln('The sum of the numbers is ', sum);
    writeln('Number ', desired_num, ' has appeared ', desired_num_count, ' times');
end.