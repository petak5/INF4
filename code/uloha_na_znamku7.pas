program uloha_na_znamku7;
var i: integer;

function factorial(n: integer): integer; begin
    factorial := n;
    for i := n-1 downto 1 do begin
        factorial := factorial * i;
    end;
end;

function c(n, k: integer): integer; begin
    c := ( factorial(n) div (factorial(n - k) * factorial(k)) );
end;

begin
    writeln(c(4, 2));
end.