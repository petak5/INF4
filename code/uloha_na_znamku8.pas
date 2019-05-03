// base 10 to base 8
program uloha_na_znamku8;

var i, decimal: integer;
    octal, temp: string;

begin
    write('Enter number: ');
    readln(decimal);
    
    octal := '';
    while decimal > 0 do begin
        str(decimal mod 8, temp);
        octal := octal + temp;
        decimal := decimal div 8;
    end;

    for i := length(octal) downto 1 do begin
        write(octal[i]);
    end;
end.