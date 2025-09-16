show databases;

use DGT;

select * from Funcionarios;

select current_date();

select current_timestamp();

select curtime();

select now();

create table cadastro(
	id int not null auto_increment,
    nome varchar(100) not null,
    login varchar(100),
    senha varchar(50),
    data_cadastro date,
    hora_cadastro time,
    primary key (id)
    );
    
insert into cadastro (nome, login, senha, data_cadastro, hora_cadastro)
values ("Matheus Manja", "Manja", "15478", "2008-03-04", current_time());

select * from cadastro;

select date_format(data_cadastro,'%d/%m/%Y') from cadastro;

select day(data_cadastro), month(data_cadastro) from cadastro;

SELECT
timestampdiff(Year,data_cadastro,now()) as Idade,
timestampdiff(Month,data_cadastro,now()) as Meses,
timestampdiff(Day,data_cadastro,now()) as Dias
from cadastro;

