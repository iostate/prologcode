% More conditional statements found here

% bob is happy and near near_water

happy(bob).

% near_water(bob).


% Does bob swim?
swims(bob) :-
    happy(bob),
%    near_water(bob).

% Separate the necessary conditions for bob swimming to be true.


swims(bob) :-
    near_water(bob).


swims(bob) :-
    happy(bob).
