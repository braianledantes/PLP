succ(X, Y) :- Y is X + 1.

suma(X,0,X).
suma(X,succ(Y),succ(Z)) :- suma(X,Y,Z).

resta(0,_,0).
resta(X,Y,R) :- suma(Y,R,X).

mult(_,0,0).
mult(0,_,0).
mult(X,succ(Y),R) :- mult(X,Y,Z), suma(X,Z,R).

div(_,0,indeterminado).
div(X,succ(0),X).
div(0,_,0).
div(X, Y, succ(Z)) :- resta(X,Y,R), div(R,Y,Z).