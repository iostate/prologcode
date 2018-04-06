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
