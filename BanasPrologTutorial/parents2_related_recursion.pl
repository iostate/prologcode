% Parents2

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

% albert is the parent of bob, betsy, and bill

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

%alice is the parent of bob, betsy, and bill

parent(bob, carl).
parent(bob, charlie).

% find out if two people are related

related(X, Y) :-
   parent(X, Y).

% use recursion to prove that related(albert, carl). is true
% the first related function above must be defined (see line 20)

related(X, Y) :-
    parent(X, Z),
    related(Z, Y).
