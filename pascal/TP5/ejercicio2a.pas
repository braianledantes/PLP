program ejercicio2a;

var 
    a, b : integer;
    suma, resta : integer;
begin
	writeln('programa que permita leer dos numeros e imprima la suma y resta.');
	writeln('Ingrese el valor de a: ');
	read(a);
	writeln('ingrese el valor de b: ');
	read(b);
	suma := a + b;	
	resta := a - b;
	writeln('a + b = ', suma);
	writeln('a - b = ', resta);
end.
