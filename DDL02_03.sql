CREATE DATABASE DDL02_03;

USE DDL02_03;

CREATE TABLE Departamentos(
	id_departamento INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    sigla CHAR(5) UNIQUE NOT NULL
);

CREATE TABLE Funcionarios(
	id_funcionarios INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100),
    cargo VARCHAR(60),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);