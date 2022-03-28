{
    Sabiendo que la relación entre temperaturas Celsius (C) y Fahrenheit (F) está dada por la
    fórmula C = 5/9 * (F-32), que un algoritmo muestre una tabla de equivalencia entre
    grados Celsius y Fahrenheit, para valores entre O° F y 200° F , con intervalos de 10°
}
program ejercicio13;
var c : single;
    i, f, ci : integer;

function fahrenheitACelcius(f : single): single;
begin
    fahrenheitACelcius := (5 / 9) * (f-32);
end;

begin
    for i := 0 to 20 do
    begin
        f := i * 10;
        c := fahrenheitACelcius(f);
        ci := round(c);
        writeln(f, 'ºF = ',ci , 'ºC');
    end;
end.