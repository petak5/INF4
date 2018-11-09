program chars;
var c: char;
    count, consonants, vowels, numbers, words: integer;

begin
    count := 0;
    consonants := 0;
    vowels := 0;
    numbers := 0;
    words := 0;

    repeat
        read(c);
        if (((c >= 'A') and (c <= 'Z')) or
                ((c >= 'a') and (c <= 'z')) or
                ((c >= '0') and (c <= '9')) or
                (c = ' ')) then
            begin
                if (c = ' ') then inc(words)
                else if ((c >= '0') and (c <= '9')) then inc(numbers)
                else if ((c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u')) then inc(vowels)
                else inc(consonants);
                inc(count);
            end;
    until (c = '.');

    writeln('The sentence has ', count, ' characters.');
    writeln(numbers, ' of them were numbers, ', vowels, ' vowels and ', consonants, ' consonants.');
    writeln('There were ', words, ' words in total.');

end.