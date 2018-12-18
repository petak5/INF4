program uloha2;
type book = record
    author, title: string;
end;
var i: integer;
    input: string;
    first: boolean;
    books: array[1 .. 10] of book;

begin
    for i := 1 to 10 do begin
        writeln(i, '. book:');
        write('Enter the author: ');
        readln(books[i].author);
        write('Enter the title: ');
        readln(books[i].title);
    end;

    write('Enter an author or title to search for: ');
    readln(input);
    while input <> 'q' do begin
    first := true;
        for i := 1 to 10 do begin
            if books[i].author = input then begin
                if first then begin
                    writeln('The books written by ', books[i].author, ' are:');
                    first := false;
                end;
                writeln(' - ', books[i].title);
            end
            else if books[i].title = input then
                writeln('Author: ', books[i].author, ' - Title: ', books[i].title);
        end;

        write('Enter an author or title to search for: ');
        readln(input);
    end;
end.