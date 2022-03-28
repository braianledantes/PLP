{Escriba en el lenguaje de programación Pascal un programa que permita leer dos números
(por teclado) y que imprima (con cartel y valores):
a) La suma y resta de ambos números, utilizando para ello sendas funciones}
PROGRAM ejercicio2;
var a, b : integer;
   function sumar(x,y:integer):integer;
   begin
	   sumar := x + y;
   end;
   function restar(x,y:integer):integer;
   begin
	   sumar := x - y;
   end;
begin
	writeln('intruduzca el valor de a:');
	read(a);
	writeln('intruduzca el valor de b:');
	read(b);
	writeln('el resultado de ',a,'+',b,'=',sumar(a,b));
	writeln('el resultado de ',a,'-',b,'=',restar(a,b));	

end.
