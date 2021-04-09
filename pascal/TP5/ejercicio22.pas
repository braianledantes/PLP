program ejercicio22;
{
    escribir un procedimiento que ordene algabeticamente
    una lista de n nombres ingresados por teclado.
}
const n = 14;

type 
    tipoArreglo = string;
    arregloPalabras = array [1 .. n] of tipoArreglo;

procedure ordenarQuick(var arr: arregloPalabras; izq, der : integer);
var pivote, aux: tipoArreglo;
    i, j: integer;
begin
    pivote := arr[izq];
    i := izq;
    j := der;

    while i < j do 
    begin
        while (arr[i] <= pivote) and (i < j) do 
        begin
            i := i + 1;
        end;
        while arr[j] > pivote do 
        begin
            j := j + 1;
        end;

        if i < j then
        begin
            aux := arr[i];
            arr[i] := arr[j];
            arr[j] := aux;
        end;
    end;
    arr[izq] := arr[j];
    arr[j] := pivote;
    if izq < (j - 1) then
        ordenarQuick(arr, izq, j - 1);
    if (j + 1) < der then
        ordenarQuick(arr, j + 1, der);
end;

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

procedure ordenar(var arr: arregloPalabras);
begin
    ordenarBorbuja(arr);
end;

procedure mostrarPalabras(var a: arregloPalabras);
var i: integer;
begin
    for i := 1 to n do
        writeln(a[i]);
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

