create database produto;

show databases;

use produto;

create table produto(
	id int not null,
    nome varchar(100) not null,
    marca varchar(100) not null,
    modelo varchar(100) not null,
    preco decimal(10,2)  not null,
    serialnumber int not null,
    cor varchar(100) not null,
	constraint primary key (id)
);

show tables;

select * from produto;

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (2, "Smartphone X", "TechBrand", "X1000", 2.500, 123456, "Preto" );
select * from produto;

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (3, " Fone de Ouvido", "TechBrand", "X1000", 2.500, 987654, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (4, "Smartwatch", "TechBrand", "X1000", 2.500, 456789, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (5, "Câmera Digital", "TechBrand", "X1000", 2.500, 321654, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (6, " Impressora Multifuncional", "TechBrand", "X1000", 2.500, 159753, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (7, "Tablet", "TechBrand", "X1000", 2.500, 753159, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (8, "eclado Mecânico", "TechBrand", "X1000", 2.500, 852963, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (9, "Monitor 4K", "TechBrand", "X1000", 2.500, 369258, "Preto" );

insert into produto (id, nome, marca, modelo, preco, serialnumber, cor)
values (10, "Mouse Gamer", "TechBrand", "X1000", 2.500, 741852, "Preto" );

select * from produto;

select id, nome, modelo, marca from produto;

alter table produto
add column dataCriacao date;

alter table produto
add column estado char(2) default "MS";

select * from produto;

alter table produto
drop column dataCriacao;

select * from produto;

alter table produto
rename column serialnumber to SerialNumber;

select * from produto;

alter table produto
rename column SerialNunber to SerialNumber;

select * from produto
WHERE  id >= 3 and id <= 7;

select * from produto
where preco = '2.500' or cor = 'preto';

select * from produto
where preco = '2.500';

select min(preco) from produto;

select avg(preco) from produto;

select min(preco),max(preco),avg(preco) from produto;

select * from produto
order by nome asc;

select * from produto
order by nome asc
limit 3;

alter table produto
add column cidade char(2);

update produto
set cidade = "CG"
where id >= 1;

delete from produto where id = 1;
select * from produto;

select * from produto
where id in (2,3,4,5,79);

select sum(preco) from produto;

select count(id) from produto;

update produto 
set cidade = "Jacarei",
estado = "SP" 
where id = 7;

select min(preco), max(preco), sum(preco), avg(preco) from produto;







#Atividades:

select * from produto
order by nome desc
limit 5;

select * from produto
where id >= 8 and id <= 18;

delete from produto where id = 7;
select * from produto;

update produto
set preco = 3.500
where id >= 1 and id <= 4 ;

select * from produto;

update produto
set marca = "Sansung",
modelo = "Sansung Galax A01", 
SerialNumber = 456841321
where id = 3;

select * from produto;

select * from produto
order by preco asc;

select * from produto
order by preco desc;

select * from produto
order by nome asc;

select count(id) from produto;

select * from produto
where nome like 'M%';

