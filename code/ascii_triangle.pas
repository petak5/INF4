program ascii_triangle;
uses crt;
var i, j, x, y, n, width: integer;

procedure triangle (triangle_height: integer; x_pos: integer; y_pos: integer);
begin
    i := 0;
    width := 1 + (triangle_height - 1) * 2;
    repeat
        gotoxy((((width-1) div 2) - i + 2) + x_pos, i + y_pos);
        //writeln('Go to ', ((width-1) div 2) - i + 2, ' : ', i + 3);
        j := 1;
        repeat
            write('x');
            inc(j);
        until(j > 1 + (2 * i));
        inc(i);
    until (i >= triangle_height);
end;

begin
    {write('Enter the size of a tree: ');
    read(n);}

    // A tree :) YAY
    triangle(2, 20, 2);
    triangle(3, 19, 4);
    triangle(4, 18, 7);

    writeln;
end.