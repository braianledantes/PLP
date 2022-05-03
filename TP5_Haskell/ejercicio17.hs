-- dar una definicion para la funcion
-- factorialTable :: Int -> Int -> String
-- de forma que factorialTable m n tabule los valores de los factoriales
-- desde m hasta n inclusive. validar los datos de entrada.
factorialTable :: Int -> Int -> String
factorialTable m n
    | m == n = show (factorial m) ++ " "
    | n > m = (factorialTable m (n-1)) ++ " " ++ show (factorial n)
    | otherwise = "Entrada invalida"
    where
        factorial :: Int -> Int
        factorial x
            | x == 0 = 1
            | otherwise = x * factorial (x - 1)
