program kvader;
var x, y, z: integer;

begin
    write('x: ');
    read(x);
    write('y: ');
    read(y);
    write('z: ');
    read(z);

    writeln('V = ', x * y * z);
    writeln('S = ', 2 * (x*y + x*z + y*z));
    writeln('\ = ', sqrt(sqrt(sqr(x) + sqr(y)) + sqr(z)));
end.