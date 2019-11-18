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

--Juntamos as 3 tabelas usando INNER JOIN
SELECT * FROM trabalho
INNER JOIN materia ON materia.IdMateria =  trabalho.IdMateria
INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno

--Deixamos somente os dados que nos interessam no momento
SELECT 
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
	FROM trabalho
		INNER JOIN materia ON materia.IdMateria =  trabalho.IdMateria
		INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno

--Juntamos as 3 tabelas usando INNER JOIN
	SELECT * FROM aluno
/*Utilizamos a função nativa COUNT para retornar o número de registros na minha tabela


  Usamos o Alias "AS" para nomear a coluna
*/
	SELECT COUNT(*) AS total_registros FROM aluno;


	--Pegamos a idade máxima dos alunos
	SELECT MAX (Idade) AS idade_maxima FROM aluno;


	--Pegamos a idade mínima dos alunos
	SELECT MIN (Idade) AS idade_minima FROM aluno;


	--Pegamos a média de idade dos alunos
	SELECT AVG(Idade) AS media_idades FROM aluno;


	--Somamos a idade dos alunos
	SELECT SUM(Idade) AS soma_idade FROM aluno;


	--Juntamos todas as funções em uma única consulta
	SELECT
		COUNT(*) AS total,
		MAX(Idade) AS idade_maxima,
		MIN(Idade) AS idade_minima,
		AVG(Idade) AS media_idades,
		SUM(Idade) AS soma_idade
	FROM aluno;
	/*SUBSTRING*/
--Pegamos parte de uma string
SELECT SUBSTRING(Nome, 0, 4) AS inicial from aluno;

/*UPPER*/
-- Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/* LOWER */
SELECT LOWER(Nome) AS Nome FROM aluno;


/*
SELECT 
	Camiseta.IdCamiseta,
	Tipo.Nome,
	Marca.Nome --Colunas que você deseja exibir
	FROM Camiseta -- tabela que armazena os ids estrangeiros
		INNER JOIN Tipo ON Tipo.IdTipo = Camiseta.IdTipo 
		INNER JOIN Marca ON Marca.IdMarca = Camiseta.IdMarca
				--tabela  --chave primária --Chave estrangeira */