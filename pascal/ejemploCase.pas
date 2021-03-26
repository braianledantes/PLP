PROGRAM EjemploCase;
VAR
	Mes, CantDias : integer ;
BEGIN
	writeln('Ingresa el mes (De 1 a 12): ' );
	readln(Mes);
	CASE Mes OF
		1, 3, 5, 7, 8, 10, 12 : CantDias := 31;
		4, 6, 9, 11 : CantDias := 30;
		2 : CantDias := 28;
	ELSE
		writeln('Error en la entrada');
	END;
	write('El mes numero ', Mes:2);
	writeln(' tiene ', CantDias:2 , ' días');
END.
