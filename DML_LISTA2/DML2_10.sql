CREATE DATABASE DML2_10;

USE DML2_10;

CREATE TABLE Pedidos ( 
	id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(12,2) NOT NULL,
	status_pedido VARCHAR(20) NOT NULL
);

CREATE TABLE Itens_Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    pedido_id INT,
    quantidade INT NOT NULL,
    preco_unit DECIMAL(10 , 2 ) NOT NULL,
    FOREIGN KEY (pedido_id)
        REFERENCES Pedidos (id)
);

INSERT INTO Pedidos (valor_total, status_pedido) VALUES (60.00, 'Em andamento');
INSERT INTO Pedidos (valor_total, status_pedido) VALUES (100.00, 'Cancelado');

INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (1, 1, 20.00);
INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (1, 1, 10.00);
INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (1, 1, 15.00);
INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (1, 2, 15.00);
INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (2, 2, 30.00);
INSERT INTO Itens_Pedido (pedido_id, quantidade, preco_unit) VALUES (2, 1, 40.00);

UPDATE Itens_Pedido
SET quantidade = 1
WHERE id = 4;

DELETE FROM Itens_Pedido 
WHERE
    pedido_id = (SELECT 
        id
    FROM
        Pedidos
    
    WHERE
        status_pedido = 'Cancelado');