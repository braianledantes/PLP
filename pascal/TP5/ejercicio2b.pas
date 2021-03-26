program ejercicio2b;

var 
    a, b : integer;
    mul, divi : integer;
begin
	writeln('programa que permita leer dos numeros e imprima la suma y resta.');
	writeln('Ingrese el valor de a: ');
	read(a);
	writeln('ingrese el valor de b: ');
	read(b);
	mul := a * b;	
	divi := a div b;
	writeln('a * b = ', mul);
	writeln('a / b = ', divi);
end.
