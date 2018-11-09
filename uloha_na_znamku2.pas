program uloha_na_znamku2;
var shape, a, b, r: integer;

begin
    writeln('Welcome to S and o calculator');
    writeln('What do you want to calculate?');
    writeln('1. Square | 2. Rectangle | 3. Circle');
    write('Your choice: ');
    read(shape);

    if shape = 1 then begin
        write('Enter size of side a: ');
        read(a);
        writeln('S = ', a * a, ' | o = ', 4 * a);
    end

    else if shape = 2 then begin
        write('Enter size of side a: ');
        read(a);
        write('Enter size of side b: ');
        read(b);
        writeln('S = ', a * b, ' | o = ', (2 * a) + (2 * b));
    end

    else if shape = 3 then begin
        write('Enter size of side r: ');
        read(r);
        writeln('S = ', PI * (r * r):0:4, ' | o = ', 2 * PI * r:0:4);
    end
    
    else writeln('Invallid number, try again!');
end.