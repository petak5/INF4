program uloha_na_znamku3;
var i, size, temp, limit: integer;
	arr: array[1 .. 50] of integer;

begin
	write('Enter the size of array (1 to 50): ');
	readln(size);

	if ((size <= 0) or (size > 50)) then begin
		writeln('Error: You''ve inputted wrong number');
		exit;
	end;

	for i := 1 to size do arr[i] := random(30) + 1;
	for i := 1 to size do write(arr[i], ' ');
	writeln;

	i := 1;
	limit := size;
	if ((size mod 2) <> 0) then dec(limit);
	while (i <= limit) do begin
		temp := arr[i];
		arr[i] := arr[i + 1];
		arr[i + 1] := temp;
		inc(i, 2)
	end;

	for i := 1 to size do write(arr[i], ' ');

	writeln;
end.
