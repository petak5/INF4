program syntax_check;   // BROKEN
var my_stack: integer;  // NOT WORKING PROPERLY (IF AT ALL)
    is_palindrome, done: boolean;
    f: text;
    s: string;

begin
    my_stack := 0;
    is_palindrome := true;
    done := false;
    assign(f, 'check_test.pas');
    reset(f);

    while not eof(f) do begin
        readln(f, s);
        if pos('begin', s) <> 0 then begin
            if done then is_palindrome := false
            else inc(my_stack);
            writeln('1.');
        end;
        if pos('end', s) <> 0 then begin
            if done then is_palindrome := false
            else begin
                if my_stack = 1
                dec(my_stack);
            end;
            writeln('2.');
        end;

        //if my_stack = 0 then begin done := true; writeln('3.') end;
        if my_stack < 0 then begin is_palindrome := false; writeln('4.') end;
    end;

    if my_stack <> 0 then is_palindrome := false;

    if is_palindrome then writeln('The file is palindrome')
    else writeln('The file is NOT palindrome');
end.