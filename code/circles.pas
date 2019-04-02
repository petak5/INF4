program circles;
uses graph;
var gd, gm: integer;
    x, y, r, count, change, dir: integer;

procedure process(change, dir: integer; var x, y: integer); begin
    if dir = 0 then y := y - change
    else if dir = 1 then y := y + change
    else if dir = 2 then x := x - change
    else if dir = 3 then x := x + change
    else writeln('Invalid direction provided (`', dir, '`)');
end;

{**
 * circles
 *
 * 0 - up, 1 - down, 2 - left, 3 - right
 *}
procedure circles(x, y, r, count, change, dir: integer); var i: integer; begin
    for i := 1 to count do begin
        circle(x, y, r);
        process(change, dir, x, y);
        r := r + change;
    end;

end;

begin
    x := 500;
    y := 300;
    r := 10;
    count := 5;
    change := 20;
    
    writeln('0 = Up, 1 = Down, 2 = Left, 3 = Right');
    writeln('Enter direction:');
    readln(dir);

    detectgraph(gd, gm);
    initgraph(gd, gm, '');

    circles(x, y, r, count, change, dir);
    

    readln;
    closegraph;
end.