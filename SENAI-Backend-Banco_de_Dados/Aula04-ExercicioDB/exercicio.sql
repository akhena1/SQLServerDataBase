
--DDL

CREATE DATABASE Camiseta;
--exe ok
USE Camiseta;
--exe ok
CREATE TABLE Tipo(
	IdTipo INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50)
);
CREATE TABLE Marca(
	IdMarca INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50)
);
CREATE TABLE Cor(
	IdCor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50)
);
CREATE TABLE Tamanho(
	IdTamanho INT IDENTITY PRIMARY KEY NOT NULL,
	Tamanho VARCHAR(5)

);
--exe ok
CREATE TABLE Camiseta(
	IdCamiseta INT IDENTITY PRIMARY KEY NOT NULL,
	
	IdTipo INT FOREIGN KEY REFERENCES Tipo(IdTipo),
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca),
	IdCor INT FOREIGN KEY REFERENCES Cor(IdCor),
	IdTamanho INT FOREIGN KEY REFERENCES Tamanho(IdTamanho)
);
--exe ok

--DML

INSERT INTO Cor(Nome)
VALUES('Branco'),
	  ('Vermelho'),
	  ('Azul'),
	  ('Roxo'),
	  ('Verde')
INSERT INTO Tamanho(Tamanho)
VALUES('PP'),
	  ('P'),
	  ('M'),
	  ('G'),
	  ('GG')
--exe ok

INSERT INTO Marca(Nome)
VALUES('Nike'),
	  ('Hering'),
	  ('Codigo Girls')
--exe ok
INSERT INTO Tipo(Nome)
VALUES ('Regata'),
	   ('Manga Longa'),
	   ('Polo'),
	   ('Manga Curta'),
	   ('Baby Look')
--exe ok
INSERT INTO Camiseta(IdTipo, IdMarca, IdTamanho, IdCor)
VALUES(1 , 2 , 5 , 1),
	  (2 , 1 , 3 , 2),
	  (3 , 1 , 2 , 3),
	  (4 , 2 , 4 , 4),
	  (5 , 3 , 1 , 5)
--exe ok
UPDATE Marca SET Nome = 'Adidas'
WHERE IdMarca = 1;
UPDATE Marca SET Nome = 'Khelf'
WHERE IdMarca = 2;
--exe ok
 
SELECT MAX(IdCamiseta)
AS maior_id
FROM Camiseta

DELETE FROM Camiseta
WHERE IdCamiseta = 5;
--exe ok

SELECT * FROM Tipo;
SELECT * FROM Marca;
SELECT * FROM Cor;

SELECT 
	Camiseta.IdCamiseta,
	Tipo.Nome,
	Marca.Nome 
	FROM Camiseta 
		INNER JOIN Tipo ON Tipo.IdTipo = Camiseta.IdTipo 
		INNER JOIN Marca ON Marca.IdMarca = Camiseta.IdMarca

SELECT 
	Camiseta.IdCamiseta,
	Tipo.Nome,
	Cor.Nome,
	Marca.Nome 
	FROM Camiseta 
		INNER JOIN Tipo ON Tipo.IdTipo = Camiseta.IdTipo 
		INNER JOIN Cor ON Cor.IdCor = Camiseta.IdCor
		INNER JOIN Marca ON Marca.IdMarca = Camiseta.IdMarca

SELECT 
	Camiseta.IdCamiseta,
	Tipo.Nome,
	Tamanho.Tamanho,
	Marca.Nome
	FROM Camiseta 
		INNER JOIN Tipo ON Tipo.IdTipo = Camiseta.IdTipo 
		INNER JOIN Tamanho ON Tamanho.IdTamanho = Camiseta.IdTamanho
		INNER JOIN Marca ON Marca.IdMarca = Camiseta.IdMarca
							


	