loves(vincent, mia).
loves(marsellus, mia).
jealuos(A,B) :- loves(A,C), loves(B,C).

house_elf(dobby). 
witch(hermione). 
witch('McGonagall'). 
witch(rita_skeeter). 
magic(X) :- house_elf(X). 
magic(X) :- wizard(X). 
magic(X) :- witch(X). 

child(anna,bridget). 
child(bridget,caroline). 
child(caroline,donna). 
child(donna,emily). 
descend(X,Y):- child(X,Y). 
descend(X,Y):- child(X,Z), child(Z,Y).

add(0,X,X).
% add(succ(X), Y, succ(Z)) :- add(X,Y,Z).
add(X+1, Y, Z+1) :- add(X,Y,Z).

menmer(X, [X]).
menmer(X, [X|T]).
menmer(X, [H|T]) :- X /== H, menmer(X, T).

member(X,[X|_]). 
member(X,[_|T]):- member(X,T).

concatenar([], L, L).
concatenar([H|T1], L, [H|T2]) :- concatenar(T1, L, T2).

miembro(M, [M|_]).
miembro(M, [_|T]) :- miembro(M, T).
