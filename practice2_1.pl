parent(bob,alice).
sister(alice,steve).
brother(steve,alice).
grandparent(mike,steve).

uncle(X, Y) :- brother(X, A), parent(A, B).
aunt(A, B) :- sister(A,X) , parent(X, B).



cousin(A, B) :- grandparent(X,A), grandparent(X, B).


fib(0, 0) :- !.
fib(1, 1) :- !.
fib(X, Y) :-
	X > 1,
	X1 is X -1,
	X2 is X -2,
	fib(X1, Y1),
	fib(X2, Y2),
	Y is Y1 + Y2.

double([], []) :- !.
	double([H | T], [H2 | T2]) :- !, double(H, H2), double(T, T2).
	double(A, B) :- number(A), !, B is A * 2.
	double(A, A).

member_of(_.[],[]).
	member_of(X, [H | T], [H | T1]) :- X =H, member_of(X, T, T1).
	member_of(X, [ H | T], T1) :- member_of(X, T, T1).

odd_numbers([],[]).
 odd_numbers([H|T],L1):-
        integer(H),
        (H mod 2 =:=1 -> L1=[H|T1],odd_numbers(T,T1);
        odd_numbers(T,L1) ).

mult_all([], 0) :- !.
mult_all([H], H).
mult_all([H | T], X) :- mult_all(T, T1), X is H * T1.


sum_all([], 0) :- !.
sum_all([H | T], X) :- sum_all(T, T1), X is H + T1.

square_list([], []).
square_list([H|H1], [T|T1]) :-
  ( number(H)
  ->  T is H * H, square_list(H1, T1)
  ;   T = H, square_list(H1, T1)
  ).
