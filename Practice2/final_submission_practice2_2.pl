parent(bob,alice).
sister(alice,steve).
brother(steve,alice).
grandparent(mike,steve).

uncle(A, B) :- brother(A,X) , parent(X,B).
aunt(A, B) :- sister(A, X), parent(X, B).

cousin(A, B) :- grandparent(X, A), grandparent(X, B).

fib(0,0) :- !.
    fib(1,1) :- !.
    fib(A,B) :-
    A>1,
    A1 is A-1,
    A2 is A-2,
    fib(A1,B1),
    fib(A2,B2),
    B is B1 + B2.

car([H | _T], H).
cdr([_H | T], T).

double([],[]) :- !.
    double([H | T], [H2 | T2]) :- !, double(H, H2), double(T,T2).
    double(A, Z) :- number(A), !, Z is X * 2.
    double(A, A).

member_of(Z, Z) :- !.
    member_of(Z, [Z | _T]) :- !.
    member_of(Z, [_H | T]) :- !, member_of(Z, T).

get_odds ([],[]).
 get_odds ([H|T],Return):-
        integer(H),
        (H mod 2 =:= 1 -> Return=[H|T1],get_odds(T,T1);
        get_odds(T,L1) ).


        sum_all([],0) :- !.
sum_all([H|T], RESULT) :- sum_all(T,Total), RESULT is Total + H.

mult_all([],0) :- !.
mult_all([H],H) :- !.
mult_all([H|T], RESULT) :- mult_all(T,Total), RESULT is Total * H.
