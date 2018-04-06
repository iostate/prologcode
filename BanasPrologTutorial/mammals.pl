% Define some warm blooded things
warm_blooded(penguin).
warm_blooded(human).

% These things produce milk
produce_milk(penguin).
produce_milk(human).

% These things have feathers
have_feathers(penguin).

% These things have hair
have_hair(human).

% X is a mammal if these conditions are met
mammal(X) :-
    warm_blooded(X),
    produce_milk(X),
    have_hair(X).

% X is an avian if these conditions are met
avian(X) :-
    warm_blooded(X),
    produce_milk(X),
    have_feathers(X).

% Check for all things that are warm blooded. Prints the results
% with a newline at the end. 
% warm_blooded(X) :-
%    write(X), nl.
