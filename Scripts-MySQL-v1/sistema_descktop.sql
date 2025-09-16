create database sistema_descktop;

use sistema_descktop;

create table empresa(
	id int not null auto_increment,
    cnpj char(15) not null unique,
    nome varchar(200) not null,
    fone char(11) not null,
    email varchar(200) not null,
    cep char(11) not null,
    rua varchar(200) not null,
    bairro varchar(100) not null,
    cidade varchar(150) not null,
    estado char(2) default 'MS',
    primary key (id)
    );