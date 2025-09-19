CREATE DATABASE DDL02_07;

USE DDL02_07;

CREATE TABLE Categorias (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Produtos (
	id_produto INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);
