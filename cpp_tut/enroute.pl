%on_route(rome).

%move(home,taxi,halifax).
%move(halifax,train,gatwick).
%move(gatwick,plane,rome).

%on_route(Place):-
%	move(Place,Method,NewPlace),
%	on_route(NewPlace).
%

% Final destination is mesa.
on_route(mesa).

move(tucson, car, phoenix).
move(phoenix, car, tempe).
move(tempe, car, mesa).

on_route(A) :-
	move(A, Method, NewPlace),
	on_route(NewPlace).



