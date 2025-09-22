CREATE DATABASE DML2_9;

USE DML2_9;

CREATE TABLE Estados (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    sigla CHAR(2) UNIQUE NOT NULL,
    nome VARCHAR(60) NOT NULL,
    regiao VARCHAR(20) NOT NULL,
    ibge_codigo VARCHAR(10) NOT NULL
);
    
CREATE TABLE Cidades (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    estado_id INT,
    ibge_codigo VARCHAR(10) NOT NULL,
    populacao INT NOT NULL,
    FOREIGN KEY (estado_id)
        REFERENCES Estados (id)
);

INSERT INTO Estados (sigla, nome, regiao, ibge_codigo) VALUES ('RS', 'Rio Grande do Sul', 'Sul', '43');
INSERT INTO Estados (sigla, nome, regiao, ibge_codigo) VALUES ('RJ', 'Rio de Janeiro', 'Sudeste', '33');

INSERT INTO Cidades (nome, estado_id, ibge_codigo, populacao) VALUES ('Porto Alegre', 1, '4314405', 1332845);
INSERT INTO Cidades (nome, estado_id, ibge_codigo, populacao) VALUES ('Cachoeirinha', 1, '4303103', 141303);
INSERT INTO Cidades (nome, estado_id, ibge_codigo, populacao) VALUES ('Rio de Janeiro', 2, '330455', 6730729);
INSERT INTO Cidades (nome, estado_id, ibge_codigo, populacao) VALUES ('Niterói', 2, '3303302', 516787);
INSERT INTO Cidades (nome, estado_id, ibge_codigo, populacao) VALUES ('São Paulo', NULL, '4314405', 1332845);

UPDATE Cidades
SET populacao = 1332850
WHERE id = 1;

DELETE FROM Cidades 
WHERE
    estado_id IS NULL;