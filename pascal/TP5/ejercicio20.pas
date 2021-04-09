program ejercicio20;
{
    escribir un programa que calcule la traza de una matriz cuadrada.
    la traza de una matriz cuadrada es la suma de los elementos de 
    su diagonal principal. la matriz dato se leera a razon de una fila
    por linea.
}
const orden = 2;

type 
    matriz = array [1 .. orden, 1 .. orden] of integer;

function calcularTraza(var m: matriz): integer;
var i, total: integer;
begin
    total := 0;
    for i := 1 to orden do
        total := total + m[i, i];

    calcularTraza := total;
end;

procedure llenarMatriz(var m: matriz);
begin
    m[1,1] := 1;
    m[1,2] := 2;
    m[2,1] := 3;
    m[2,2] := 4;
end;

procedure mostrarMatriz(var m: matriz);
var i, j: integer;
begin
    for i:= 1 to orden do
    begin
        write('| ');
        for j := 1 to orden do
        begin
        write(m[i,j], ' ');
        end;
        writeln('|');
    end;
end;

var m:matriz;
begin
    llenarMatriz(m);
    mostrarMatriz(m);
    writeln('traza = ', calcularTraza(m));
end.