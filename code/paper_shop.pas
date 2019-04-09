program paper_shop;

type paper = record
    size, colour: string;
    price: real;
    count: integer;
end;

var i, count: integer;
    total, total_vat, vat, summary: real;
    papers: array[1 .. 20] of paper;

begin
    write('How many paper''s do you have? ');
    readln(count);

    writeln('Now enter their info:');
    for i := 1 to count do begin
        write('Size: ');
        readln(papers[i].size);
        write('Colour: ');
        readln(papers[i].colour);
        write('Price per unit: ');
        readln(papers[i].price);
        write('Count: ');
        readln(papers[i].count);

        writeln;
    end;

    summary := 0;
    // Damn you formatting!
    writeln(#10, 'Paper type          price     count     total     tax      VAT incuded');
    writeln('________________________________________________________________________');
    for i := 1 to count do begin
        write(papers[i].colour, papers[i].size);
        write(papers[i].price:10:2, ' ', papers[i].count);

        total := papers[i].count * papers[i].price;
        vat := total / 100 * 20;
        total_vat := total + vat;
        summary := summary + total_vat;

        write(total:0:2, ' ', vat:0:2, ' ', total_vat:0:2);
        
        writeln;
    end;
    writeln('____________');
    writeln('Summary: ', summary:0:2);
end.