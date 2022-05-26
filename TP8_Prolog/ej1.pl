%Progenitor
progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro,pablo).
progenitor(maria,pablo).
progenitor(juan,luis).
progenitor(maria,luis).
progenitor(pedro,luciano).
progenitor(laura,luciano).
progenitor(laura,ariel).
progenitor(pedro,ariel).
progenitor(tomas,pedro).
progenitor(jose,juan).
progenitor(daniel,laura).
progenitor(andrea,laura).
progenitor(eugenia,maria).
progenitor(martin,maria).
progenitor(eugenia,rodolfo).
progenitor(martin,rodolfo).
progenitor(eugenia,sandra).
progenitor(martin,sandra).
progenitor(rodolfo,damian).
progenitor(claudia,damian).
progenitor(norma,andrea).
progenitor(carlos,andrea).
progenitor(norma,cecilia).
progenitor(carlos,cecilia).
progenitor(cecilia,gabriel).
progenitor(javier,gabriel).
progenitor(jorge,carlos).
progenitor(silvia,carlos).


% Femenino o Masculino

femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).
masculino(daniel).
masculino(martin).
masculino(rodolfo).
masculino(damian).
masculino(carlos).
masculino(gabriel).
masculino(javier).
masculino(jorge).

%Casados
casado(juan, maria).
casado(pedro, laura).
casado(eugenia, martin).
casado(rodolfo, claudia).
casado(daniel, andrea).
casado(norma,carlos).
casado(cecilia,javier).


ancestro(X,Y,R) :- progenitor(X,Y,R).
ancestro(X,Y,R) :- ancestro(X,Z,R), progenitor(Y,Z).

padre(X,Y) :- masculino(X), progenitor(X,Y).
madre(X,Y) :- progenitor(X,Y), femenino(X).

hermano(X,Y) :- progenitor(Z,X), progenitor(Z,Y), not(X==Y).

abuelo(X,Y) :- progenitor(X,Z), progenitor(Z,Y).
bisabuelo(X,Y) :- progenitor(X,Z), progenitor(Z,W), progenitor(W,Y).

tio(T,H) :- progenitor(P,H), hermano(P,T), masculino(T).

primo(X,Y) :- progenitor(P,X), progenitor(T,Y), tio(P,T).

ancestro(Anc,Des) :- progenitor(Anc,Des).
ancestro(Anc,Des) :- ancestro(Anc,DesInter), progenitor(DesInter,Des).

succ(X, Y) :- Y is X + 1.

estanCasados(X,Y) :- casado(X,Y).
estanCasados(X,Y) :- casado(Y,X).

soltero(Persona) :- not(estanCasados(Persona, _)).

amante(X,Y) :- progenitor(X,Hijo), progenitor(Y,Hijo), not(estanCasados(X,Y)).

suegra(Suegra, Persona) :- estanCasados(Persona, Pareja), madre(Suegra, Pareja).