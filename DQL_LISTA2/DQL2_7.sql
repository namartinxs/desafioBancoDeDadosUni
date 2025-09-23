USE DML2_8;

SELECT 
    M.nome AS marca, C.modelo AS carro
FROM
    Marcas M
        JOIN
    Carros C ON C.id_marca = M.id;