CREATE DATABASE DDL02_06;

USE DDL02_06;

CREATE TABLE Hospitais (
	id_hospital INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    cidade VARCHAR(80) NOT NULL
);


CREATE TABLE Pacientes (
	id_paciente INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_hospital INT NOT NULL, 
    FOREIGN KEY (id_hospital) REFERENCES Hospitais(id_hospital)
);