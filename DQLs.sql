/*Mostrar dados*/
SELECT * FROM ALUNO;

SELECT * FROM materia;

/* Mostrar dados específicos de um aluno pelo ID */
SELECT * FROM ALUNO WHERE IdAluno = 2;


/* Mostrar dados em uma "busca" com LIKE */ -- % entre as aspas
SELECT * FROM ALUNO WHERE Nome LIKE 'Bruna%';

/* Ordernar por nome do aluno de forma ascendente */
SELECT * FROM ALUNO ORDER BY Nome ASC;

/* Ordernar por nome do aluno de forma decrescente */
SELECT * FROM ALUNO ORDER BY Nome DESC;
