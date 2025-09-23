CREATE DATABASE DDL02_04;

USE DDL02_04;

CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120),
    carga_horaria INT
);

CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120),
    id_curso INT,
    FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso)
);