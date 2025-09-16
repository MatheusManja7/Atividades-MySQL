CREATE DATABASE newdatabase;
USE newdatabase;
 
CREATE TABLE IF NOT EXISTS colaborador (
    id_colab INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    fone VARCHAR(20)
);

create table categoria(
	id_categoria int auto_increment primary key,
    descricao varchar(200) not null,
    cor varchar(100) not null,
    icone varchar(150) not null
);

create table produto(
	id_produto int auto_increment primary key,
    nome varchar(100),
	descricao text,
    email varchar(150),
    tipo int,
    preco decimal(10,2),
    promo boolean
);
 
select * from colaborador;
select * from categoria;
select * from produto;



