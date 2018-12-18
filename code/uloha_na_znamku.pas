program uloha_na_znamku;
var sucet, k, l, m, n: integer;

begin
sucet:=0;

for k:=1 to 9 do
    begin
    for l:=0 to 9 do
        begin
        for m:=0 to 9 do
            begin
            for n:=0 to 9 do
                begin
                if k = (n * 2) then
                    begin
                    writeln(k, l, m, n);
                    inc(sucet);
                    end;
                end;
            end;
        end;
    end;

writeln(#10, 'Sucet: ', sucet);

end.