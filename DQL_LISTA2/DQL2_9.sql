USE DML1_4;

SELECT 
    P.id AS pedido_id, C.nome AS cliente, P.valor_total
FROM
    Pedidos P
        JOIN
    Clientes C ON P.id_clientes = C.id;
