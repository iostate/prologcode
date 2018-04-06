even(X, Y) :-
    Y is X mod 2.

even-list([]) :-
    even([H | T]), even-list(T).

evenlength :-
    write('even elements in the list.').


oddlength :-
    write('odd elements in the list').

oddeven([H|T]) :-
    length(T,L),
    L >= 0 ->
    (
    L1 is L+1,
    L2 is mod(L1,2),
    L2 =:= 0 ->
                evenlength;
                oddlength
    ).
