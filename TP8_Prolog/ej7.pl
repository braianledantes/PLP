%concatenacion

conc(X,[],X).
conc([],X,X).
conc([X|L], L2,[X|L3]) :- conc(L,L2,L3).

concatenar([], L, L).
concatenar([H|T1], L, [H|T2]) :- concatenar(T1, L, T2).

miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).

cantidadOcurrencias(_, [], 0).
cantidadOcurrencias(X, [X|T], R) :- cantidadOcurrencias(X, T, R1), R is R1 + 1.
cantidadOcurrencias(X, [_|T], R) :- cantidadOcurrencias(X, T, R).

eliminarPrimerOcurrencia(_, [], []).
eliminarPrimerOcurrencia(X, [X|T], T).
eliminarPrimerOcurrencia(X, [H|T], [H|R]) :- eliminarPrimerOcurrencia(X, T, R).

sustitucionPrimerOcurrencia(_, _, [], []).
sustitucionPrimerOcurrencia(X, Y, [X|T], [Y|T]).
sustitucionPrimerOcurrencia(X, Y, [H|T], [H|R]) :- sustitucionPrimerOcurrencia(X, Y, T, R).

longitudLista([], 0).
longitudLista([_|T], R) :- longitudLista(T, R1), R is R1 + 1.

%verifica si la lista es prefijo de la otra.
prefijo([], _).
prefijo([H|T1], [H|T2]) :- prefijo(T1, T2).