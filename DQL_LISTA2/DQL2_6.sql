USE DML2_07;

SELECT 
    C.nome AS categoria, P.nome AS produto
FROM
    Categorias C
        JOIN
    Produtos P ON P.id_categoria = C.id;