-- defina una funcion
-- entreLineas :: String -> String -> String -> String
-- la cual tomo tre Strings y retorne un String que cuando se imprima muestre
-- los tres String en lineas separadas.
entreLineas :: String -> String -> String -> String
entreLineas a b c = a ++ "\n" ++ b ++ "\n" ++ c ++ "\n"
-- ejemplo:
-- putStr (entreLineas "hola" "como" "vas?")