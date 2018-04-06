% Variables in Prolog

subtract(X, Y) :-
    RESULT is X - Y,
    write(RESULT).

W = subtract(3, 2).

print_w :-
    W = subtract(3, 2),
    write(W).
