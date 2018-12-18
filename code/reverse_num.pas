program reverse_num;
var num, reversed, temp, palindrome_temp: longint;

begin

    write('Enter number to reverse: ');
    read(num);
    palindrome_temp := num;
    
    reversed := 0;

    repeat
        temp := num mod 10;
        reversed := (10 * reversed) + temp;
        num := num div 10;
    until (num <= 0);

    writeln('Reversed number is ', reversed);
    if (palindrome_temp = reversed) then writeln('Number ', palindrome_temp, ' is palindrome number');
end.