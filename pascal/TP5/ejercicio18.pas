program ejercicio18;
{
    dada la siguiente definicion:
    
        type
            tipoIndiceConjuntos = 1 .. 256;
            conj = arry [tipoIndiceConjuntos] of boolean;
    
    y considerando que se implementan conjuntos con la estructura de datos arreglos,
    implementar como subprogramas separados las operaciones de union, interseccion y
    diferencia entre conjuntos A y B. Muestre corridas.
}
const max = 4;

type
    tipoIndiceConjuntos = 1 .. max;
    conj = array [tipoIndiceConjuntos] of boolean;

function union(var a, b: conj):conj;
var c: conj;
    i: integer;
begin
    for i := 1 to max do
        c[i] := a[i] or b[i];  
    union := c;           
end;

function interseccion(var a, b: conj):conj;
var c: conj;
    i: integer;
begin
    for i := 1 to max do
        c[i] := a[i] and b[i];  
    interseccion := c;             
end;

function diferencia(var a, b: conj):conj;
var c: conj;
    i: integer;
begin
    for i := 1 to max do
    begin
        if b[i] = true then
            c[i] := false
        else
            c[i] := a[i]
    end;
 
    diferencia := c;            
end;

procedure limpar(var arr: conj);
var i: integer;
begin
    for i := 1 to max do
        arr[i] := false; 
end;

procedure llenarArreglo(var arr: conj);
var i, val: integer;
begin
    writeln('ingrese los valores para el arreglo: (1/0)');
    for i := 1 to max do
    begin
        readLn(val);
        case val of
            1: arr[i] := true;
            0: arr[i] := false;
        else
            arr[i] := true;
        end;
    end;
end;

procedure mostarArreglos(var a, b, c: conj; var operacion: ShortString);
var i: integer;
begin
    for i := 1 to max do
        writeln(a[i], ' ', operacion, ' ', b[i], ' -> ', c[i]); 
end;

var a,b,c : conj;
    i: integer;
begin
    
    llenarArreglo(a);
    llenarArreglo(b);
    
    mostarArreglos(a, b, union(a,b), 'or');
    writeln('-----------------------');
    mostarArreglos(a, b, interseccion(a,b), 'and');
    writeln('-----------------------');
    mostarArreglos(a, b, diferencia(a,b), '-');
end.