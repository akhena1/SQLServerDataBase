
--------------------------------------------------------------------------------------------------------------

--DDL
CREATE DATABASE EX4;
--EXE OK
USE EX4;
--EXE OK
CREATE TABLE Jogador(
	IdJogador INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50),
	Idade INT
);
--EXE OK
DROP TABLE Jogador;
--EXE OK

CREATE TABLE Equipe(
	IdEquipe INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30),
	Liga VARCHAR(20)
);
--EXE OK
CREATE TABLE Jogador(
	IdJogador INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Posicao VARCHAR(10),

	IdEquipe INT FOREIGN KEY REFERENCES Equipe(IdEquipe)
);
--EXE OK

-------------------------------------------------------------------------------------------------------------

--DML
INSERT INTO Equipe(Nome, Liga) VALUES('Corinthians' , 'Serie A'),
									 ('Santos' , 'Serie B');
-- EXE OK
INSERT INTO Jogador(Nome, Posicao, IdEquipe) VALUES('Zezao' , 'Zagueiro' , 1),
												   ('Ticao' , 'Meio campo' , 1),
												   ('Higor' , 'Volante' , 1),
												   ('Jesus' , 'Goleiro' , 1),
												   ('Marcos' , 'Lateral' , 2),
												   ('Dionisio' , 'Goleiro' , 2),
												   ('Socrates' , 'Atacante' , 2),
												   ('Johnny' , 'Lateral' , 2),
												   ('Farid' , 'Zagueiro' , 2)
--EXE OK
----------------------------------------------------------------------------------------------------------------------

--DQL
SELECT * FROM Equipe;
SELECT * FROM Jogador;
