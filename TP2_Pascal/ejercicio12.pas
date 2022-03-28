{Que un algoritmo descomponga un número en sus factores primos}
program ejercicio12;
var numero: integer;

function esPrimo(n : integer) : boolean;
var i, limit: integer;
    result : boolean;
begin
    result := true;

    if n <= 1 then
        result := false
    else
    begin
        limit := trunc(sqrt(n));
        for i := 2 to limit do
        begin
            if (n mod i) = 0 then
            begin
                result := false;
                break;
            end;
        end;
    end;
    esPrimo := result;
end;

function siguientePrimo(p : integer) : integer;
begin
    repeat
        p := p + 1;   
    until esPrimo(p);
    siguientePrimo := p;
end;

procedure factorizar(numero : integer);
var primo, resto : integer;
begin
    write('factores de ', numero,' = [');
    primo := siguientePrimo(1);
    while (numero <> 1) and (numero > 0) do
    begin
        resto := numero mod primo;
        if resto = 0 then
            begin
                numero := numero div primo;
                write(primo,', ');
            end
        else 
            primo := siguientePrimo(primo);
    end;
    writeln(']');
end;

begin
    writeln('inserte un numero para factorizarlo: ');
    read(numero);
    factorizar(numero);
end.