program ejercicio21;
{
    escribir un procedimiento o funcion que, dada una 
    palabra, determine si es capicua.
}
function esCapicua(var palabra: string):boolean;
var longitud, medio, i: integer;
    capicua: boolean;
begin
    capicua := true;
    {longitud := byte(palabra[0]); }
    longitud := lenght(palabra);
    medio := round(longitud / 2);
    {mas uno para poder hacer mejor el calculo}
    longitud := longitud + 1;

    i := 1;
    while capicua and (i < longitud) do 
    begin
        capicua := palabra[i] = palabra[longitud - i];
        i := i + 1;
    end;
    esCapicua := capicua;
end;

var palabra: string;
    leng: integer;
begin
    writeln('ingrese una palabra para saber si es capicua:');
    readLn(palabra);
    
    writeln('"', palabra, '"', 'es capicua? ', esCapicua(palabra));
end.