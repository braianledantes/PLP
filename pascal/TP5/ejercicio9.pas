PROGRAM ejercicio9;
{ Leer una serie de números reales, terminando la serie con un cero. A continuacón debe
imprimir los datos a medida que se los ingresa junto con la suma parcial de los mismos.}
VAR num, cont: REAL;

BEGIN
    cont := 0;
    writeln('ingrese numeros reales, cero para terminar:');
    REPEAT
        read(num);
        cont := cont + num;
        writeln('num = ', num, ' cont = ', cont);
    UNTIL (num = 0);
END.