% Towers of Hanoi Solution

move(1,X,Y,_) :-
    write('Move top disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl.
move(N,X,Y,Z) :-
    N>1,
    M is N-1,
    write(M),nl,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    write('REACHED!'),nl,
    move(M,Z,Y,X).
