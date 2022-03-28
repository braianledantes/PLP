{ Dado un texto terminado en punto, determinar cuál es la vocal que aparece con mayor
frecuencia. }
program ejercicio15;
var t: string;
    a, e, i, o, u: integer;

procedure contarVocales();
var j : integer;
begin
    a := 0;
    e := 0;
    i := 0;
    o := 0;
    u := 0;
    for j := 1 to length(t) do
    begin
        if (t[j] = 'a') or (t[j] = 'A') then
            a := a + 1
        else if (t[j] = 'e') or (t[j] = 'E') then
            e := e + 1
        else if (t[j] = 'i') or (t[j] = 'I') then
            i := i + 1
        else if (t[j] = 'o') or (t[j] = 'O') then
            o := o + 1
        else if (t[j] = 'u') or (t[j] = 'U') then
            u := u + 1
    end;
end;

function terminaConPunto(): boolean;
var longitud: integer;
begin
    longitud := length(t);
    terminaConPunto := t[longitud] = '.';
end;

begin
    repeat
        writeln('Ingrese un texto terminado en punto...');
        readln(t);
    until (terminaConPunto());

    contarVocales();

    writeln('El texto tiene ', a, ' aes.');
    writeln('El texto tiene ', e, ' ees.');
    writeln('El texto tiene ', i, ' ies.');
    writeln('El texto tiene ', o, ' os.');
    writeln('El texto tiene ', u, ' us.');
end.