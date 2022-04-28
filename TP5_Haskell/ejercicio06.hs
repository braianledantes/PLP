nAnd :: Bool -> Bool -> Bool
nAnd x y
    | x == True && y == False = True
    | x == False && y == True = True
    | otherwise = False