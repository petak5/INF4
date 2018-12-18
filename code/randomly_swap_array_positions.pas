program randomly_swap_array_positions;
var i, rand1, rand2, temp: integer;
	arr: array[1 .. 15] of integer;

begin
	randomize;
	for i := 1 to 15 do arr[i] := random(30) + 1;

	for i := 1 to 15 do write(arr[i], ' ');
	writeln;

	rand1 := random(15) + 1;
	rand2 := random(15) + 1;

	temp := arr[rand2];
	arr[rand2] := arr[rand1];
	arr[rand1] := temp;

	for i := 1 to 15 do write(arr[i], ' ');
	writeln;

end.
