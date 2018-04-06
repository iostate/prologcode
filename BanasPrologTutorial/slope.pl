% subtract two numbers from each other.

subtract(X, X2) :-
    RESULT is X2 - X,
    RESULT.

% calculate the slope of a line

slope((X, Y), (X2, Y2)) :-
    RUN is (X2-X),
    RISE is (Y2-Y),
    SLOPE is (RUN/RISE),
    write(SLOPE).
%    format('Slope is ~w ', [SLOPE]).
