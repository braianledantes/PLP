-- Definir una funcion minMax la cual retorne el mínimo y el máximo de una tupla.
minMax :: (Int,Int) -> (Int,Int)
minMax (a, b)
    | a > b = (b,a)
    | otherwise = (a,b)
