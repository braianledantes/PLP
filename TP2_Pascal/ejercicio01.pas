{Realizar una traza del siguiente programa que permite mostrar los valores que van
tomando las variables durante su ejecución}
PROGRAM Traza;
VAR a, b, c, d, s: integer;
   FUNCTION alfa(e : Integer; var f : integer): integer;
   BEGIN
      e := 1;
      f := 2;
      writeln('e = ', e, ', f = ', f);
      alfa := e + f;
   END;
BEGIN
   b := 10;
   c := 20;
   d := b + c;
   a := alfa(b, c);
   s := b + c;

   writeln('b=',b);
   writeln('c=',c);
   writeln('d=',d);
   writeln('a=',a);
   writeln('s=',s);
END.
