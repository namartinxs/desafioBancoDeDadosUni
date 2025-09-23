USE DML2_3;

SELECT 
    F.nome AS funcionario, D.nome AS departamento
FROM
    Funcionarios F
        JOIN
    Departamentos D ON F.id_departamento = D.id;