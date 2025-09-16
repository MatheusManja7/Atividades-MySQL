create database pessoas;

use pessoas;

create table dados_pessoais(
    id int not null auto_increment,
    nome varchar(100) not null,
    idade char(2) not null,
    email varchar(150) not null,
    primary key (id)
);