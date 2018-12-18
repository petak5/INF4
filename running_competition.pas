program running_competition;
type runner = record
    run1, run2, average: real;
    name: string;
end;
var i, win: integer;
    arr: array[1 .. 10] of runner;

begin
    randomize;
    win := 1;
    for i := 1 to 10 do begin
        arr[i].run1 := random(5)+5 + 1/(random(9)+1);
        arr[i].run2 := random(5)+5 + 1/(random(9)+1);
        arr[i].average := (arr[i].run1 + arr[i].run2) / 2;
        if arr[i].average < arr[win].average then win := i;
        write('Enter ', i, ' name: ');
        readln(arr[i].name);
    end;

    for i := 1 to 10 do begin
        writeln(i, '. ', arr[i].name, ' - First run: ', arr[i].run1:0:2, ' | Second run: ', arr[i].run2:0:2, ' | Average: ', arr[i].average:0:3);
    end;

    writeln(#10, 'The winner is ', arr[win].name, ' with number ', win, ' with an average time of ', arr[win].average:0:4, ' seconds');
end.