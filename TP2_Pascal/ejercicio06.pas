{Escriba un programa que lea dos números y luego permita introducir una opción, que
puede ser suma, resta, multiplicación o división. A partir de estas entradas, según la
opción elegida realizar el cálculo.}
program ejercicio6;

var n1, n2, result : integer;
    opcion : char;

begin
    writeln('introduzca un número...');
    readln(n1);
    writeln('introduzca otro número...');
    readln(n2);
    
    writeln('introduzca una opción: sumar(s), restar(r), multiplicar(m), dividir(d)');
    read(opcion);

    case opcion of
        's' : result := n1 + n2;
        'r' : result := n1 - n2;
        'm' : result := n1 * n2;
        'd' : result := n1 div n2;
        else
            writeln(opcion , ' es una opcion inválida!');
    end;

    writeln('resultado: ', result);
end.