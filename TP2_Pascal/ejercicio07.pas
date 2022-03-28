{imprimir por pantalla una lista de 20 números consecutivos, los cuales comienzan con un número ingresado por teclado.}
program ejercicio7;
var n:integer;

procedure imprimirNumeros(n : integer);
var i: integer;
begin
    for i := 1 to 20 do
    begin
        n := n + 1;
        write(n, ', ');
    end;
end;

begin
    writeln('inserte un numero...');
    read(n);
    imprimirNumeros(n);
end.
