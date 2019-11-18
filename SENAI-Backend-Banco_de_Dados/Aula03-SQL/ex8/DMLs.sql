-------------------------------------------------------------------------
--DML
INSERT INTO Departamento(Nome)
VALUES ('TI'),
	   ('MARKETING'),
	   ('ADMINISTRATIVO'),
	   ('FINANCEIRO')
--EXE1 OK
INSERT INTO Local(Endereco , IdDepartamento)
VALUES ('Alameda Barão de Limeira 539, SP', 1),
	   ('Rua Waldemar 130, SP', 2),
	   ('Rua José Batista de Aguilar 330', 3 ),
	   ('Rua Nove de Julho 1290', 4)
--EXE2 OK
INSERT INTO Empregado(Nome, Rg, Endereco, IdLocal)
VALUES('Mario dos santos' , '19.345.234-X' , 'Rua 1' , 1),
	  ('Guilhermina Ferreira' , '03.123.543-2' , 'Rua 3' , 1),
	  ('Carlos Eduardo' , '40.690.346-1' , 'Rua 13' , 3),
	  ('Mohamed' , '59.234.124-9' , 'Rua 7' , 2)
--EXE3 OK
INSERT INTO Dependente(Nome, Rg, IdEmpregado)
VALUES ('Enzo' , '01.123.123-X' , 1 ),
	   ('Valentina' , '03.543.234-5' , 1 ),
	   ('Karine' , '90.232.354-60' , 3 ),
	   ('Abdu Farid' , '15.543.654-0' , 4 )
--EXE4 OK
INSERT INTO Projeto(Nome, Descricao , Orcamento)
VALUES('Campanha de Marketing' , 
'Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. 
Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis,
sem. Phasellus rhoncus. ', 999.999),
('Implementação de novos métodos organizacionais' , 'Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. 
Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis,
sem. Phasellus rhoncus.' , 999.999),
('Desenvolvimento de aplicativo mobile' , 'Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. 
Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis,
sem. Phasellus rhoncus.' , 999.999),
('Expansão da empresa' , 'Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. 
Sed vel lectus. Donec odio urna, tempus molestie, porttitor ut, iaculis quis,
sem. Phasellus rhoncus.' , 999.999)
--EXE5 OK
INSERT INTO RegistroTrabalho(IdEmpregado , IdProjeto)
VALUES(1 , 3),
	  (2 , 3),
	  (3 , 2),
	  (4 , 5)
--EXE6 OK

-------------------------------------------------------------------------