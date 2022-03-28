{escribir un algoritmo que determine si un numero es par.
Modeficara el codigo  para verificar si n es divisible por m}
program ejercicio5;

var 
    num : integer;

function espar(x : integer) : boolean;
begin
    espar := (x mod 2) = 0;
end;

begin
    writeln('inserte un numero:');
    read(num);
    writeln(num, ' es par? ', espar(num));
end.