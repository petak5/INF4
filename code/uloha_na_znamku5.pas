program uloha_na_znamku5;
var new, old: integer;
    ascending: boolean;

begin
    ascending := true;

    readln(new);
    while true do begin
        old := new;
        readln(new);
        if new = 0 then break;
        if old > new then ascending := false;
    end;

    if ascending then writeln('Yes')
    else writeln('No');
end.