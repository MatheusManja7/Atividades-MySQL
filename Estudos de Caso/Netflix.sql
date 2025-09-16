create database Netflix;

show databases;

use Netflix;


create table Usuarios(
	id_usuario int not null auto_increment,
    cpf char(11) unique not null,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha varchar(100) not null,
    constraint primary key(id_usuario)
	);

select * from Usuarios;
    
INSERT INTO Usuarios (cpf, nome, email, senha) VALUES 
(12345678901, 'Alice Silva', 'alice.silva@example.com', 'senha123'),
(23456789012, 'Bruno Santos', 'bruno.santos@example.com', 'senha234'),
(34567890123, 'Carla Oliveira', 'carla.oliveira@example.com', 'senha345'),
(45678901234, 'Daniela Costa', 'daniela.costa@example.com', 'senha456'),
(56789012345, 'Eduardo Almeida', 'eduardo.almeida@example.com', 'senha567'),
(67890123456, 'Fernanda Lima', 'fernanda.lima@example.com', 'senha678'),
(78901234567, 'Gabriel Rocha', 'gabriel.rocha@example.com', 'senha789'),
(89012345678, 'Helena Pereira', 'helena.pereira@example.com', 'senha890'),
(90123456789, 'Igor Mendes', 'igor.mendes@example.com', 'senha901'),
(11234567890, 'Juliana Souza', 'juliana.souza@example.com', 'senha012'),
(22345678901, 'Karina Martins', 'karina.martins@example.com', 'senha1234'),
(33456789012, 'Lucas Ferreira', 'lucas.ferreira@example.com', 'senha2345'),
(44567890123, 'Mariana Cardoso', 'mariana.cardoso@example.com', 'senha3456'),
(55678901234, 'Nicolas Silva', 'nicolas.silva@example.com', 'senha4567'),
(66789012345, 'Olivia Almeida', 'olivia.almeida@example.com', 'senha5678'),
(77890123456, 'Pedro Dias', 'pedro.dias@example.com', 'senha6789'),
(88901234567, 'Quiteria Barbosa', 'quiteria.barbosa@example.com', 'senha7890'),
(99012345678, 'Rafael Gonçalves', 'rafael.goncalves@example.com', 'senha8901'),
(10123456789, 'Sofia Almeida', 'sofia.almeida@example.com', 'senha9012'),
(21234567890, 'Thiago Martins', 'thiago.martins@example.com', 'senha0123'),
(32345678901, 'Ursula Campos', 'ursula.campos@example.com', 'senha12345'),
(43456789012, 'Vinícius Almeida', 'vinicius.almeida@example.com', 'senha23456'),
(54567890123, 'Wanda Souza', 'wanda.souza@example.com', 'senha34567'),
(65678901234, 'Xavier Lima', 'xavier.lima@example.com', 'senha45678'),
(76789012345, 'Yasmin Costa', 'yasmin.costa@example.com', 'senha56789'),
(87890123456, 'Zeca Ferreira', 'zeca.ferreira@example.com', 'senha67890');
        
    
create table Series(
	id_serie int not null auto_increment,
    nome varchar(100) not null,
    sinopse varchar(100) not null,
    temporadas smallint not null,
	constraint primary key(id_serie)
	);

drop table Series;
select * from Series;

INSERT INTO Series (nome, sinopse, temporadas) VALUES 
('Stranger Things', 'Um grupo de crianças enfrenta fenômenos sobrenaturais em uma pequena cidade.', 4),
('Breaking Bad', 'Um professor de química se torna fabricante de metanfetamina.', 5),
('Game of Thrones', 'Nobres lutam pelo trono em um mundo de fantasia e intriga.', 8),
('The Crown', 'A história da rainha Elizabeth II e os eventos que moldaram a segunda metade do século 20.', 6),
('The Mandalorian', 'Um caçador de recompensas navega por uma galáxia distante após a queda do Império.', 2),
('Friends', 'As aventuras e desventuras de um grupo de amigos em Nova York.', 10),
('The Office', 'Uma comédia que retrata a vida de funcionários em uma empresa de papel.', 9),
('Black Mirror', 'Uma antologia que explora temas de tecnologia e sociedade.', 5),
('The Witcher', 'Um caçador de monstros enfrenta desafios em um mundo cheio de magia.', 3),
('Narcos', 'A ascensão e queda de cartéis de drogas na Colômbia.', 3);

    
create table Play(
	id_play int not null auto_increment,
    _data date not null,
    id_usuario int not null,
    id_serie int not null,
    constraint primary key(id_play),
    constraint foreign key (id_usuario) references Usuarios(id_usuario),
    constraint foreign key (id_serie) references Series(id_serie)
	);

select * from Play;

INSERT INTO Play (_data, id_usuario, id_serie) VALUES 
('2024-01-01', 1, 8),
('2024-01-02', 2, 1),
('2024-01-03', 15, 1),
('2024-01-04', 25, 7),
('2024-01-05', 14, 4),
('2024-01-06', 8, 6),
('2024-01-07', 2, 7),
('2024-01-08', 3, 1),
('2024-01-09', 4, 6),
('2024-01-10', 5, 2),
('2024-01-11', 23, 1),
('2024-01-12', 22, 3),
('2024-01-13', 9, 4),
('2024-01-14', 4, 8),
('2024-01-15', 5, 2);


select Usuarios.nome as Usuarios, Play._data as Play
from Usuarios inner join Play
on Usuarios.id_usuario = Play.id_play;

select Usuarios.id_usuario, Usuarios.nome as Usuario, Play.id_serie
from Play inner join Usuarios
on Play.id_usuario = Usuarios.id_usuario;

select Play.id_usuario, Series.nome as Serie
from Play inner join Series 
on Play.id_serie = Series.id_serie;


    
