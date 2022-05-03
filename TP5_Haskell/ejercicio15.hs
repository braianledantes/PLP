-- defina una funcion
-- duplicar :: String -> Int -> String
-- la cual tome un String y un numero natural n.
-- el resultado son n copias de un String concatenado.
-- (si n = 0 debe devolver un String vacio)
duplicar :: String -> Int -> String
duplicar s n
    | n == 0 = ""
    | otherwise = s ++ duplicar s (n-1)