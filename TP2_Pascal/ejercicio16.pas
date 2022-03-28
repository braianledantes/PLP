{ A partir de una función booleana, devolver las raíces reales de un polinomio de segundo
grado y además indique si tiene o no raíces reales. }
program ejercicio16;
var a, b, c, x1, x2 : real;

function baskara(a, b, c : real; raiz1 : boolean): real;
begin
    if (sqr(b)-(4*a*c)) > 0 then
    begin
        if raiz1 then
            baskara := ((-b) + sqrt((b*b)-(4*a*c)))/(2*a)
        else
            baskara := ((-b) - sqrt((b*b)-(4*a*c)))/(2*a);
    end 
    else
        baskara := 984756153132.161654646; { representando como que no tiene raices reales }
end; 

begin
    writeln('Sea un polinomio ax^2 + bx + c ingrese sus valores');
    writeln('Ingrese el valor de a:');
    read(a);
    writeln('Ingrese el valor de a:');
    read(b);
    writeln('Ingrese el valor de a:');
    read(c);

    x1 := baskara(a,b,c,true);
    x2 := baskara(a,b,c,false);
    writeln('Raiz x1 = ', x1);
    writeln('Raiz x2 = ', x2);
    writeln('p(x) = (x - ', x1,')(x - ', x2,')');
end.