program height_status;
var height: integer;

begin
    height := 0;

    write('Enter height: ');
    readln(height);

    case height of
        100..150 : writeln('Very small.');
        151..160 : writeln('Small');
        161..170 : writeln('Medium.');
        171..180 : writeln('High');
        181..190 : writeln('Very high.');
        191..210 : writeln('Extreme');
    end;
end.