mapobject('RedCar', 1, 1, 75.0, 0, car).
mapobject('RedCar1', 1, 1, 75.0, 0, car).
mapobject('BlueCar', 3, 1, 45.0, 270, car).
mapobject('Bus', 7, 6, 55.0, 90, car).
mapobject('Police1', 1, 5, 55.0, 180, car).
mapobject('Tree1', 3, 1, 0.0, 180, tree).
mapobject('Tree2', 4, 8, 0.0, 180, tree).
mapobject('Street1', 1, 2, 0.0, 180, street).

object_location(A, X, Y) :-
    mapobject(A, X, Y, _Z, _B, _C).

object_type(A, T) :-
    mapobject(A, _, _, _, _, T).

object(A, L) :-
    mapobject(A, B, C, D, E, F),
    L=[A,B,C,D,E,F].

unsafe(A) :-
    mapobject(A, _, _, S, _, _),
    S > 70.

collision(A, B) :-
    mapobject(A, X, Y, _, _, _), mapobject(B,X, Y, _, _, _).


get_all_of_type(T, Lst) :-
    % Get all the objects of this given type
    findall(X, mapobject(X,_,_,_,_,T), Lst).


insert(X, [], [X]):- !.
insert(X, [X1|Y1], [X, X1|Y1]):- X=<X1, !.
insert(X, [X1|Y1], [X1|Y]):- insert(X, Y1, Y).

% Insertion Sort

insertion_sort(X, [], [X]):- !.
insertion_sort(X, [X1|Y1], [X, X1|Y1]):- X=<X1, !.
insertion_sort(X, [X1|Y1], [X1|Y]):- insertion_sort(X, Y1, Y).

% Squash function
squash([], []).
squash([E], [E]).
squash([H|[TH|TT]], S) :- H = TH, squash(TT, SubS), append([H], SubS, S).
squash([H|[TH|TT]], S) :- H \= TH, squash([TH|TT], SubS), append([H], SubS, S).


states(TN,MS,AL,LA,AR) :-
    borders(AR,LA),
    borders(LA,AR),
    borders(AR,TN),
    borders(TN,AR),
    borders(AR,MS),
    borders(MS,AR),

    borders(AL,MS),
    borders(MS,AL),
    borders(AL,TN),
    borders(TN,AL),
    borders(TN,MS),
    borders(MS,TN),
    borders(MS,LA),
    borders(LA,MS).

    borders(red,blue).
    borders(blue,red).
    borders(red,yellow).
    borders(yellow,red).
    borders(blue,yellow).
    borders(yellow,blue).


:- write('Map Object Database:'), nl.
:- object_location('RedCar',X, Y), write('redcar located at '), write([X,Y]), nl.
:- object_type('Bus', X), write('Bus type is '), write(X), nl.
:- object('Police1',X), write('Police1 object : '), write(X), nl.
:- unsafe(A), write('unsafe: '), write(A), nl.
:- collision(A,B), write('collision: '), write([A, B]), nl.
:- get_all_of_type(car,X), write('get all cars:'), write(X), nl.
:- nl, write('States: ').
:- states(TN,MS,AL,LA,AR),
write(['TN', TN, ' MS', MS, ' AL', AL, ' LA', LA, ' AR', AR]), nl.
:- nl, write('squash/2:'), nl.
:- write(' 1: '), squash([a,b,c,d,e,f],X), write(X), nl.
:- write(' 2: '), squash([1,1,2,2,3,4,[5,6,[7,8]]],X), write(X), nl.
:- write(' 3: '), squash([[2,4,6,8],1,2,[3,4,[5,6],7],8],X), write(X), nl.
:- write(' 4: '), squash([[c],[s,c,h,e,m,e],[p,r,o,l,o,g]], X), write(X), nl.
:- nl, write('insertion_sort/2:'), nl.
:- write(' 1: '), insertion_sort([1,2,3,4,5],X), write(X), nl.
:- write(' 2: '), insertion_sort([5,4,3,2,1],X), write(X), nl.
:- write(' 3: '), insertion_sort([1, 3, 2, 9, 3, 8, 9, 10, 11, 1, 2],X), write(X), nl.
:- write(' 4: '), insertion_sort([1,3,9,3,9,7,5],X), write(X), nl.
:- write(' 5: '), insertion_sort([],X), write(X), nl.
