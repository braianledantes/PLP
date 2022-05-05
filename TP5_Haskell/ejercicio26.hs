esBisiesto :: Int -> String
esBisiesto x 
    | (((mod x 4) == 0) && not ((mod x 100) == 0)) || (((mod x 100) == 0) && ((mod x 400) == 0)) 
    = "bisiesto" 
    | otherwise = "no bisiesto"

rangoBisiesto :: Int -> Int -> String
rangoBisiesto x y
    | x > y = "Error de rango"
    | x == y = (show x) ++ "  " ++ (esBisiesto x)
    | x < y = (rangoBisiesto x (y-1)) ++ "\n" ++ (show y) ++ "  " ++ (esBisiesto y)