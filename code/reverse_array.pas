program reverse_array;
var i, temp: integer;
    arr: array[1..20] of integer;

begin
    randomize;

    // Fill the array with random numbers <1; 30>
    for i := 1 to 20 do arr[i] := random(30) + 1;

    // Print the generated array
    for i := 1 to 20 do write(arr[i], ' ');

    // Swap the array
    for i := 1 to 10 do begin
        temp := arr[i];
        arr[i] := arr[20 - i + 1];  // i starts at 1 because of array index, also [21 - i] could be used instead
        arr[20 - i + 1] := temp;
    end;

    writeln;
    // Print the swapped array
    for i := 1 to 20 do write(arr[i], ' ');
    writeln;
end.