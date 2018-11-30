program uloha1;
var i, min, max, temp: integer;
	arr: array[1 .. 10] of integer;

begin
	randomize;
	min := 1;
	max := 1;
	for i := 1 to 10 do arr[i] := random(30) + 1;

	for i := 1 to 10 do begin
		write(arr[i], ' ');
		if (arr[i] > arr[max]) then max := i
		else if (arr[i] < arr[min]) then min := i;
	end;

	writeln(#10, 'The maximum is ', arr[max]);
	writeln('The minimum is ', arr[min]);

	temp := arr[max];
	arr[max] := arr[min];
	arr[min] := temp;

	for i := 1 to 10 do write(arr[i], ' ');
	writeln;
end.
