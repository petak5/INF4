program vianocna_uloha2;
type
    swimmer = record
        number: integer;
        name: string;
        time1, time2, average, total: real;
    end;
var i, n, best, worst: integer;
    swimmers: array[1 .. 50] of swimmer;

begin
    write('Enter the number of swimmers: ');
    readln(n);

    for i := 1 to n do begin
        writeln('Enter the data of the ', i, '. swimmer.');

        write('Number: ');
        readln(swimmers[i].number);

        write('Name: ');
        readln(swimmers[i].name);

        write('First time: ');
        readln(swimmers[i].time1);

        write('Second time: ');
        readln(swimmers[i].time2);

        swimmers[i].total := swimmers[i].time1 + swimmers[i].time2;
        swimmers[i].average :=  swimmers[i].total / 2;

    end;

    // Indexes of the best and worst average time
    best := 1;
    worst := 1;

    writeln(#10, 'The results:');
    for i := 1 to n do begin
        writeln(swimmers[i].number,' - ', swimmers[i].name, ', time: ', swimmers[i].total:0:2, ', average: ', swimmers[i].average:0:2);
        if (swimmers[i].average < swimmers[best].average) then best := i;
        if (swimmers[i].average > swimmers[worst].average) then worst := i;
    end;

    writeln(#10, 'The winner is ', swimmers[best].name, ' (number ', swimmers[best].number, ') with the average time of ', swimmers[best].average:0:2);
    writeln('Congratulations!', #10);
    
    writeln('The loser is ', swimmers[worst].name, ' (number ', swimmers[worst].number, ') with the average time of ', swimmers[worst].average:0:2);
    writeln('Better luck next time.');
end.