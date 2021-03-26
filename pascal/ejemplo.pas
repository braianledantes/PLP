PROGRAM ejemplo (input, Output);
CONST max = 100;
VAR a:integer;

BEGIN
{esto es un comentario, hola}

	write('Escriba un numero: ');
	read(a);
	a := a + max;
	writeln('El resultado de A + 100 es: ', a);
END.
