allDiferent :: Int -> Int -> Int -> Bool
allDiferent a b c = (a /= b) && (b /= c) && (a /= c)