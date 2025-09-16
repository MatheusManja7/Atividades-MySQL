create database sistema_crud;

use sistema_crud;

create table pessoa(
	id int not null auto_increment,
    nome varchar(150) not null,
    cpf char(11) not null,
    email varchar(150) not null,
    fone char(11),
    endereco varchar(150),
    cidade varchar(100),
    primary key (id)
);

select * from pessoa;

create table produto(
	id_produto int not null auto_increment,
    nome varchar(150) not null,
    marca varchar(150) not null,
    modelo varchar(150) not null, 
    descricao varchar(150) not null,
    preco float not null,
    tipo varchar(150) not null,
    tamanho int not null,
    peso float not null,
    primary key (id_produto)
);

select * from produto;

