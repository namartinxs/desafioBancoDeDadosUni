USE DML2_10;

SELECT 
    IP.quantidade,
    IP.preco_unit,
    (IP.quantidade * IP.preco_unit) AS valor_item,
    P.valor_total AS valor_pedido
FROM
    Itens_Pedido IP
        JOIN
    Pedidos P ON IP.pedido_id = P.id;