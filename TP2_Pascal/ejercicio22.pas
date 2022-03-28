{
Escribir un procedimiento que ordene alfabéticamente una lista de N nombres ingresados
por teclado
}
program ejercicio22;
const n = 14;

type 
    tipoArreglo = string;
    arregloPalabras = array [1 .. n] of tipoArreglo;

procedure ordenarBorbuja(var arr: arregloPalabras);
var i, j: integer;
    aux: tipoArreglo;
begin
    for i := 1 to n do
    begin
        for j := 1 to n - i do
            if arr[j] > arr[j + 1] then
            begin
                aux := arr[j];
                arr[j] := arr[j + 1];
                arr[j + 1] := aux;
            end;
    end;
end;

procedure mostrarPalabras(var a: arregloPalabras);
var i: integer;
begin
    for i := 1 to n do
        writeln(a[i]);
end;

procedure ordenar(var arr: arregloPalabras);
begin
    ordenarBorbuja(arr);
end;

var palabras: arregloPalabras = 
    ('escribir', 'un', 'procedimiento', 
    'que', 'ordene', 'algabeticamente',
    'una', 'lista', 'de', 'n', 'nombres',
    'ingresados', 'por', 'teclado');
begin
    ordenar(palabras);
    mostrarPalabras(palabras);
end.