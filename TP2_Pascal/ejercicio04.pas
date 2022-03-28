{Escriba un programa que permita leer un numero real y mostrar si es mayor, menor o igual a cero, utilizando una funcion "mayor" que deba implementar}
program ejercicio4;

var num: real;

procedure mayor(n : real);
begin
	if n = 0 then
		writeln(n, ' es igual a cero');
	if n > 0 then
		writeln(n, ' es mayor a cero');
	if n < 0 then
		writeln(n, ' es menor a cero');
end;

begin
	writeln('inserte un numero...');
	read(num);
	mayor(num);
end.

