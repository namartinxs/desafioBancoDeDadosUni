CREATE DATABASE DDL02_10;

USE DDL02_10;

CREATE TABLE Pedidos (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL (10,2)
);


CREATE TABLE Itens_Pedido (
	id_item INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    id_pedido INT NOT NULL,
    preco_unit DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);
desc Itens_Pedido;