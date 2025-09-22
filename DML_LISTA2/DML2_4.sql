CREATE DATABASE DML2_4;

USE DML2_4;

CREATE TABLE Cursos (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL,
    modalidade VARCHAR(30) NOT NULL,
    ativo BOOLEAN NOT NULL
);

CREATE TABLE Disciplinas (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL,
    ementa TEXT NOT NULL,
    periodo VARCHAR(20) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos (id)
);

INSERT INTO Cursos (nome, carga_horaria, modalidade, ativo) VALUES ('Ciência de Dados', 2400, 'Presencial', TRUE);
INSERT INTO Cursos (nome, carga_horaria, modalidade, ativo) VALUES ('Adminstração', 2400, 'Remoto', FALSE);

INSERT INTO Disciplinas (nome, carga_horaria, ementa, periodo, id_curso) VALUES ('Banco de Dados', 40, 'Fundamentos, o design, a implementação e a manipulação de sistemas de armazenamento de dados', 'Noturno', 1);
INSERT INTO Disciplinas (nome, carga_horaria, ementa, periodo, id_curso) VALUES ('Estatística', 30, 'Fornece métodos para coletar, organizar, analisar e interpretar dados', 'Noturno', 1);
INSERT INTO Disciplinas (nome, carga_horaria, ementa, periodo) VALUES ('Programação', 30, ' fundamentos do projeto, modelagem e manipulação de dados utilizando a linguagem SQL e sistemas gerenciadores de banco de dados (SGBDs) relacionais', 'Noturno');

UPDATE Disciplinas
SET carga_horaria = 40
WHERE id = 2;

DELETE FROM Disciplinas 
WHERE id = 3;