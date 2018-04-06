# even_numbers([],[]).
#  even_numbers([H|T],L1):-
#         integer(H),
#         (H mod 2 =:=0 -> L1=[H|T1],even_numbers(T,T1);
#         even_numbers(T,L1) ).
