-------------------------------------------------------------------------
--DDL
CREATE DATABASE EX8;
--EXE OK
USE EX8;
--EXE OK
CREATE TABLE Departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50)
);
--EXE OK
CREATE TABLE Local(
	IdLocal INT IDENTITY PRIMARY KEY NOT NULL,
	Endereco VARCHAR(255),

	IdDepartamento INT FOREIGN KEY REFERENCES Departamento(IdDepartamento)
);
--EXE OK
CREATE TABLE Empregado(
	IdEmpregado INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Rg VARCHAR(13),
	Endereco VARCHAR(255),
	
	IdLocal INT FOREIGN KEY REFERENCES Local(IdLocal)
);
--EXE OK
CREATE TABLE Dependente(
	IdDependente INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Rg VARCHAR(13),
	
	IdEmpregado INT FOREIGN KEY REFERENCES Empregado(IdEmpregado)
);
--EXE OK
CREATE TABLE Projeto(
	IdProjeto INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50),
	Descricao VARCHAR(255),
	Orcamento FLOAT
);
--EXE OK
CREATE TABLE RegistroTrabalho(
	IdRegistroTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	
	IdEmpregado INT FOREIGN KEY REFERENCES Empregado(IdEmpregado),
	IdProjeto INT FOREIGN KEY REFERENCES Projeto(IdProjeto)
);
--EXE OK

-----------------------------------------------------------------------