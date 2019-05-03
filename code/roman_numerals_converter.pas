program roman_numerals_converter;

uses strutils;

var i, number, choice: integer;
    roman: string;
    decimals: array[1 .. 100] of integer;


begin
    write('(1). R->D | (2). D->R: ');
    readln(choice);

    if (choice = 1) then begin
        write('Enter a roman number: ');
        readln(roman);

        for i:= 1 to length(roman) do begin
            if (roman[i] = 'I') then decimals[i] := 1;
            if (roman[i] = 'V') then decimals[i] := 5;
            if (roman[i] = 'X') then decimals[i] := 10;
            if (roman[i] = 'L') then decimals[i] := 50;
            if (roman[i] = 'C') then decimals[i] := 100;
            if (roman[i] = 'D') then decimals[i] := 500;
            if (roman[i] = 'M') then decimals[i] := 1000;
        end;

        number := 0;
        for i:= 1 to length(roman) do begin

            if (i <> length(roman)) and (decimals[i] < decimals[i + 1]) then number := number - decimals[i]
            else number := number + decimals[i];
        end;

        writeln(number);

    end else if (choice = 2) then begin
        write('Enter a decimal number: ');
        readln(number);

        roman := inttoroman(number);

        writeln(roman);

    end else writeln('invalid choice!');

end.