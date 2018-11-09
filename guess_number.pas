program guess_number;
var num, guess, i: integer;

begin
    randomize;

    num := random(50) + 1;

    for i := 0 to 10 do
    begin
        write('Your guess: ');
        read(guess);
        
        if (guess = num) then
        begin
            writeln('You won!');
            break;
        end
        else if (guess > num) then writeln('Too high')
        else writeln('Too low');
    end;

end.