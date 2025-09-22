CREATE DATABASE DML2_3;

USE DML2_3;

CREATE TABLE Departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    codigo CHAR(5) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    centro_custo VARCHAR(20) NOT NULL,
    ativo BOOLEAN NOT NULL
);

CREATE TABLE Funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    cargo VARCHAR(60) NOT NULL,
    salario DECIMAL(10 , 2 ) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos (id)
);  

INSERT INTO Departamentos (codigo, nome, centro_custo, ativo) VALUES ('DEP01', 'Financeiro', 'CC001', TRUE);
INSERT INTO Departamentos (codigo, nome, centro_custo, ativo) VALUES ('DEP02', 'Administrativo', 'CC002', TRUE);
 
INSERT INTO Funcionarios ( nome, cpf, cargo, salario, id_departamento) VALUES ('Fernando Fonseca', '12345678901', 'Analista', 3400.00, 1);
INSERT INTO Funcionarios ( nome, cpf, cargo, salario, id_departamento) VALUES ('Larissa Santos', '01289352567', 'Contadora', 4200.00, 1);
INSERT INTO Funcionarios ( nome, cpf, cargo, salario, id_departamento) VALUES ('Henrique de Albuquerque', '00284982567', 'Assistente', 2110.00, 1);
INSERT INTO Funcionarios ( nome, cpf, cargo, salario, id_departamento) VALUES ('Alice Pereira', '87348906436', 'Gerente', 6499.00, 1);

UPDATE Funcionarios 
SET cargo = 'Diretor Financeiro'
WHERE id = 4;

DELETE FROM Departamentos 
WHERE id = 2
AND id NOT IN ( SELECT DISTINCT id_departamento FROM Funcionarios);
