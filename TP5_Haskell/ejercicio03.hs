losCuadradosIguales :: Int -> Int -> Int -> Int -> Int -> Int -> Bool
losCuadradosIguales x y n m a b = allEqual (x^y) (n^m) (a^b)

allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)