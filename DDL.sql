/* Criar o Banco */
CREATE DATABASE boletim;

/* Excluir banco */
DROP DATABASE boletim;

/* Usar o banco */
USE boletim;

/*Criar TABELA ALUNO*/
--NOT NULL - serve para obrigar o dado ser preenchido
--IDENTITY - serve para autoincrementar de 1 em 1
CREATE TABLE ALUNO(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL, 
	Nome VARCHAR(100),
	Ra Varchar(20),
	Idade INT
);

/*Criar Tabela da matéria*/
CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR (50) NOT NULL
);

/*Criar tabela de trabalho*/
CREATE TABLE trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- Chamamos nossas chaves estrangeiras
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno   INT FOREIGN KEY REFERENCES aluno  (IdAluno)

);