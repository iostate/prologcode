all_even([]).
all_even([H|T]):-
    REMAINDER is H mod 2, REMAINDER is 0, all_even(T).

swap_negative([], []) :- !.
swap_negative([H|T], [negative|END]) :-
    H < 0,
    !,
    swap_negative(T, END).

swap_negative([H|T], [H|END]) :-
    swap_negative(T,END).

bigger_than([], _ , []) :- !.
bigger_than([H|T], MID, T1) :-
    H =< MID,
    !,
    bigger_than(T, MID, T1).

bigger_than([H|T], MID, [H|END]) :-
    bigger_than(T, MID, END).
