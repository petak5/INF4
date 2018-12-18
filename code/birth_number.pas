program birth_number;
uses sysutils;
var i, day, month, year, cond: integer;
	bn : int64;
	woman: boolean;
	s_bn: string;

begin
	woman := false;
	write('Enter your birth number: ');
	read(s_bn);
	bn := strtoint64(s_bn);
	if bn mod 11 <> 0 then begin
		writeln('Invalid birth number!');
		exit;
	end;

	cond := strtoint(concat(s_bn[1], s_bn[2]));
	if (cond >= 0) and (cond < 54) then
		year := strtoint(concat('20', s_bn[1], s_bn[2]))
	else
		year := strtoint(concat('19', s_bn[1], s_bn[2]));

	writeln('Birth year: ', year);

	// woman
	if (s_bn[3] = '5') or (s_bn[3] = '6') then begin
		month := strtoint(concat(s_bn[3], s_bn[4])) mod 50;
		woman := true;
	end
	// man
	else if (s_bn[3] = '0') or (s_bn[3] = '1') then
		month := strtoint(concat(s_bn[3], s_bn[4]))
	else writeln('Invalid month!');

	writeln('Birth month: ', month);

	day := strtoint(concat(s_bn[5], s_bn[6]));

	writeln('Birth day: ', day);

	if woman then write('Woman')
	else write('Man');

	writeln(' born on ', day, '.', month, '.', year);
end.
