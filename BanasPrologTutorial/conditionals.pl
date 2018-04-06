% conditionals

% the syntax to check if something is equal is:
% X = X.

% can also check whether things are equal by putting a single quote around
% something... E.g.,
% 'alice' = alice.

equals(X, X) :-
    X = X.

% Equals to each other:
% \+ (X = Y).

not_equals(X, Y) :-
    \+ (X = Y).

% Greater than
% 3 > 15.

greater_than(X, Y) :-
    X > Y.

% Greater than or equal to:
% X >= Y

greater_than_or_equal(X, Y) :-
    X >= Y.

% Less than

less_than(X, Y) :-
    X < Y.

% Less than or equal to
less_than_or_equal(X, Y) :-
    X =< Y.
