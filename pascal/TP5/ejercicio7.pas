PROGRAM ejercicio7;
{imprimir por pantalla una lista de 20 numeros consecutivos,
los cuales comienzan con un numero ingresado por teclado.}
CONST tamanio = 3;

TYPE tipoVector = ARRAY [1 .. tamanio] OF INTEGER; 

VAR i: INTEGER;
VAR vector1: tipoVector;

PROCEDURE mostrarArreglo(arr : tipoVector);
VAR j: INTEGER;
BEGIN
    write('[ ');
    FOR j := 1 TO tamanio DO
    BEGIN
        write(arr[j], ', ');
    END;

    writeln(']');
END;

BEGIN
    writeLn('Ingrese el arreglo: ');
    FOR i:= 1 TO tamanio DO
        readLn(vector1[i]);
    
    mostrarArreglo(vector1)

END.