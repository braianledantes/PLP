-- 1532

-- 1
-- 55555
-- 333
-- 22


linea :: Int -> Int -> String
linea n 0 = ""
linea n 1 = show n
linea n m = show n ++ linea n (m - 1)

ej24 :: Int -> String
ej24 n
    | n < 10 = linea n n
    | n > 10 = ej24 (div n 10) ++ "\n" ++ linea m m
    | otherwise = ""
    where
        m = mod n 10