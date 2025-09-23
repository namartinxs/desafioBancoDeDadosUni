USE DML2_5;

SELECT 
    T.id AS turma_id, P.nome AS professor
FROM
    Turmas T
        JOIN
    Professores P ON T.professor_id = P.id;