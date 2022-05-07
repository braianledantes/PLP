linea :: Int -> String
linea n
    | n == 0 = "0"
    | esPar = linea (n-1) ++ show n
    | not esPar = linea (n-1) ++ "*"
    | otherwise = "ERROR LINEA"
    where
        esPar = (mod n 2) == 0

piramSinNones :: Int -> String
piramSinNones n
    | n == 0 = "0\n"
    | n > 0 = piramIzq (n-1) ++ "\n" ++ linea n ++ "\n" ++ piramDer (n-1) ++ "\n"
    | n < 0 = "ERROR"

piramIzq :: Int -> String
piramIzq n
    | n == 0 = linea n
    | n > 0 = piramIzq (n-1) ++ "\n" ++ linea n
    | otherwise = "ERROR PIRAM IZQ"

piramDer :: Int -> String
piramDer n
    | n == 0 = linea n
    | n > 0 = linea n ++ "\n"  ++ piramDer (n-1)  
    | otherwise = "ERROR PIRAM DER"