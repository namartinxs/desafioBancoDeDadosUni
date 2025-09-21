CREATE DATABASE DDL02_05;

USE DDL02_05;

CREATE TABLE Professores (
	id_professor INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    titulacao VARCHAR(60) NOT NULL
);

CREATE TABLE Turmas (
	id_turma INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    semestre VARCHAR(10) NOT NULL,
    turno VARCHAR(15) NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);
