USE DML2_6;

    
SELECT 
    P.nome AS paciente, H.nome AS hospital
FROM
    Pacientes P
        LEFT JOIN
    Hospitais H ON P.id_hospital = H.id;