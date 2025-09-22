CREATE DATABASE DML2_5;

USE DML2_5;

CREATE TABLE Professores (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    titulacao VARCHAR(60) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Turmas (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    professor_id INT,
    semestre VARCHAR(10) NOT NULL,
    turno VARCHAR(15) NOT NULL,
    FOREIGN KEY (professor_id)
        REFERENCES Professores (id)
);
CREATE TABLE Alunos (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE
); 

CREATE TABLE Matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    aluno_id INT,
    turma_id INT,
    data_matricula DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (aluno_id)
        REFERENCES Alunos (id),
    FOREIGN KEY (turma_id)
        REFERENCES Turmas (id)
);

INSERT INTO Professores (nome, titulacao, email, telefone) VALUES ('Fabrício Ferreira', 'Mestre', 'fabricinho@gmail.com', '(51) 980864357');
INSERT INTO Professores (nome, titulacao, email, telefone) VALUES ('Luciana Alves', 'Mestre', 'lucialves@gmail.com', '(51) 994587634');

INSERT INTO Turmas (professor_id, semestre, turno) VALUES (1, 'Primeiro', 'Noturno'); 
INSERT INTO Turmas (professor_id, semestre, turno) VALUES (2, 'Segundo', 'Diurno'); 
INSERT INTO Turmas (professor_id, semestre, turno) VALUES (1, 'Primeiro', 'Diurno'); 

UPDATE Turmas
SET semestre = 'Segundo'
WHERE id = 3;

DELETE FROM Turmas 
WHERE id = 2;