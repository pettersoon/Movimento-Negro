create database movimento_negro;
use movimento_negro;

create table usuario(
email int primary key,
senha int,
nome varchar (20),
sobrenome varchar (20),
idade char (2),
bairro varchar (30));

create table comentario(
idComentario int primary key auto_increment,
descricao varchar (300),
fkUsuario int references usuario(email))auto_increment = 1;

create table segestao(
idSugestao int primary key auto_increment,
fkUsuario int references usuario(email),
descricao varchar (300))auto_increment = 1;
