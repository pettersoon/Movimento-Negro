create database movimento_negro;
use movimento_negro;

create table usuario(
idUsuario int primary key auto_increment,
email varchar(50),
senha varchar(25),
nome varchar (50),
idade char (3),
endereco varchar (100)) auto_increment = 1;

create table publicacao(
id int primary key auto_increment,
descricao varchar (100),
fkUsuario int);

select * from usuario;

select * from publicacao;

truncate usuario;
truncate publicacao;

drop database movimento_negro;