concatenar([], L, L).
concatenar([H|T1], L, [H|T2]) :- concatenar(T1, L, T2).

rotacionIzq([H|T], R) :- concatenar(T, [H], R).

rotacionDer(L, R) :- rotacionIzq(R, L).

eliminarOcurrencias(_, [], []).
eliminarOcurrencias(X, [X|T], R) :- eliminarOcurrencias(X, T, R).
eliminarOcurrencias(X, [H|T], [H|R]) :- eliminarOcurrencias(X, T, R).

sustitucionOcurrencias(_, _, [], []).
sustitucionOcurrencias(X, Y, [X|T], [Y|R]) :- sustitucionOcurrencias(X, Y, T, R).
sustitucionOcurrencias(X, Y, [H|T], [H|R]) :- sustitucionOcurrencias(X, Y, T, R).

pertenece(X, [X|_]).
pertenece(X, [_|T]) :- pertenece(X, T).

%cuenta la cantidad de elementos no repetidos en una lista
cardinalidad([], 0).
cardinalidad([H|T], R) :- not(pertenece(H, T)), cardinalidad(T, R1), R is R1 + 1; cardinalidad(T, R).

inversion(L, R) :- inversionAux(L, [], R).
inversionAux([], B, B).
inversionAux([A|B], C, R) :- inversionAux(B, [A|C], R).