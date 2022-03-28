{
Dados dos vectores A y B, de N elementos cada uno, se desean calcular: el vector suma y
el producto escalar, definidos como:
a) vector suma: c(i) = a (i) + b (i)
b) producto escalar: p = ∑ a(i) × b(i)
}
program ejercicio19;
const
    max = 4;
type
    indiceVector = 1 .. max;
    Vector = array [indiceVector] of integer;
var
    A, B, vectorSuma: Vector;
    producto: integer;

function suma(a, b: Vector): Vector;
var
    i: integer;
    vectorResult: Vector;
begin
    for i in indiceVector do
        vectorResult[i] := a[i] + b[i];
    suma := vectorResult;
end;

function productoEscalar(a, b: Vector): integer;
var
    i, resultado: integer;
begin
    resultado := 0;
    for i in indiceVector do
        resultado := resultado + (a[i] * b[i]);
    productoEscalar := resultado;
end;

procedure llenarArreglos(var vector: Vector);
var 
    i: integer;
begin
    for i in indiceVector do
    begin
        write('Ingrese un valor nemérico:');
        readln(vector[i]);
    end;
end;

procedure mostrarArreglo(var vector: Vector);
var
    i : integer;
begin
    write('[');
    for i in indiceVector do
    begin
        if i <> max then
            write(vector[i], ', ')
        else
            write(vector[i]);
    end;
    writeln(']');
end;

begin
    writeln('Llenando A');
    llenarArreglos(A);

    writeln('Llenando B');
    llenarArreglos(B);

    vectorSuma := suma(A, B);
    write('A + B = ');
    mostrarArreglo(vectorSuma);

    producto := productoEscalar(A,B);
    writeln('A * B = ', producto);
end.