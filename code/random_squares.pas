Program random_squares;
Uses Graph;
Var gd, gm, i, color, x, y, width, height: Integer;

Begin
DetectGraph(gd, gm);
InitGraph(gd, gm, '');

Randomize;

For i:=1 To 10 Do
Begin
        color := i;
        x := Random(1280);
        y := Random(720);
        width := Random(150) + 50;
        height := Random(100) + 20;
        SetColor(color);
        Rectangle(x, y, x + 50, y + 50);
        SetFillStyle(1, color);

        // Border's check
        If x < 0 Then x := 0;
        If x > 1280 Then x := 1280;
        If y < 0 Then y := 0;
        If y > 720 Then x := 720;

        FloodFill(x + 1, y + 1, color);
End;

ReadLn;
CloseGraph;
End.
