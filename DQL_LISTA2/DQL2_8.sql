USE DML2_9;

SELECT 
    C.nome AS cidade, E.nome AS estado
FROM
    Cidades C
        JOIN
    Estados E ON C.estado_id = E.id;