program matrix_mul;
var i, j, k: integer;
    u: array[1 .. 2, 1 .. 3] of integer;
    v: array[1 .. 3, 1 .. 4] of integer;
    w: array[1 .. 2, 1 .. 4] of integer;
// TODO: convert the printouts to functions to reduce code
// TODO: make `multiply` more general
procedure multiply(u: array[1 .. 2, 1 .. 3] of integer
                    , v: array[1 .. 3, 1 .. 4] of integer
                    ; w: array[1 .. 2, 1 .. 4] of integer)
                    var i, j, k: integer;
begin
    for i := 1 to 2 do begin
        for j := 1 to 4 do begin
            for k := 1 to 3 do inc(w[i, j], u[i, k] * v[k, j]);
        end;
    end;
end;

begin
    //randomize;

    // filling matrix `u`
    for i := 1 to 2 do begin
        for j := 1 to 3 do begin
            u[i, j] := random(5) + 1;
        end;
    end;
    // filling matrix `v`
    for i := 1 to 3 do begin
        for j := 1 to 4 do begin
            v[i, j] := random(5) + 1;
        end;
    end;
    // filling matrix `w` with 0s
    for i := 1 to 2 do begin
        for j := 1 to 4 do begin
            w[i,j] := 0;
        end;
    end;

    // the calculations
    for i := 1 to 2 do begin
        for j := 1 to 4 do begin
            for k := 1 to 3 do inc(w[i, j], u[i, k] * v[k, j]);
        end;
    end;

    // write `u`
    for i := 1 to 2 do begin
        for j := 1 to 3 do begin
            write(u[i, j], ' ');
        end;
        writeln;
    end;
    writeln('  x');
    // write `v`
    for i := 1 to 3 do begin
        for j := 1 to 4 do begin
            write(v[i, j], ' ');
        end;
        writeln;
    end;
    // write `w`
    writeln('  =');
    for i := 1 to 2 do begin
        for j := 1 to 4 do begin
            write(w[i, j], ' ');
        end;
        writeln;
    end;
end.