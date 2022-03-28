{
Contar la cantidad de letras de un telegrama que termina en punto (los textos se leen letra
por letra). Modifique el algoritmo para contar la cantidad de palabras.
}
program ejercicio14;
var 
    t: string;
    letras, separadorDePalabras: set of char;

function contarLetras(var telegrama : string): integer;
var i, cantLetras: integer;
begin
    cantLetras := 0;
    for i := 1 to length(telegrama) do
    begin
        if telegrama[i] in letras then
            cantLetras := cantLetras + 1;
    end;
    contarLetras := cantLetras;
end;

function contarPalabras(var telegrama : string): integer;
var i, inicio, cantPalabras: integer;
begin
    cantPalabras := 0;
    inicio := 0;
    for i := 1 to length(telegrama) do
    begin
        if telegrama[i] in separadorDePalabras then
        begin
            cantPalabras := cantPalabras + 1;
        end;
    end;
        
    contarPalabras := cantPalabras;
end;

function terminaConPunto(var telegrama : string): boolean;
var longitud: integer;
begin
    longitud := length(telegrama);
    terminaConPunto := telegrama[longitud] = '.';
end;

begin
    letras := ['a' .. 'z', 'A' .. 'Z'];
    separadorDePalabras := [' ', ',', '.', ':', ';'];

    repeat
        writeln('Ingrese un telegrama terminado en punto...');
        readln(t);
    until (terminaConPunto(t));

    writeln('El telegrama tiene ', contarLetras(t), ' letras.');
    writeln('El telegrama tiene ', contarPalabras(t), ' palabras.');
end.