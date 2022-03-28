{
Escribir un subprograma que detecte en un string una operación que se desee realizar, ej:
“59 menos 30” y devuelva el correspondiente o un mensaje informando que no se puede
realizar la operación.
}
program ejercicio23;
var
    textoEntrada, operacion: string;

begin
    writeln('Ingrese la operacion (con menos, mas, por y dividido):');
    readln(operacion);


    //contienePalabra(textoEntrada, operacion);
    writeln(textoEntrada, ' = ', pos('menos', textoEntrada));
end.