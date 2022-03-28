{a partir de un procedimiento denotado intercambio(x,y), intercambie sus valores}
program ejercicio8;
var a,b:integer;

procedure intercabio(var x,y : integer);
var aux: integer;
begin
    aux := x;
    x := y;
    y := aux;
end;

begin
    writeln('inserte el numero a...');
    read(a);
    writeln('inserte el numero b...');
    read(b);

    intercabio(a,b);
    writeln('a = ', a, ' y b = ', b);
end.