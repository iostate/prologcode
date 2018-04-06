% structures

% does this mean that albert has an olive, a pet name olive, what is olive?

has(albert, olive).

owns(albert, pet(cat, olive)).

% Nomenclature:
% alice is called the functor (usually called a parameter)
% female has 1 erritor, which is alice

% female(alice).

% customer(firstName, lastName, balance).

customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

get_cust_bal(FName, LName) :-
    customer(FName, LName, Bal),
    write(FName), tab(1),
    format('~w owes us $~2f ~n', [LName, Bal]).

vertical(line(point(X, Y), point(X, Y2))).

horizontal(line(point(X, Y), point(X2, Y))).
