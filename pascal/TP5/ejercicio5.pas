program ejercicio5;
{programa que determine si un numero es par.
modificar el codigo para si n es divisible por m.}
const m = 3;
var n : integer;

begin
	writeln('ingrese un numero:');
	read(n);
	writeln('el numero es divisible por',m,'? ', (n mod m)= 0);
end.
