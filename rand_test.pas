program rand_test;

Uses Graph;
Var gd, gm, x, y, i, size : Integer;

Begin
InitGraph(gd, gm, '');
Randomize;

size := Random(200) + 20;

For i:=0 to 5000 Do Begin

        x := Random(1280 + (2 * size)) - size;
        y := Random(720 + (2 * size)) - size;

        Circle(x, y, size);

End;

ReadLn;
CloseGraph;
End.
