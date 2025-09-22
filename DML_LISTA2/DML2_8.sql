CREATE DATABASE DML2_8;

USE DML2_8;

CREATE TABLE Marcas (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(80) NOT NULL UNIQUE,
    pais_origem VARCHAR(60) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    site VARCHAR(150) NOT NULL
);

CREATE TABLE Carros (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    placa VARCHAR(8) UNIQUE NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    ano INT NOT NULL,
    id_marca INT,
    FOREIGN KEY (id_marca) REFERENCES Marcas (id)
);

INSERT INTO Marcas (nome, pais_origem, descricao, site) VALUES ('Volkswagen', 'Alemanha', 'Fundada em 1953, a filial no Brasil depois da China, é onde a montadora alemã tem maior presença fora de sua sede.', 'ofertas.vw.com.br');
INSERT INTO Marcas (nome, pais_origem, descricao, site) VALUES ('Fiat', 'Itália', 'Fundada em 1899, a Fiat faz parte do grupo global Stellantis e é uma das líderes do mercado, sendo conhecida pela inovação', 'www.fiat.com.br');

INSERT INTO Carros (placa, modelo, ano, id_marca) VALUES ('DMT 3K09', 'Pulse Hybrid', 2025, 2);
INSERT INTO Carros (placa, modelo, ano, id_marca) VALUES ('GKN 7K09', 'Toro', 2023, 2);
INSERT INTO Carros (placa, modelo, ano, id_marca) VALUES ('JHT 8J23', 'Polo', 2022, 1);
INSERT INTO Carros (placa, modelo, ano, id_marca) VALUES ('BSO 6A71', 'T-cross', 2025, 1);

UPDATE Carros
SET ano = 2020
WHERE id = 3;

DELETE FROM Carros
WHERE id = 2;