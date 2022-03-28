{A partir de una función denominada expo, con los parámetros x y n devuelva el valor de x
elevado a la n, donde x es un número real y n entero}
program ejercicio11;
var x : real;
    n : integer;

function expo(x : real; n : integer): real;
var i: integer;
    result : real;
begin
    if n <= 0 then
        expo := 1.0
    else if n = 1 then
        expo := x
    else begin
        result := x;
        for i := 2 to n do
            result := result * x;
    end;
    expo := result        
end;

begin
    write('introduzca un numero base: ');
    readln(x);
    write('introduzca un número exponente: ');
    read(n);
    writeln(x,' ^ ',n,' = ', expo(x,n));
end.