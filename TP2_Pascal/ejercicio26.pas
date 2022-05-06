{ escribir un subprograma que permita calcular las operaciones de suma,
resta, multiplicacion y division de dos numeros complejos, expresados como registros }
program ejercicio26;
type 
    TipoComplejo = record
        ParteReal : real;
        ParteImaginaria : real;
    end;

var num1, num2, result : TipoComplejo;

function sumar(n, m : TipoComplejo) : TipoComplejo;
var resultado : TipoComplejo;
begin
    resultado.ParteReal := n.ParteReal + m.ParteReal;
    resultado.ParteImaginaria := n.ParteImaginaria + m.ParteImaginaria;
    sumar := resultado
end;

function resta(n, m : TipoComplejo) : TipoComplejo;
var resultado : TipoComplejo;
begin
    resultado.ParteReal := n.ParteReal - m.ParteReal;
    resultado.ParteImaginaria := n.ParteImaginaria - m.ParteImaginaria;
    resta := resultado
end;

function multiplicacion(n, m : TipoComplejo) : TipoComplejo;
var resultado : TipoComplejo;
begin
    resultado.ParteReal := (n.ParteReal * m.ParteReal) - (n.ParteImaginaria * m.ParteImaginaria);
    resultado.ParteImaginaria := (n.ParteReal * m.ParteImaginaria) + (n.ParteImaginaria * m.ParteReal);
    multiplicacion := resultado
end;

function division(n, m : TipoComplejo) : TipoComplejo;
var resultado : TipoComplejo;
    denominador : real;
begin
    denominador := sqr(m.ParteReal) + sqr(m.ParteImaginaria);
    
    resultado.ParteReal := ((n.ParteReal * m.ParteReal) + (n.ParteImaginaria * m.ParteImaginaria)) / denominador;
    resultado.ParteImaginaria := ((n.ParteImaginaria * m.ParteReal) - (n.ParteReal * m.ParteImaginaria)) / denominador;
    division := resultado
end;

begin

    num1.ParteReal := 2;
    num1.ParteImaginaria := 3;
    num2.ParteReal := 5;
    num2.ParteImaginaria := 2;

    result := sumar(num1, num2);
    writeln('suma: ',result.ParteReal, ' + ', result.ParteImaginaria,'i');
    result := resta(num1, num2);
    writeln('resta: ',result.ParteReal, ' + ', result.ParteImaginaria,'i');
    result := multiplicacion(num1, num2);
    writeln('mult: ',result.ParteReal, ' + ', result.ParteImaginaria,'i');
    result := division(num1, num2);
    writeln('div: ',result.ParteReal, ' + ', result.ParteImaginaria,'i')
end.