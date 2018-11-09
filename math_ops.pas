program math_ops;
var a, b: integer;

begin

write('a: ');
read(a);
write('b: ');
read(b);

writeln('------------------');
writeln('a + b = ', a + b);
writeln('a - b = ', a - b);
writeln('a * b = ', a * b);
writeln('a / b = ', a / b:1:2);
writeln('a % b = ', a mod b);

end.