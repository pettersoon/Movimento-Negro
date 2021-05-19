create database projeto_iot;
use projeto_iot;


CREATE TABLE usuario (
	id INT PRIMARY KEY auto_increment,
	nome VARCHAR(50),
	login VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE leitura (
	id INT primary key auto_increment ,
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fkcaminhao INT
);

select * from leitura;

drop database cadastro;