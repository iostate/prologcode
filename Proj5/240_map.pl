

% Test with a shortened list by making using of the adjacency method

% Declare the adjacencies

adjacent(arkansas,mississippi).
adjacent(mississippi,arkansas).
adjacent(arkansas,tennessee).
adjacent(tennessee,arkansas).
adjacent(arkansas,louisiana).
adjacent(louisiana,arkansas).
adjacent(mississippi,tennessee).
adjacent(tennessee,mississippi).
adjacent(tennessee,alabama).
adjacent(alabama,tennessee).
adjacent(mississippi,alabama).
adjacent(alabama,mississippi).
adjacent(mississippi,louisiana).
adjacent(louisiana,mississippi).

% Allows us to shorten the list of adjacencies by checking the adjacency
% for the pair, but reversed.
adjacency(X,Y,Map) :-  member([X,Y],Map) ; member([Y,X],Map).

% Finds the regions given the shortened list of adjacencies

get_regions([],R,R).
get_regions([[H,T]|S], R,A) :-
     (member(H,R) ->
        (member(T,R) -> get_regions(S,R,A) ; get_regions(S,[T|R],A)) ;
           (member(T,R) -> get_regions(S,[H|R],A) ; get_regions(S,[H,T|R],A) )).

% Colors all the maps, checks whether conflicts occur.
color(Map,Colors,Coloring) :-
        get_regions(Map,[],Regions),
        color_states(Regions,Colors,Coloring),
        \+ conflict(Map,Coloring).

% Color all the regions, later on the coloring of this function is checked through color(M, C, Coloring) function

color_states([R|Rs],Colors,[[R,C]|A]) :-
        member(C,Colors),
        color_states(Rs,Colors,A).

% used to handle the empty list
colors_states([],_,[]).

% check conflict between two states
conflict(Map,Coloring) :-
        member([R1,C],Coloring),
        member([R2,C],Coloring),
        adjacency(R1,R2,Map).

% states - takes in the states
% states(A, B, C, D, E, F) :-
