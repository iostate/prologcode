%[london_buckingham_palace, paris_eiffel_tower, york_minster, pisa_leaning_tower, athens_parthenon]

% City and features. Recursion Prolog.

on(Item, [Item | Rest]) :- !.
on(Item, [DisregardHead | Tail]) :-
	on(Item, Tail).

% Output
% ?- on(paris_eiffel_tower, [london_buckingham_palace, paris_eiffel_tower, york_minster, pisa_leaning_tower, athens_parthenon]).
% true.