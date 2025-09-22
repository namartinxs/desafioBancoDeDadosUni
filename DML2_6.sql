CREATE DATABASE DML2_6;

USE DML2_6;

CREATE TABLE Hospitais (
	id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    cidade VARCHAR(120) NOT NULL
);

CREATE TABLE Pacientes (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    dataNascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    id_hospital INT,
    FOREIGN KEY (id_hospital) REFERENCES Hospitais (id)
); 

INSERT INTO Hospitais (nome, email, telefone, cidade) VALUES ('Hospital Mãe de Deus', 'maededeushospital@gmail.com', '(51) 998675432', 'Porto Alegre');

INSERT INTO Pacientes (nome, cpf, dataNascimento, telefone, id_hospital) VALUES ('Patrícia Ramos', '98765456-87', DATE '2001-07-23', '(51) 996567843', 1);
INSERT INTO Pacientes (nome, cpf, dataNascimento, telefone, id_hospital) VALUES ('Antônio Rodrigues', '89765423-91', DATE '1976-09-12', '(51) 998763456', 1);
INSERT INTO Pacientes (nome, cpf, dataNascimento, telefone, id_hospital) VALUES ('Isabela Carvalho', '67478095-09', DATE '1995-10-30', '(51) 967890965', 1);
INSERT INTO Pacientes (nome, cpf, dataNascimento, telefone, id_hospital) VALUES ('Marcelo Cristiano', '76545980-87', DATE '1985-02-21', '(51) 989875467', NULL);

UPDATE Hospitais 
SET cidade = 'Gravataí'
WHERE id = 1;

DELETE FROM Pacientes 
WHERE
    id_hospital IS NULL;