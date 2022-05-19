% Curso: Principios de Lenguajes de Programación
% Mi primer programa en Prolog

% Hechos de mi programa

perro(fido).
perro(inno).
padre(juan, susana).
come(juan, pizza).
come(susana, pizza).
come(marta, pizza).
come(susana, naranjas).
cansado(juan).
compra(juan, pizza, marta).
nublado.

gato(pazzo).
gato(fasulo).
animal(caballo).
animal(oveja).
animal(X) :- perro(X).
animal(X) :- gato(X).