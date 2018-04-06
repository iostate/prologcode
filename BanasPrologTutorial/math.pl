% mathematical operations in Prolog


% multiplication

multiply(X, Y) :-
    Z is X * Y,
    write(Z).

% calculate area of triangle
calculate_area_of_triangle(HEIGHT, BASE) :-
    AREA is (HEIGHT * BASE) / 2,

    % use ~NUMBERf to format the output

    format('~5f is the area of this triangle.', [AREA]).

% double something
double(X) :-
    DOUBLED_NUMBER is (X * 2),
    write(DOUBLED_NUMBER).


% Random Numbers
% random(0, 10, X).

% Get all numbers between two Numbers
% between(0, 10, X).
% Displays the numbers between 0 and 10 one at a time.

% Incremebnt something by 1
% succ(4, X).
% will return 5.

% absolute value
% X is abs(-8).
% Returns 8.

% Max of two Numbers
% X is max(10,5).
% Returns 10.

% Minimum of two numbers
% X is min(100,200).
% Returns 100.

% Round a number
% X is round(10.56).

% Take two numbers, round them up, and then subtract them, and return a whole number.
round_and_subtract_two_floating_point_numbers(X, Y) :-
    X_ROUNDED is round(X),
    Y_ROUNDED is round(Y),
    RESULT is X_ROUNDED - Y_ROUNDED,
    write(RESULT).


% floor a number
floor(X) :-
    RESULT is floor(X),
    write(RESULT).

% get ceiling of a number
ceiling(X) :-
    RESULT is ceiling(X),
    write(RESULT).

% Power of a number
power(BASE, POWER, RESULT) :-
    RESULT is BASE** POWER,
    format('~w to the power of ~w is ~w', [BASE, POWER, RESULT]).

% Modulo is done by using // which Divides and Disregards Decimals

is_even(X) :-
    Y is X//2, X =:= 2 * Y.

% A whole bunch of other math functions available in Prolog
% sqrt, sin, cos, tan, asin, acos, atan, atan2, sinh, asinh, acosh, log, log10,
% exp, pi, e

square(X, Y) :-
    Y is sqrt(X).
