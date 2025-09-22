CREATE DATABASE DML2_2;

USE DML2_2;

CREATE TABLE Autores (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    nacionalidade VARCHAR(60) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE Livros (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    isbn CHAR(13) UNIQUE UNIQUE NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(120) NOT NULL,
    ano INT NOT NULL,
    id_autor INT,
    FOREIGN KEY (id_autor)
        REFERENCES Autores (id)
);

INSERT INTO Autores (nome, nacionalidade, email, data_nascimento) VALUES ('Machado de Assis', 'Brasileiro', 'machadinho@gmail.com', DATE '1839-06-21');
INSERT INTO Autores (nome, nacionalidade, email, data_nascimento) VALUES ('Clarice Lispector', 'Brasileira', 'lispectorclarice@gmail.com', DATE '1920-12-10');
INSERT INTO Autores (nome, nacionalidade, email, data_nascimento) VALUES ('Jorge Amado', 'Brasileiro', 'jorgeamado@gmail.com', DATE '1912-08-10');

INSERT INTO Livros (isbn, titulo, autor, ano, id_autor) VALUES ('1234567890123', 'Capitães de Areia', 'Jorge Amado', 1937, 3);
INSERT INTO Livros (isbn, titulo, autor, ano, id_autor) VALUES ('0987654321324', 'Água Viva', 'Clarice Lispector', 1973, 2);
INSERT INTO Livros (isbn, titulo, autor, ano, id_autor) VALUES ('0123456789065', 'A Hora da Estrela', 'Clarice Lispector', 1977, 2);
INSERT INTO Livros (isbn, titulo, autor, ano, id_autor) VALUES ('9876543210984', 'Dom Casmurro', 'Machado de Assis', 1899, 1);
INSERT INTO Livros (isbn, titulo, autor, ano, id_autor) VALUES ('1234567891011', 'Quincas Borba', 'Machado de Assis', 1891, 1);

UPDATE Autores
SET nacionalidade = 'Ucraniana'
WHERE id = 2;

DELETE FROM Livros
WHERE id = 2;
