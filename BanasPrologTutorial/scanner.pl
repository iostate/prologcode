% Scanner
% SWI-Prolog Scanner Documentation Link:
% http://www.swi-prolog.org/pldoc/man?section=isoIO

% Ask the user for their name, and then write a greeting to the screen.

say_hi :-
    write('What is your name? '),
    read(X),
    write('Hi '),
    write(X).

fav_char :-
    write('What is your favorite character?'),
    get(X),
    format('The ASCII value ~w is ', [X]),
    put(X), nl.


% Convert an uppercase to lowercase

uppercase_to_lowercase :-
write('Please input an uppercase letter: '),
get(X),
LOWERCASE_LETTER is X - 32,
format('The ASCII value of lowercase ~w is ~w', [X, LOWERCASE_LETTER]), nl.

% Get the ASCII value of the character Y
% char_code('Y', Z).

% --BEGIN-- HELPER FUNCTIONS FOR GREET_USER1
% convert a string to lowercase.
to_lower_case(X, Y) :-
    downcase_atom(X, Y).


% Convert from lowercase to uppercase
to_upper_case(X, Y) :-
    upcase_atom(X, Y).

% convert the first charactr of a string to uppercase
first_char_uppercase(WordLC, WordUC) :-
    atom_chars(WordLC, [FirstChLow|LWordLC]),
    atom_chars(FirstLow, [FirstChLow]),
    to_upper_case(FirstLow, FirstUpp),
    atom_chars(FirstUpp, [FirstChUpp]),
    atom_chars(WordUC, [FirstChUpp|LWordLC]).

% --END-- HELPER FUNCTION FOR GREET_USER1

% Greet a new user.

greet_user1 :-
    write('Hello, what is your name?'),
    read(X),
    to_lower_case(X, Z),
    first_char_uppercase(Z, M),
    format('Welcome, ~w. Please enjoy your stay!', [M]).
