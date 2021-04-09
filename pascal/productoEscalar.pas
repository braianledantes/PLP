PROGRAM productoEscalar;
CONST
    tamanio = 3;
VAR
    vector1, vector2: ARRAY [1..tamanio] OF INTEGER;
    i: INTEGER;
    resultado: INTEGER;
BEGIN
    writeLn('Ingrese primer vector: ');
    FOR i:= 1 TO tamanio DO
        readLn(vector1[i]);
    writeLn('Ingrese segundo vector: ');
    FOR i:= 1 TO tamanio DO
        readLn(vector2[i]);
    resultado := 0;
    FOR i:= 1 TO tamanio DO
        resultado := resultado + vector1[i] * vector2[i];
    writeLn ('Resultado ', resultado)
END.
