PROGRAM ejercicio11;
{A partir de una función denominada expo, con los parámetros x y n devuelva el valor de x
elevado a la n, donde x es un número real y n entero}

function expo(x: real; n: integer):real;
var i: integer;
    result: real;
begin
    result := 1;
    if n = 0 then begin
        result := 1;
    end
    else if n > 0 then begin
        for i := 1 to n do
            result := result * x;
        result := result;
    end
    else begin 
        n:= -n;
        for i := 1 to n do
            result := result * x;
        result := 1/result;
    end;
    expo := result;
end;

var b: integer;
    a, c: real;
BEGIN
    write('Ingrese la base: ');
    readLn(a);
    write('Ingrese el exponente: ');
    readLn(b);

    c := expo(a,b);
    write(a,'^',b,' = ', c);
END.