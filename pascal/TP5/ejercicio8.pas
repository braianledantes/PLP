PROGRAM ejercicio8;
{A partir de un procedimiento denominado intercambio(x,y),
 intercambie sus valores}
TYPE tipo = INTEGER;
VAR a, b : tipo;

PROCEDURE intercambio(VAR x, y : tipo);
VAR z : tipo;
BEGIN
   z := x;
   x := y;
   y := z;
END;

BEGIN
    write('Ingrese el valor de a: ');
    readLn(a);
    write('Ingrese el valor de b: ');
    readLn(b);

    writeln('a = ', a,', b = ', b);
    writeln('intercambio...');
    intercambio(a, b);
    writeln('a = ', a,', b = ', b);
END.