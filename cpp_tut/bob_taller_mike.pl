taller(bob, mike).
taller(mike, jim).
taller(jim, george).

taller(A, B) :- 
	taller(A, X),
	taller(X, B).


town(tucson, casagrande).
town(casagrande, tempe).
town(tempe, mesa).
town(mesa, globe).
town(globe, newmexico).

can_get(A, B) :-
	town(A, U),
	town(U, I),
	town(I, K),
	town(K, L),
	town(L, B).


p([H|T], H, T).


% Search for letter in a list

% Item is head
on(Item, [Item|Rest]) :- !.
% Item is Tail
on(Item,[DisregardHead | Tail]) :-
	on(Item, Tail).