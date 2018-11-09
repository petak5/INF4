Program hviezdicky;
Uses Crt;
Var n, x, sum, i, j:integer;

Begin
ClrScr;

{n:=6;
x:=1;

For i:=1 To n Do
Begin
        If i < n/2 Then
                WriteLn('x':i, 'x':n-2*i)
        Else If i = n/2 Then
                WriteLn('x':n div 2)
        Else
                WriteLn('x':n-i, 'x':x);
                x := x + 1
End;}

{n:=15;
For i:=1 To n Do
Begin
        For j:=1 To i Do Write('*');
        WriteLn;
End;}

{For i:=1 To 25 Do
Begin
        sum := sum + i;
End;
WriteLn(sum);}

ReadLn;
End.