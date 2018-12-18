program rock_paper_scissors;
uses crt;
var choice, pc_choice, start: char;
    x, player, pc: integer;

begin
    clrscr;
    randomize;
    player := 0;    // Player's score
    pc := 0;        // PC's score

    writeln('Welcome to the rock-paper-scissors game!');
    writeln('Use "r" for rock, "p" for paper and "s" for scissors');
    writeln('To exit the game use "q"');
    writeln('____________________________________________________', #10);
    write('Do you want to play? (Y/N): ');
    readln(start);
    if (start = 'Y') or (start = 'y') then
    else begin
        writeln('Bye');
        exit;
    end;
    repeat
        clrscr;
        writeln('Score You vs PC - ', player, ':', pc , #10);

        x := random(3);
        if x = 0 then pc_choice := 'p'
        else if x = 1 then pc_choice := 'r'
        else if x = 2 then pc_choice := 's'
        else writeln('Error with random generation!');

        write('Enter your choice: ');
        readln(choice);

        if (choice = 'q') or (choice = 'Q') then break
        else if ((choice <> 'p') and (choice <> 'r') and (choice <> 's')) then writeln('Invalid choice! Try again.')
        else if choice = pc_choice then begin
            if choice = 'r' then writeln('Rock vs Rock - It''s a draw!')
            else if choice = 'p' then writeln('Paper vs Paper - It''s a draw!')
            else writeln('Scissors vs Scissors - It''s a draw!')
        end
        else if ((choice = 'p') and (pc_choice = 'r')) or
                ((choice = 'r') and (pc_choice = 's')) or
                ((choice = 's') and (pc_choice = 'p')) then begin
            if choice = 'p' then writeln('You win! Paper beats Rock.')
            else if choice = 'r' then writeln('You win! Rock beats Scissors.')
            else writeln('You win! Scissors beat Paper.');

            inc(player);    // Increment player's score
        end
        else begin
            if choice = 'p' then writeln('Computer wins! Paper loses to Scissors.')
            else if choice = 'r' then writeln('Computer wins! Rock loses to Paper.')
            else writeln('Computer wins! Scissors lose to Rock.');

            inc(pc);        // Increment PC's score
        end;

        delay(2000);

    until ((choice = 'q') or (choice = 'Q'));

    writeln(#10, 'Thank you for playing! Hope to see you soon :).');
end.