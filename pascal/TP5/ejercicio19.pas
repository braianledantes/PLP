program ejercicio19;
{
    dados dos vectores a y b, ne n elementos cada uno, se desean calcular: el vector suma y el producto escalar, definidos como:
    a) vector suma: c(i) = a(i) + b(i)
    b) producto escalar p = sumatoria( a(i) x b(i))
}

const max = 4;

type tipoConj = array [1 .. max] of integer;

function vectorSuma(var a, b: tipoConj): tipoConj;
var c: tipoConj;
    i: integer;
begin
    for i := 1 to max do
        c[i] := a[i] + b[i];

    vectorSuma := c;
end;

function productoEscalar(var a, b: tipoConj): integer;
var resultado, i: integer;
begin
    resultado := 0;
    for i := 1 to max do
        resultado := resultado + (a[i] * b[i]);
    productoEscalar := resultado;
end;

procedure llenarArreglo(var arr: tipoConj);
var i: integer;
begin
    writeln('ingrese valores numericos para el arreglo:');
    for i := 1 to max do
    begin
        readLn(arr[i]);
    end;
end;

procedure mostarArreglo(var arr: tipoConj);
var i: integer;
begin
    write('[ ');
    for i := 1 to max do
        write(arr[i], ', ');
    writeln(']');
end;

var a,b,c: tipoConj;
    pe: integer;
begin
    llenarArreglo(a);
    llenarArreglo(b);
    c := vectorSuma(a,b);
    pe := productoEscalar(a,b);

    write('a = ');
    mostarArreglo(a);
    write('b = ');
    mostarArreglo(b);

    write('vector suma = ');
    mostarArreglo(C);
    writeln('productoEscalar = ', pe);
end.