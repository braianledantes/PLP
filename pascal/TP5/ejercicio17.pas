program ejercicio17;
{ Desarrollar un procedimiento que devuelva en un vector los numeros primos entre 2 y 200 }
const max = 200;
var arrPrimos: array [1 .. max] of integer;

function esPrimo(numero: integer):boolean;
var i: integer;
    p: boolean;
begin
    p := true;
    i := 2;
    while (i < numero) and (p = true) DO
    begin
        p := numero mod i <> 0;
        i := i + 1;
    end;   

    esPrimo := p;
end;

procedure primos();
var i, posUltimo: integer;
begin
    posUltimo := 0;
    for i := 2 to max do
    begin
        if esPrimo(i) then 
        begin
            posUltimo := posUltimo + 1;
            arrPrimos[posUltimo] := i;
        end;
    end;
end;

procedure mostrarPrimos();
var i: integer;
begin
    i := 1;
    while (i < max) and (arrPrimos[i] <> 0) do
    begin
        write(arrPrimos[i], ', ');
        i := i + 1;
    end;
end;

begin
    primos();
    mostrarPrimos();
end.