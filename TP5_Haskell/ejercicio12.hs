-- Definir una funcion tal que dado un Char que contenga un digito,
-- devuelva el valor numerico de dicho digito.
toDigito :: Char -> Int
toDigito c 
    | c == '0' = 0
    | c == '1' = 1
    | c == '2' = 2
    | c == '3' = 3
    | c == '4' = 4
    | c == '5' = 5
    | c == '6' = 6
    | c == '7' = 7
    | c == '8' = 8
    | c == '9' = 9
    | otherwise = -1