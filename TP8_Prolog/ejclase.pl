sumarElem([], 0).
sumarElem([H|T], R) :- sumarElem(T, R1), R is R1 + H.

sumarL([], [0]).
sumarL([H|T], [R|R1]) :- sumarL(T, R1), sumarElem(H, R).