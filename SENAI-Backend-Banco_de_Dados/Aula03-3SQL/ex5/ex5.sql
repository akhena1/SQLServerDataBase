
---------------------------------------------------------------------------------------------------------------------

--DDL
CREATE DATABASE EX5;
--EXE OK
USE EX5;
--EXE OK
CREATE TABLE Cliente(
	IdCliente INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Idade INT,
	Endereco VARCHAR(100)
);
--EXE OK
CREATE TABLE Produto(
	IdProduto INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Descricao VARCHAR(255),
	Preco FLOAT


);
--EXE OK
CREATE TABLE Pedido(
	IdPedido INT IDENTITY PRIMARY KEY NOT NULL,

	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
	IdProduto INT FOREIGN KEY REFERENCES Produto(IdProduto)
);

---------------------------------------------------------------------------------------------------------------------------

--DML
INSERT INTO Cliente(Nome, Idade, Endereco) 
VALUES('Alberto' , 20 , 'Rua logo ali'),
      ('Bianca' , 67 , 'Avenida 192829'),
	  ('Carlos' , 30 , 'Rua 13'),
	  ('Denize' , 35 , 'Rua Danone azul')
--EXE OK
INSERT INTO Produto (Nome, Descricao, Preco) 
VALUES('Camiseta' , 'Branca' , 99.90),
	  ('Sapato' , 'Azul' , 59.90)
--EXE OK
INSERT INTO Pedido(IdCliente, IdProduto)
VALUES(1 , 1),
	  (1 , 2),
	  (2 , 1),
	  (3 , 2),
	  (4 , 1)
--EXE OK

-----------------------------------------------------------------------------------------------------------------------

--DQL
SELECT * FROM Cliente;
SELECT * FROM Produto
SELECT * FROM Pedido;

	