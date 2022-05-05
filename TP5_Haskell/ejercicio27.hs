ej27 :: (Int, Int, Int) -> String
ej27 (a, b, c)
    | a > b = "ERROR"
    | a == b && m = show a
    | a < b && m = show a ++ " " ++ ej27 ((a+1), b, c)
    | a < b && not m = ej27 ((a+1), b, c)
    | otherwise = ""
    where m = mod a c == 0