# Base structure
```pascal
Program <name>;
Uses <libs>;
Var <vars>: <data_type>;
    <another vars>: <data_type>;

Begin
    <code>
End.
```

# Graphics
## Base program
```pascal
Program <name>;
Uses Graph, <another libs>;
Var gd, gm: Integer;
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

Procedure <name> (<args_by_copy>; <var args_by_refference>); Var <vars>; Begin <code> End;
Function <name> (<args_by_copy>; <var args_by_refference>) :<return type>; Var <vars>;  Begin <code> End;
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

### Arrays
```pascal
var arr: array[1 .. 5] of integer;
var 2dArr: array[1 .. 5, 1 .. 10] of integer    // 2d array with 5 rows and 10 columns
```

## Number functions
```pascal
div(x)
mod(x)
sqr(x)
sqrt(x)
abs(x)
```

## String functions
```pascal
str(int, str);
length(s);
val(str, int[, err]);  // err is an index of first character that can not be converted to integer
copy(str, index, count);
delete(str, index, count);
pos(str_to_match, str);
insert(str_to_insert, str, index);
```

## File IO
```pascal
    // Datatype to represent text file
var: f: text;
     c: char;

    // Bind file to a text variable
    assign(f, 'file.txt');

    // Read only
    // Set cursor to the beginning of the file
    reset(f);
    // Write only
    // Wipes the file and writes to it
    rewrite(f);
    // Write only
    // Writes to the ond of the file
    append(f);
    // Close file
    close(f);

    // Returns true if f is at the end of file
    eof(f);
    // Returns true if f is at the end of line
    eoln(f);

    // Read one character from file
    read(f, c);

```

# Notes
* Functions and Procedures do not accept arrays, you have to manually define a new type of array e.g.: `type pole = array[1..20] of integer;` and then pass it to a function like: `function shiftLeft (arr: pole; size: integer): pole;`
* Functions use variables of the same name as their name so `function shiftLeft` will return like `shiftLeft := <return-value>;

# Error codes
* `201` - array out of bounds
