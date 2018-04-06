show(seinfeld, 1989, 8.9).
show(twin_peaks, 1990, 8.9).
show(the_xfiles, 1993, 8.7).
show(friends, 1994, 8.9).
show(the_shield, 2002, 8.7).
show(the_wire, 2002, 9.4).
show(firefly, 2002, 9.1).
show(friday_night_lights, 2006, 8.6).
show(the_walking_dead, 2010, 8.4).
show(game_of_thrones, 2011, 9.4).
show(silicon_valley, 2014, 8.5).
show(mr_robot, 2015, 8.6).
show(atlanta, 2016, 8.5).

good_show(X):- show(X,_,R),
    R >= 8.9.

same_year(X,Y) :-
    show(X,Y1,_),
    show(Y,Y2,_),
    Y1 = Y2.

quad(A,B):-
    B is A * 4.

bloop(C,D) :-
(C >= 0 -> D is 2*C ;
D is C/2).

mult(X,Y,Z) :-
    Z is X * Y.

bigger(X,Y,Z) :-
    ( X =< Y -> Z = Y ; Z = X ).

absol(X,Y) :-
    (X >= 0 -> Y is X ; Y is -X).
