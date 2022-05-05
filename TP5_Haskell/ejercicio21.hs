-- dar la definicion para la siguiente funcion
-- ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
-- la cual ordena los tres elementos en orden asendente.
ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple (a, b, c)
    | (a <= b) && (b <= c) = (a, b, c)
    | (a > b) = ordenTriple (b, a, c)
    | (b > c) = ordenTriple (a, c, b)
    | (a > c) = ordenTriple (c, b, a)