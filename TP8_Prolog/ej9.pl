pertenece(X, [X|_]).
pertenece(X, [_|T]) :- pertenece(X, T).

longitudLista([], 0).
longitudLista([_|T], R) :- longitudLista(T, R1), R is R1 + 1.

inclusion([], _).
inclusion([H|T], A) :- pertenece(H, A), inclusion(T, A).

igualdad([], []).
igualdad(A, B) :- igualdadAux(A, B).
igualdadAux([], _).
igualdadAux([H|T], B) :- pertenece(H, B), igualdadAux(T, B).

union([], A, A).
union([H|T], B, [H|R]) :- not(pertenece(H, B)), union(T, B, R). 
union([H|T], B, R) :- pertenece(H, B), union(T, B, R). 

interseccion([], _, []).
interseccion(_, [], []).
interseccion([H|T], B, [H|R]) :- pertenece(H, B), interseccion(T, B, R).
interseccion([H|T], B, R) :- not(pertenece(H, B)), interseccion(T, B, R). 

eliminarOcurrencias(_, [], []).
eliminarOcurrencias(X, [X|T], R) :- eliminarOcurrencias(X, T, R).
eliminarOcurrencias(X, [H|T], [H|R]) :- eliminarOcurrencias(X, T, R).

diferencia(A, [], A).
diferencia(A, [X|T], R) :- pertenece(X, A), eliminarOcurrencias(X, A, A1), diferencia(A1, T, R).
diferencia(A, [X|T], R) :- not(pertenece(X, A)), diferencia(A, T, R).