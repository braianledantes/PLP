{
Escribir un programa que calcule la traza de una matriz cuadrada. La traza de una matriz
es la suma de los elementos de su diagonal principal. La matriz dato se leerá a razón de
una fila por línea.
}
program ejercicio20;
const
    max = 4;
type
    indice = 1 .. max;
    Matriz = array [indice, indice] of integer;
var 
    m: Matriz;

function traza(var m : Matriz): integer;
var
    i, resultado: integer;
begin
    resultado := 0;
    for i in indice do
        resultado := resultado + m[i, i];
    traza := resultado;
end;

procedure llenarMatriz(var m: Matriz);
var
    i, j, num: integer;
begin
    writeln('Ingrese los valores de la matriz');
    for i in indice do
    begin
        for j in indice do
        begin
            write('m[',i,',',j,'] = ');
            readln(num);
            m[i,j] := num;
        end;
    end;
end;

procedure mostrarMatriz(var m: Matriz);
var
    i, j: integer;
begin
    for i in indice do
    begin
        write('[');
        for j in indice do
            write(m[i,j], ', ');
        writeln(']');
    end;
end;


begin
    llenarMatriz(m);
    mostrarMatriz(m);
    writeln('Traza de m = ', traza(m));
end.
