es_perro(blacky).
es_gato(tom).
es_raton(jerry).


masgrande(elefante, caballo).
masgrande(caballo, perro).
masgrande(perro, raton).
masgrande(raton, hormiga).

muchomasgrande(A,C) :- masgrande(A,B), masgrande(B,C).

padrede(martin, luis).
padrede(luis, jose).
padrede(luis, pedro).
espadre(martin).
espadre(luis).

