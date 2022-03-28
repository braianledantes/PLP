{Leer una serie de números reales, terminando la serie con un cero. A continuacón debe
imprimir los datos a medida que se los ingresa junto con la suma parcial de los mismos}
program ejercicio9;

var n, total : integer;

begin
    total := 0;
    writeln('ingrese números, 0 para terminar...');
    repeat
        read(n);
        total := total + n;
        writeln('n = ', n, ', total = ', total);
    until (n = 0);
end.