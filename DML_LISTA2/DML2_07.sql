CREATE DATABASE DML2_07;

USE DML2_07;

CREATE TABLE Categorias (
	id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    quantidade INT,
    status_categoria VARCHAR(50)
);

CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nome VARCHAR(120) NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    id_categoria INT,
    estoque INT NOT NULL,
    FOREIGN KEY (id_categoria)
        REFERENCES Categorias (id)
); 

INSERT INTO Categorias (nome, quantidade, status_categoria) VALUES ('Eletrônicos', 100, 'Ativo');
INSERT INTO Categorias (nome, quantidade, status_categoria) VALUES ('Roupas e Acessórios', 230, 'Inativo');

INSERT INTO Produtos (nome, preco, id_categoria, estoque) VALUES ('Televisão', 2499.99, 1, 20);
INSERT INTO Produtos (nome, preco, id_categoria, estoque) VALUES ('Câmera Digital', 2999.99, 1, 45);
INSERT INTO Produtos (nome, preco, id_categoria, estoque) VALUES ('Computador', 4899.99, 1, 56);
INSERT INTO Produtos (nome, preco, id_categoria, estoque) VALUES ('Calça Jeans', 199.90, 2, 100);
INSERT INTO Produtos (nome, preco, id_categoria, estoque) VALUES ('Celular', 6999.99, 1, 200);

UPDATE Produtos
SET preco = 2299.00
WHERE id = 2;

DELETE FROM Produtos
WHERE id_categoria = (
    SELECT id FROM Categorias WHERE status_categoria = 'Inativo'
);