-- funny :: Int -> Int -> Int -> Bool
-- funny x y z
--     | x > z = True
--     | x >= y = False
--     | otherwise = True

funny :: Int -> Int -> Int -> Bool
funny x y z = (x > z) || (x < y)