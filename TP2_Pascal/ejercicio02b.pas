{
Escriba en el lenguaje de programación Pascal un programa que permita leer dos números
(por teclado) y que imprima (con cartel y valores):

    b) El producto y la división, utilizando procedimientos
}
program ejercicio02b;
var a, b : real;

procedure producto(x, y : real);
var r : real;
begin
    r := x * y;
    writeln(x,' X ', y, ' = ', r);
end;

procedure division(x, y : real);
var r : real;
begin
    r := x / y;
    writeln(x,' / ', y, ' = ', r);
end;

begin
    writeln('intruduzca el valor de a:');
	read(a);
	writeln('intruduzca el valor de b:');
	read(b);
    producto(a, b);
    division(a, b);
end.