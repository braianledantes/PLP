fib :: Int -> Int
fib x
    | x == 0 = 0
    | x == 1 = 1
    | otherwise = fib(x - 1) + fib(x - 2)
factorial :: Int -> Int
factorial x
    | x == 0 = 1
    | otherwise = x * factorial (x - 1)
sumatoria :: Int -> Int -> Int
sumatoria i n
    | i == 1 = 1^n
    | otherwise = (i^n) + (sumatoria (i-1) n)
sucesion :: Int -> Int -> Double
sucesion x n = (fromIntegral (sumatoria n n)) / (fromIntegral (factorial x))