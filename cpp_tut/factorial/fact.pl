% Factorial definition

% :- IF
% ',' === &&

% Unit clause with no body
factorial(0,1).

doggo(charlie, 2.4).

good_rating(A, F) :-
    doggo(A, Z),
    Z >= 3.4,
    write(A).


factorial(0,1).

factorial(N,F) :-
   N>0,
   N1 is N-1,
   factorial(N1,F1),write('N1 is '), write(N1),nl,
   write('F1 is '),write(F1),nl,
   F is N * F1,write('F is '),
   write(F),nl.
