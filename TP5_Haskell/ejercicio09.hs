-- Mal, no verifica que n <> p
allDiferent :: Int -> Int -> Int -> Bool
allDiferent n m p = ((n /= m) && (m /= p))