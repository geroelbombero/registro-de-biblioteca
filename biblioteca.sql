DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE Autores (
    ID_Autor INT NOT NULL AUTO_INCREMENT,
    Nombre_Autor VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Autor)
);

CREATE TABLE Editores (
    ID_Editor INT NOT NULL AUTO_INCREMENT,
    Nombre_Editor VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Editor)
);

CREATE TABLE Libros (
    ID_Libro INT NOT NULL AUTO_INCREMENT,
    Titulo_Libro VARCHAR(100) NOT NULL,
    ID_Autor INT NOT NULL,
    ID_Editor INT NOT NULL,
    PRIMARY KEY (ID_Libro),
    CONSTRAINT fk_libros_autores
        FOREIGN KEY (ID_Autor) REFERENCES Autores (ID_Autor)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT fk_libros_editores
    FOREIGN KEY (ID_Editor) REFERENCES Editores (ID_Editor)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
); 
