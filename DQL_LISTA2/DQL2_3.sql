USE DML2_4;

SELECT 
    D.nome AS disciplina, C.nome AS curso
FROM
    Disciplinas D
        JOIN
    Cursos C ON D.id_curso = C.id;