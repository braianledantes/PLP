-- defina una funcion
-- digitoRomano :: Char -> String
-- la cual convierte un digito a su representación en números romanos.
digitoRomano :: Char -> String
digitoRomano c
    | c == '1' = "I"
    | c == '2' = "II"
    | c == '3' = "III"
    | c == '4' = "IV"
    | c == '5' = "V"
    | c == '6' = "VI"
    | c == '7' = "VII"
    | c == '8' = "VIII"
    | c == '9' = "IX"
    | otherwise = "Error: Caracter invalido"