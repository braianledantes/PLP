program ejercicio4;
{programa que permita leer un numero real y mostrar si es mayor, menor
o igual a cero, utilizando la funcion "mayor" que debe implementar}

var numero: real;

procedure verificar(n : real);
begin
	if n > 0 then
		writeln('el numero es mayor a cero')
	else if n = 0 then
		writeln('el numero es cero')
	else 
		writeln('el numero es menor a cero')
end;

begin
	writeln('ingrese un numero: ');
	read(numero);
	verificar(numero);
end.
