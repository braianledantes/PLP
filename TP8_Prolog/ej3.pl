succ(X, Y) :- Y is X + 1.

suma(X, 0, R) :- R is X.
suma(X, Y, R) :- suma(X, Y1, succ(X)), Y1 is Y-1.