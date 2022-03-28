{Dado el radio R de una esferea, escriba un programa que permita calcular e imprimir su 
superficie y volumen. Utilice solo un procedimiento para realizar todos estos cálculos.
justifique la eleccion entre usar una funcion o un procedimiento}
program calcularSuperficieYVolumen;
var radio, superficie, volumen : double;
procedure calcularSuperficie();
begin
	superficie:= 4*PI* sqr(radio);
end;
procedure calcularVolumen();
begin
	volumen:= (4*PI*radio*radio*radio)/3;
end;
begin
	writeln('inserte el radio de la esfera:');
	read(radio);
	calcularSuperficie();
	calcularVolumen();
	writeln('la superfice de la esfera es: ', superficie);
	writeln('el volumen de la esfera es: ', volumen);
end.
