
-- dada la definicion de la funcion
-- maxOcurr :: Int -> Int -> (Int, Int)
-- el cual retorna el máximo de dos números, junto con el número de veces
-- que aparece. Usando esta u otro funcion defina
-- maxOcurr :: Int -> Int -> Int -> (Int, Int)
-- que haga lo mismo pero con tres argumentos

maxOcurr :: Int -> Int -> (Int, Int)
maxOcurr a b
    | a == b = (a, 2)
    | a > b = (a, 1)
    | b > a = (b, 1)

maxOcurr :: Int -> Int -> Int -> (Int, Int)
maxOcurr a b c
    | a == b && b == c = (a, 3)


