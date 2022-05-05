-- definir una funcion tal que, dados tres pares de enteros, debe devolver en
-- un cuarto par el menor y el mayor elemento de los pares dados. 
-- Por ejemplo para la entrada (2,4) (3,5) (4,1) la salida debe ser (1,5)
parMenMay :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int)
parMenMay (a,b) (c,d) (e,f)

    
minMax :: (Int,Int) -> (Int,Int)
minMax (a, b)
    | a > b = (b,a)
    | otherwise = (a,b)