%concatenacion

conc(X,[],X).
conc([],X,X).
conc([X|L], L2,[X|L3]) :- conc(L,L2,L3).