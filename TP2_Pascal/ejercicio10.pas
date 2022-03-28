{Leer A y B, enteros. Calcular C = A * B mediante sumas sucesivas e imprimir el resultado}
program ejercicio10;
var a,b,c:integer;

function sumasSucesivas(a,b : integer) : integer;
var i, result: integer;
begin
    result := 0;
    for i := 1 to b do
        result := result + a;
    
    sumasSucesivas := result;
end;

begin
    write('introduzca un numero a: ');
    readln(a);
    write('introduzca un número b: ');
    read(b);
    c := sumasSucesivas(a,b);
    writeln(a,' * ',b,' = ',c);
end.