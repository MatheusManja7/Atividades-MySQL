create database DGT;

show databases;

use DGT;


create table Departamentos (
id_dep int not null auto_increment,
nome varchar(150) not null,
constraint primary key (id_dep)
);
    
insert into Departamentos (id_dep,nome) values (default, "Administrativo");
insert into Departamentos (id_dep,nome) values (default, "Contábil");
insert into Departamentos (id_dep,nome) values (default, "Produção");
insert into Departamentos (id_dep,nome) values (default, "Financeiro");
insert into Departamentos (id_dep,nome) values (default, "Pessoal");
insert into Departamentos (id_dep,nome) values (default, "Comercial");
insert into Departamentos (id_dep,nome) values (default, "Vendas");
insert into Departamentos (id_dep,nome) values (default, "Diretoria");
insert into Departamentos (id_dep,nome) values (default, "TI");

select * from Departamentos;

create table Cargos (
id_cargo int not null auto_increment,
nome varchar(150) not null,
id_dep int not null,
constraint primary key(id_cargo),
constraint foreign key (id_dep) references Departamentos(id_dep)
);

insert into Cargos (id_cargo, nome, id_dep) values (default, "Secretária", 3);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Consultor", 2);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Assistente Administrativo", 9);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Conferente", 5);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Vendedor", 4);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Estagiário", 1);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Supervisor", 8);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Gerente", 6);

insert into Cargos (id_cargo, nome, id_dep)
values (default, "Diretor", 9);

select * from Cargos;


create table Funcionarios(
	id_func int not null auto_increment,
    cpf char(11) not null,
    nome varchar(150) not null,
    idade char(2) not null,
    salario decimal(10,2) not null,
    endereco varchar(200) not null,
    telefone char(11) not null,
    data_nascimento date not null,
    data_admissao date not null,
    cidade varchar(150) not null,
    nacionalidade varchar(150) not null,
    id_cargo int not null,
    id_dep int not null,
    constraint primary key(id_func),
    constraint foreign key (id_dep) references Departamentos (id_dep),
    constraint foreign key (id_cargo) references Cargos (id_cargo)
	);
    
insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep) 
values (default, '12345678901', 'Enzo Pegaz Arimura', '16', 3500.50, 'Rua A, 123', '11987654321', '1996-05-15', '2022-01-10', 'São Paulo', 'Brasileiro',1,5);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '23456789012', 'Gabriel Alves de Souza', '35', 4500.00, 'Rua B, 456', '11998765432', '1988-08-20', '2021-03-05', 'Rio de Janeiro', 'Brasileiro',2,8);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '34567890123', 'Gabriel Rodrigues Mariano', '22', 3000.75, 'Rua C, 789', '11999876543', '2001-02-10', '2023-02-15', 'Belo Horizonte', 'Brasileiro',3,3);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '45678901234', 'Guilherme Camargo Godoy', '30', 5000.00, 'Avenida D, 101', '11990987654', '1993-11-30', '2020-07-20', 'Curitiba', 'Brasileiro',4,7);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '56789012345', 'Halyson da Silva', '40', 6000.00, 'Praça E, 202', '11992098765', '1982-03-25', '2019-05-22', 'Porto Alegre', 'Brasileiro',2,1);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '67890123456', 'José Teodoro rodrigues Vieira Ribas', '26', 3800.00, 'Rua F, 303', '11993109876', '1997-12-05', '2022-06-10', 'Salvador', 'Brasileiro',2,9);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '78901234567', 'Luiz Francisco de Conti', '33', 4200.00, 'Rua G, 404', '11994210987', '1990-04-18', '2020-09-12', 'Fortaleza', 'Brasileiro',5,6);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '89012345678', 'Matheus Willian Severino Manja', '16', 20000.00, 'Avenida H, 505', '11995321098', '1994-07-23', '2021-11-15', 'Recife', 'Brasileiro',8,9);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '90123456789', 'Maykelly Helena Castro Cezario', '24', 3200.00, 'Rua I, 606', '11996432109', '1999-01-08', '2023-03-20', 'Manaus', 'Brasileira',8,8);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '01234567890', 'Raquel Leirião Marques', '36', 4800.25, 'Rua J, 707', '11997543210', '1987-06-14', '2018-04-01', 'Goiânia', 'Brasileira',1,5);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '09876543210', 'Samuel Da Silva Rodrigues', '31', 4100.60, 'Rua K, 808', '11998654321', '1992-10-05', '2020-02-19', 'São Luís', 'Brasileiro',4,6);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '98765432101', 'Thiego da Cunha Pacheco Ferreira', '27', 3550.80, 'Avenida L, 909', '11999765432', '1996-09-15', '2021-12-30', 'Campo Grande', 'Brasileiro',1,7);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '87654321012', 'Tiago Santos Costa', '38', 5400.00, 'Rua M, 1010', '11990876543', '1985-02-20', '2017-07-11', 'Natal', 'Brasileiro',4,6);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '76543210923', 'Yan Torres Martins', '20', 7000.00, 'Rua N, 1111', '11991987654', '1981-11-11', '2015-10-20', 'Florianópolis', 'Brasileiro',3,1);

insert into Funcionarios (id_func, cpf, nome, idade, salario, endereco, telefone, data_nascimento, data_admissao, cidade, nacionalidade, id_cargo, id_dep)
values (default, '65432109834', 'Yuri Silva de Paula', '20', 4600.00, 'Praça O, 1212', '11993098765', '1989-03-30', '2022-09-25', 'Teresina', 'Brasileiro',5,5);

drop table Funcionarios;


create table Dependentes(
	id_Dependentes int not null auto_increment,
    N_certidao char(6),
    nome varchar(150),
	data_nas datetime,
    local_nas varchar(150),
    id_empregado_dep varchar(45),
    idade char(2),
    id_dep int not null,
    constraint primary key(id_Dependentes),
    constraint foreign key (id_dep) references Departamentos (id_dep)
	);
    
    
insert into Dependentes (id_dependentes, N_certidao, nome, data_nas, id_empregado_dep, local_nas, idade, id_dep)
values (default, 'c12345', 'Ana Silva', "2015-10-12", 'DEP001','São Paulo, SP', "32", 2);

insert into Dependentes (id_dependentes, N_certidao, nome, data_nas, local_nas, id_empregado_dep, idade, id_dep)
values (default, 'c54321', 'João Pereira', "2010-1-15", 'DEP002', 'Rio de Janeiro, RJ', "42", 3);

insert into Dependentes (id_dependentes, N_certidao, nome, data_nas, local_nas, id_empregado_dep, idade, id_dep)
values (default, 'C56789', 'Maria Oliveira', "2000-12-14", 'DEP003', 'Belo Horizonte, MG9', "23", 6);

insert into Dependentes (id_dependentes, N_certidao, nome, data_nas, local_nas, id_empregado_dep, idade, id_dep)
values (default, 'C98765', 'Carlos Souza', "1985-3-13", 'DEP004', 'Curitiba, PR', "52", 9);

insert into Dependentes (id_dependentes, N_certidao, nome, data_nas, local_nas, id_empregado_dep, idade, id_dep)
values (default, 'C15478', '	Laura Costa', "1974-5-11", 'DEP005', 'Porto Alegre, RS', "60", 5 );

/*Exercicios*/
/*1*/ select * from Departamentos;

/*2*/ select * from Cargos;

/*3*/ select * from Funcionarios;

/*4*/ select * from Dependentes;

/*5*/ update Funcionarios set salario = 6500 where id_func = 3;

/*6*/ update Funcionarios set endereco = "Av. Afonso Penas, 5432" where id_func < 5;

/*7*/ select * from Funcionarios
order by idade desc;

/*8*/ select * from Funcionarios
order by nome desc;

/*9*/ select * from Funcionarios where id_func > 8 and id_func < 18;

/*10*/ select * from Funcionarios where id_func in (1,2,18,21);

/*11*/ select nome, salario from Funcionarios where nome like 'j%';

/*12*/ select nome, salario from Funcionarios where nome like '%a';

/*13*/ select count(id_func) from Funcionarios;

/*14*/ select min(salario) from Funcionarios;

/*15*/ select max(idade) from Dependentes;

/*16*/ select avg(salario) from Funcionarios;

/*17*/ select id_func from Funcionarios where idade in(select idade from Funcionarios group by idade having count(*) > 1);

/*18*/ select * from Funcionarios where idade = 20 and nome like 'y%' and id_func between 14 and 15;



