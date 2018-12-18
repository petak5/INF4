program reverse_array;
var i, temp, size: integer;
    arr: array[1..20] of integer;
type pole = array[1..20] of integer;

// Shifts an array of a size to the left
function shiftLeft (arr: pole; size: integer): pole;
        Var i, temp: integer;
    begin
        temp := arr[1];
        for i := 1 to size - 1 do arr[i] := arr[i + 1];
        arr[size] := temp;
        shiftLeft := arr;
    end;

// Shifts an array of a size to the right
function shiftRight (arr: pole; size: integer): pole;
        Var i, temp: integer;
    begin
        temp := arr[size];
        for i := size downto 1 + 1 do arr[i] := arr[i - 1];
        arr[1] := temp;
        shiftRight := arr;
    end;

begin
    randomize;

    size := 20;

    // Fill the array with random numbers <1; 30>
    for i := 1 to size do arr[i] := random(30) + 1;

    // Print the generated array
    for i := 1 to size do write(arr[i], ' ');

    arr := shiftLeft(arr, size);

    writeln;
    // Print the swapped array
    for i := 1 to size do write(arr[i], ' ');

    arr := shiftRight(arr, size);

    writeln;
    // Print the swapped array
    for i := 1 to size do write(arr[i], ' ');
    writeln;
end.