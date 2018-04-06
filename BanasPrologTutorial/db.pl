% predicate(atom1, atom2).
loves(romeo, juliet).

% ':-'  is the if statement

% (juliet loves romeo) as long as (romeo loves juliet)
loves(juliet, romeo) :- loves(romeo, juliet).

male(albert).
male(bert).
male(kurt).
male(cobain).
male(hanes).
male(andrew).
male(david).
male(huber).
male(basam).

female(lily).
female(michelle).
female(alice).

% male(X), female(X). will return all possible combinations of the above
% males and females

% Rule: albert runs if albert is happy.

happy(albert).

runs(albert) :-
    happy(albert).

% albert is breathing heavily if albert is running

breathing_heavily(albert) :-
    runs(albert).

does_albert_run :- runs(albert),
    write('When albert runs, he runs').
