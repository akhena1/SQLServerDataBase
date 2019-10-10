
----------------------------------------------------------------------------------------------------------

--DDL
CREATE DATABASE EX3;
--EXE OK
USE EX3;
--EXE OK
CREATE TABLE Autor(
	IdAutor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50),
	Idade INT
);
--EXE OK
CREATE TABLE Livro(
	IdLivro INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50)
);
--EXE OK
CREATE TABLE Publicacao(
	IdPublicacao INT IDENTITY PRIMARY KEY NOT NULL,
	
	IdAutor INT FOREIGN KEY REFERENCES Autor(IdAutor),
	IdLivro INT FOREIGN KEY REFERENCES Livro(IdLivro)
);
--EXE OK

----------------------------------------------------------------------------------------------

--DML
INSERT INTO Autor(Nome, Idade) VALUES('Paulo Coelho' , 73),
									 ('Charles Duhigg' , 52),
									 ('Mary Stewart', 60);
--EXE OK
INSERT INTO Livro(Titulo) VALUES ('O Poder do hábito'),
								 ('O Aleph'),
								 ('A Gruta de Cristal');
--EXE OK
INSERT INTO Publicacao(IdAutor, IdLivro) VALUES(1 , 2),
												(2 , 1),
												(3 , 3);
--EXE OK

--------------------------------------------------------------------------------------------------------

--DQL
SELECT * FROM Autor;
SELECT * FROM Livro;
SELECT * FROM Publicacao;