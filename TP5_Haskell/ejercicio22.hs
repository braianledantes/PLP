-- Utilizando las definiciones de tipos (type) definir estructuras de datas
-- convenientes para:
-- a) un directorio telefónico
-- b) una base de datos de libros (teniendo en cuenta autores y editores)

type Telefono = String

type Nombre = String
type Apellido = String
type Edad = Int
type Idautor = Int
type Ideditor = Int

type Autor = (Idautor, Nombre, Apellido, Edad)
type Editor = (Ideditor, Nombre)
type Libro = (Autor, Editor)

