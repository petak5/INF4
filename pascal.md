# Base structure
```pascal
Program <name>;
Uses <libs>;
Var <vars>;
    <another vars>;

Begin
    <code>
End.
```

# Graphics
## Base program
```pascal
Program <name>;
Uses Graph, <another libs>;
Var gd, gm :Integer;
    <another vars>;

Begin
    DetectGraph(gd, gm);
    InitGraph(gd, gm, '');

    CloseGraph();
End.
```
## Graph commands
```pascal
Line(x1, y1, x2, y2);
Circle(x, y, r);
Arc(x, y, stAngle, endAngle, radius);
Ellipse(x, y, stAngle, endAngle, xRadius, yRadius);
Rectangle(x1, y1, x2, y2);
```

# General
## Syntax
```pascal
{ <code> } is Begin ... End. or Begin ... End; in pascal
If <condition> Then <command> or Begin <commands> End;
For i:= <initial value> To / DownTo <end value (included)> Do <command> or Begin <command> End;
While <condition> Do Begin <code> End;
Repeat <code> Until <condition>;

Procedure <name> (<args>); Var <vars>; Begin <code> End;
Function <name> (<args>) :<return type>; Var <vars>;  Begin <code> End;
```
## Comments
```pascal
// one line comment
{ multi 
  line
  comment }
(* multi line comment
  as well*)
```
## General Procedures and Functions
```pascal
Write(string s);
WriteLn(string s : int indentation);
Read(any var);
ReadLn(any var);
```

# Crt library
```pascal
ClrScr; // Clear the screen
```

# Types
```pascal
byte    // unsigned
shortint
word    // unsigned
integer
longint
int64

array   // <array_name>: array[<from x>..<to y>] of <datatype>
```

## Number functions
```pascal
div(x)
mod(x)
sqr(x)
sqrt(x)
abs(x)
```

# Notes
* Functions and Procedures do not accept arrays, you have to manually define a new type of array e.g.: `type pole = array[1..20] of integer;` and then pass it to a function like: `function shiftLeft (arr: pole; size: integer): pole;`
* Functions use variables of the same name as their name so `function shiftLeft` will return like `shiftLeft := <return-value>;

# Error codes
* `201` - array out of bounds
