program ejercicio3;
{dado el radio de una esfera, escriba un programa que permita calcular e imprimir su
superficie y su area. Utilice solo un procedimiento para realizar todos estos calculos.}

var radio, superficie, area : double;

procedure calcular();
begin
	superficie := 4*PI*sqr(radio);
	area := PI*radio*radio;
end;

begin
	writeln('ingrese el radio de la esfera: ');
	read(radio);
	calcular();
	writeln('superficie = ', superficie);
	writeln('area = ', area);
end.
