parent(bob,alice).
sister(alice,steve).
brother(steve,alice).
grandparent(mike,steve).

uncle(X, Y) :-
    grandparent(X, A),
    grandparent(X, Y).
