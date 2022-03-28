{
    Escribir un procedimiento o función que, dada una palabra, determine si es capicúa
}
program ejercicio21;
var
    palabra: string;

function esCapicua(palabra: string): boolean;
var
    i, longitud, limite: integer;
    es: boolean;
begin
    longitud := length(palabra);
    limite := longitud div 2;
    i := 1;
    es := true;

    while(i <= limite) do
    begin
        if palabra[i] <> palabra[longitud - i + 1] then
        begin
            es := false;
            break;
        end;
        i := i + 1;
    end;

    esCapicua := es;
end;

begin
    write('Ingrese una palabra: ');
    readln(palabra);
    writeln('es capicua? ', esCapicua(palabra));
end.