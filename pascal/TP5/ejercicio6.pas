program ejercicio6;
{programa que lea dos numeros y despues permita introducir una opcion,
que puede ser suma, resta, multiplicacion o division. A partir de las
entradas, segun la opcion elegida realizar el calculo.}
const m = 3;
var 
a, b, c, e : integer;

function sumar():integer;
begin
	sumar := a + b;
end;

function restar() : integer;
begin
	restar := a - b;
end;

function multiplicar():integer;
begin
	multiplicar := a * b;
end;

function dividir():integer;
begin
	dividir := a div b;
end;

begin
	writeln('ingrese un numero a:');
	read(a);
	writeln('ingrese un numero b:');
	read(b);
	writeln('igrese suma (1), resta (2), multiplicacion (3) o division (4).');
	read(e);

	case e of
	1: c := sumar();
	2: c := restar();
	3: c := multiplicar();
	4: c := dividir();
	else writeln('error: opcion invalida');
	end;
	
	writeln('el resultado es: ', c);
end.
