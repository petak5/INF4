program multi_choice_utility;


var x, a, b, c: integer;
    choice: string;

begin
    writeln('a) e^x');
    writeln('b) is a, b, c a triangle');
    writeln('c) x divisible by 5 or 9');
    write('Enter your choice: ');
    readln(choice);

    case choice of
        'a': begin
            write('Enter x: ');
            readln(x);
            writeln('e^', x, ' = ', exp(x):0:2);
        end;
        'b': begin
            write('Enter a: ');
            readln(a);
            write('Enter b: ');
            readln(b);
            write('Enter c: ');
            readln(c);

            if (((a + b) > c) and ((b + c) > a) and ((a + c) > b)) then writeln('a, b, c can form a trinagle.')
            else writeln('Not a valid trinagle.');
        end;
        'c': begin
            write('Enter x: ');
            readln(x);

            if ((x mod 5 = 0) and (x mod 9 <> 0)) then writeln(x, ' is divisible by 5')
            else if ((x mod 5 <> 0) and (x mod 9 = 0)) then writeln(x, ' is divisible by 9')
            else if ((x mod 5 = 0) and (x mod 9 = 0)) then writeln(x, ' is divisible by 5 and 9')
            else writeln(x, ' is not divisible by 5 or 9');
        end;
    else writeln('Invalid choice!');
    end;
end.