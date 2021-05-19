create database exercicio10;

use exercicio10;

create table Departamento (
idDepto int primary key,
nomeDepto varchar (45),
fkGerente int,
dataInicioGer date
);

create table Funcionario(
idFunc int primary key,
nomeFunc char(30),
salario decimal(7,2),
sexo char(1),
fkSupervisor int,
dataNasc date,
fkDepto int
);

create table Projeto(
idProj int primary key,
nomeProj varchar(45),
localProj varchar(45),
fkDepto int
);

create table funcProj(
fkFunc int,
fkProj int,
primary key (fkFunc, fkProj),
horas decimal (3,1)
);
-- Inserts 
insert into Departamento values (105, 'Pesquisa', 2, '2008-05-22'),
		(104, 'Administração', 7, '2015-01-01'),
                                (101, 'Matriz', 8, '2001-06-19');
                                
insert into Funcionario values (1, 'Joao Silva', 3500.00, 'm', 2, '1985-01-09', 105);

insert into Funcionario values (2, 'Fernando Wong', 4500.00, 'm', 8, '1975-12-08', 105),
		(3, 'Alice Souza', 2500.00, 'f', 7, '1988-01-19', 104),
                                (4, 'Janice Morais', 4300.00, 'f', 8, '1970-06-20', 104),
                                (5, 'Ronaldo Lima', '3800.00', 'm', 1, '1982-09-15', 105),
                                (6, 'Joice Leite', '2500.00', 'f', 1, '1992-07-31', 105),
                                (7, 'Antonio Pereira', '2500.00', 'm', 4, '1989-03-29', 104),
                                (8, 'Juliano Brito', '5500', 'm', null, '1957-11-10', 101);
                                
insert into Projeto values (1, 'Produto X', 'Santo André', 105),
		    (2, 'Produto Y', 'Itu', 105),
                            (3, 'Produto Z', 'São Paulo', 105),
                            (10, 'Informalização', 'Mauá', 104),
                            (20, 'Reorganização', 'São Paulo', 101),
                            (30, 'Benefícios', 'Mauá', 104);
                            
Insert into funcProj values (1, 1, 32.5);
Insert into funcProj values (1, 2, 7.5),
		(5, 3, 40.0),
                            (6, 1, 20.0),
                            (6, 2, 20.0),
                            (2, 2, 10.0),
                            (2, 3, 10.0),
                            (2, 10, 10.0),
                            (2, 20, 10.0),
                            (3, 30, 30.0),
                            (3, 10, 10.0),
                            (7, 10, 35.0),
                            (7, 30, 5.0),
                            (4, 30, 20.0),
                            (4, 20, 15.0),
                            (8, 20, null);
                            
alter table departamento add foreign key
(fkGerente) references Funcionario(idFunc);

alter table funcionario add foreign key
(fkSupervisor) references funcionario(idfunc);

alter table funcionario add foreign key
(fkDepto) references departamento(idDepto);

alter table projeto add foreign key
(fkDepto) references departamento(idDepto);

alter table funcProj add foreign key
(fkFunc) references funcionario(idFunc);

alter table funcProj add foreign key
(fkProj) references Projeto(idproj);


