female(betsy).
female(alice).

parent(albert, bob).
parent(albert, betsy).
parent(albert, alice).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).


% Interpreter: type parent(X, carl). to find out who the wife of Carl is.

% returns carl, I think because he is the last one on the list.

get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Alberts grandchild is '),
    write(Y), nl.

get_bobs_grandchild :-
    parent(X, bob),
    parent(X, Y),
    write('Bobs grandchild is '),
    write(Y), nl.


get_grandparent :-
   parent(X, carl),
   parent(X, charlie),
   format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

grand_parent(X, Y) :-
    parent(Z, X),
    parent(Y, Z).

    blushes(X) :- human(X).
    human(derek).

stabs(tybalt, mercutio, sword).
stabs(killy, mercutio, sword).
hate(romeo, X) :- stabs(X, mercutio, sword).
