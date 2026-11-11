
INSERT INTO Autores (Nombre_Autor) VALUES
    ('Piedad Bonnett'),
    ('Isabel Allende'),
    ('George Orwell');

INSERT INTO Editores (Nombre_Editor) VALUES
    ('Penguin Random House'),
    ('Editorial Planeta');

INSERT INTO Libros (Titulo_Libro, ID_Autor, ID_Editor) VALUES
    ('Lo que no tiene nombre', 1, 1),
    ('Para otros es el cielo', 1, 2),
    ('La casa de los espíritus', 2, 1),
    ('Eva Luna', 2, 2),
    ('1984', 3, 1),
    ('Rebelión en la granja', 3, 2);
SELECT L.Titulo_Libro, A.Nombre_Autor, E.Nombre_Editor
FROM Libros AS L
INNER JOIN Autores AS A ON L.ID_Autor = A.ID_Autor
INNER JOIN Editores AS E ON L.ID_Editor = E.ID_Editor;