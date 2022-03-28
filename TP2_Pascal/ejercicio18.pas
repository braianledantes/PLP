{
Dada la siguiente definición:
    Type
        TipoIndiceConjuntos = 1 .. 256 ;
        Conj = array [TipoIndiceConjuntos] of boolean ;

y considerando que se implementan conjuntos con la estructura de datos arreglos,
implementar como subprogramas separados las operaciones unión, intersección y
diferencia entre dos conjuntos A y B. Muestre corridas.
}
program ejercicio18;
const
    max = 4;

Type
    TipoIndiceConjuntos = 1 .. 256 ;
    Conj = array [TipoIndiceConjuntos] of boolean;

var
    A, B, R : Conj;

procedure llenarArreglos();
var 
    i, j, valor: integer;
begin
    writeln('Llenando A');
    for i := 1 to max do
    begin
        write('Ingrese un valor (1/0):');
        readln(valor);
        case valor of
            1: A[i] := true;
            0: A[i] := false;
        else
            A[i] := false;
        end;
    end;

    writeln('Llenando B');
    for j := 1 to max do
    begin
        write('Ingrese un valor (1/0):');
        readln(valor);
        case valor of
            1: B[j] := true;
            0: B[j] := false;
        else
            B[j] := false; 
        end;
    end;
end;

procedure mostrarArreglo(var arr: Conj; nombreArr : string);
var
    i : integer;
begin
    write(nombreArr, ' = [');
    for i := 1 to max do
    begin
        if i <> max then
            write(arr[i], ', ')
        else
            write(arr[i]);
    end;
    writeln(']');
end;

function union(A, B : Conj): Conj;
var
    i : integer;
    arrResul : Conj;
begin
    for i in TipoIndiceConjuntos do
    begin
        arrResul[i] := A[i] or B[i];
    end;
    union := arrResul;
end;

function interseccion(A, B : Conj): Conj;
var
    i : integer;
    arrResul : Conj;
begin
    for i in TipoIndiceConjuntos do
    begin
        arrResul[i] := A[i] and B[i];
    end;
    interseccion := arrResul;
end;

function diferencia(A, B : Conj): Conj;
var
    i : integer;
    arrResul : Conj;
begin
    for i in TipoIndiceConjuntos do
    begin
        if B[i] = true then
            arrResul[i] := false
        else 
            arrResul[i] := A[i];
    end;
    diferencia := arrResul;
end;

begin
    llenarArreglos();
    mostrarArreglo(A, 'A');
    mostrarArreglo(B, 'B');

    write('A U B = ');
    R := union(A, B);
    mostrarArreglo(R, 'R');

    write('A * B = ');
    R := interseccion(A, B);
    mostrarArreglo(R, 'R');

    write('A - B = ');
    R := diferencia(A, B);
    mostrarArreglo(R, 'R');
end.