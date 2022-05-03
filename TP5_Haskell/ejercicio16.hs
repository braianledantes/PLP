-- defina una funcion
-- hacerEspacios :: Int -> String
-- tal que hacerEspacios n devuelva un String de n espacios
hacerEspacios :: Int -> String
hacerEspacios n
    | n <= 0 = ""
    | otherwise = " " ++ hacerEspacios (n-1)