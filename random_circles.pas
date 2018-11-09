Program random_circles;
Uses PtcGraph;
Var gd, gm, i, color, x, y: Integer;

Begin
DetectGraph(gd, gm);
InitGraph(gd, gm, '');

Randomize;

For i:=0 To 9 Do
Begin
        color := Random(15) + 1;
        x := Random(1280);
        y := Random(720);
        SetColor(color);
        Circle(x, y, Random(150) + 50);
        SetFillStyle(1, color);

        // Border's check
        If x < 0 Then x := 0;
        If x > 1280 Then x := 1280;
        If y < 0 Then y := 0;
        If y > 720 Then x := 720;

        FloodFill(x, y, color);
End;

ReadLn;
CloseGraph;
End.
