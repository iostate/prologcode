% Related
% Permutation 
% Prolog

relative(jack, bill).
relative(bill, amy).
relative(amy, carol).
relative(carol, karl).

 % relative(A, Z) :-
 %	relative(Z, A) ; relative(A, Z).
swap(P, X, Y) :-  
	permutation([X,Y], [X1,Y1]), 
	call(P, X1, Y1).

swap(relative, A, Z).

related(X, Y) :- !.
related(X, Y) :-
	relative(X, Z),
	relative(Z, M),
	relative(M, Y).