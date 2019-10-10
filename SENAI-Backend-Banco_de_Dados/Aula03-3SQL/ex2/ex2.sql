
----------------------------------------------------------------------

--DDL
CREATE DATABASE ex2;
--EXE OK
USE ex2;
--EXE OK
CREATE TABLE Diretor(
	IdDiretor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50)
);
--EXE OK
CREATE TABLE Departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Endereco VARCHAR(100),

	IdDiretor INT FOREIGN KEY REFERENCES Diretor(IdDiretor)
);
--EXE OK

---------------------------------------------------------------------

--DML
INSERT INTO Diretor(Nome) VALUES ('José roberto'),
								 ('Marcela Santos'),
								 ('Nelson Sevat');
--EXE OK
INSERT INTO Departamento(Endereco , IdDiretor) VALUES ('Rua 01' , 2),
													  ('Rua 15' , 1),
													  ('Avenida São João' , 3);
--EXE OK

---------------------------------------------------------------------

--DQL
SELECT * FROM Diretor;
SELECT * FROM Departamento;

