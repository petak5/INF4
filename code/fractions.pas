program fractions;
uses math;
type fraction = record
                numerator, denominator: integer;
end;

var f1, f2, f: fraction;

function base_fraction(x: fraction): fraction; var i: integer; begin
    for i := max(x.numerator, x.denominator) downto 1 do begin
        if (x.numerator mod i = 0) and (x.denominator mod i = 0) then begin
            x.numerator := x.numerator div i;
            x.denominator := x.denominator div i;
        end;
    end;
    base_fraction := x;
end;

function sum_fractions(x, y: fraction): fraction; begin
    sum_fractions.denominator := x.denominator * y.denominator;
    sum_fractions.numerator := (x.numerator * y.denominator) + (y.numerator * x.denominator);
end;

begin
    write('Enter first fraction: ');
    read(f1.numerator);
    readln(f1.denominator);

    write('Enter second fraction: ');
    read(f2.numerator);
    readln(f2.denominator);

    f := sum_fractions(f1, f2);
    f := base_fraction(f);

    writeln(f.numerator, '/', f.denominator);
end.