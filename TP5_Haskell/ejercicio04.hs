cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales a b c
    | (a == b) && (b == c) = 3
    | (a == b) && not(b == c) = 2
    | not(b == c) && (a == c) = 2
    | not(a == b) && (b == c) = 2
    | otherwise = 0

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos a b
    | a == b = 2
    | otherwise = 0

