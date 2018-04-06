% Test code with the following line in SWI-Prolog: 'color([[1,2], [2,1], [1,3], [3,1], [1,5], [5,1], [2,3], [3,2], [3,4], [4,3], [2,4], [4,2], [2,5], [5,2]], [red,green,blue],Coloring).'


adjacent(1,2).      adjacent(2,1).
adjacent(1,3).      adjacent(3,1).
adjacent(1,5).      adjacent(5,1).
adjacent(2,3).      adjacent(3,2).
adjacent(3,4).      adjacent(4,3).
adjacent(2,4).      adjacent(4,2).
adjacent(2,5).      adjacent(5,2).

% Allows us to shorten the list of adjacencies by checking the adjacency
% for the pair, but reversed.
adjacent(X,Y,Map) :-  member([X,Y],Map) ; member([Y,X],Map).

% Finds the regions given the shortened list of adjacencies
% Could define my own member function

get_regions([],R,R).
get_regions([[H,T]|S], R,A) :-
     (member(H,R) ->
        (member(T,R) -> get_regions(S,R,A) ; get_regions(S,[T|R],A)) ;
           (member(T,R) -> get_regions(S,[H|R],A) ; get_regions(S,[H,T|R],A) ) ).

% Colors all the maps, checks whether conflicts occur.
color(Map,Colors,Coloring) :-
        get_regions(Map,[],Regions),
        color_all(Regions,Colors,Coloring),
        \+ conflict(Map,Coloring).

% Color all the regions, later on the coloring of this function is checked through color(M, C, Coloring) function

color_all([R|Rs],Colors,[[R,C]|A]) :-
        member(C,Colors),
        color_all(Rs,Colors,A).

% used to handle the empty list
color_all([],_,[]).

% New conflict function
conflict(Map,Coloring) :-
        member([R1,C],Coloring),
        member([R2,C],Coloring),
        adjacent(R1,R2,Map).
