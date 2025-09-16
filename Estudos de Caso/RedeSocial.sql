create database redeSocial;

show databases;

use redeSocial;

create table Categorias(
	id_cat int not null auto_increment,
    descricao varchar(100),
    constraint primary key(id_cat)
);

INSERT INTO Categorias (descricao) VALUES 
('Tecnologia'),
('Saúde'),
('Viagens'),
('Entretenimento'),
('Educação'),
('Esportes'),
('Culinária'),
('Moda'),
('Música'),
('Arte');

select * from Categorias;

create table Usuarios(
	id_user int not null auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45),
    avatar varchar(45),
    sexo enum ('F','M'),
    constraint primary key(id_user)
);

INSERT INTO Usuarios (nome, email, senha, avatar, sexo) VALUES 
('Alice Silva', 'alice.silva@example.com', 'senha123', 'avatar1.png', 'F'),
('Bruno Santos', 'bruno.santos@example.com', 'senha234', 'avatar2.png', 'M'),
('Carla Oliveira', 'carla.oliveira@example.com', 'senha345', 'avatar3.png', 'F'),
('Daniela Costa', 'daniela.costa@example.com', 'senha456', 'avatar4.png', 'F'),
('Eduardo Almeida', 'eduardo.almeida@example.com', 'senha567', 'avatar5.png', 'M'),
('Fernanda Lima', 'fernanda.lima@example.com', 'senha678', 'avatar6.png', 'F'),
('Gabriel Rocha', 'gabriel.rocha@example.com', 'senha789', 'avatar7.png', 'M'),
('Helena Pereira', 'helena.pereira@example.com', 'senha890', 'avatar8.png', 'F'),
('Igor Mendes', 'igor.mendes@example.com', 'senha901', 'avatar9.png', 'M'),
('Juliana Souza', 'juliana.souza@example.com', 'senha012', 'avatar10.png', 'F');

select * from Usuarios;

create table Posts(
	id_post int not null auto_increment,
    _data datetime,
    texto varchar(100),
    midia varchar(100),
    id_cat int not null,
    id_user int not null,
    constraint primary key(id_post),
	constraint foreign key (id_cat) references Categorias (id_cat),
	constraint foreign key (id_user) references Usuarios (id_user)
);

INSERT INTO Posts (_data, texto, midia, id_cat, id_user) VALUES 
(NOW(), 'Post sobre tecnologia', 'midia1.png', 1, 1),
(NOW(), 'Post sobre saúde', 'midia2.png', 2, 2),
(NOW(), 'Post sobre viagens', 'midia3.png', 3, 3),
(NOW(), 'Post sobre entretenimento', 'midia4.png', 4, 4),
(NOW(), 'Post sobre educação', 'midia5.png', 5, 5),
(NOW(), 'Post sobre esportes', 'midia6.png', 6, 6),
(NOW(), 'Post sobre culinária', 'midia7.png', 7, 7),
(NOW(), 'Post sobre moda', 'midia8.png', 8, 8),
(NOW(), 'Post sobre música', 'midia9.png', 9, 9),
(NOW(), 'Post sobre arte', 'midia10.png', 10, 10);

select * from Posts;

create table Comentarios(
	id_com int not null auto_increment,
    _data datetime,
    texto varchar(45),
    nomeUsuario varchar(100),
    id_user int not null,
    id_post int not null,
    constraint primary key(id_com),
    constraint foreign key (id_user) references Usuarios (id_user),
	constraint foreign key (id_post) references Posts (id_post)
);

INSERT INTO Comentarios (_data, texto, nomeUsuario, id_user, id_post) VALUES 
(NOW(), 'Ótimo post!', 'Alice Silva', 1, 1),
(NOW(), 'Muito interessante!', 'Bruno Santos', 2, 1),
(NOW(), 'Adorei as dicas!', 'Carla Oliveira', 3, 2),
(NOW(), 'Informações valiosas!', 'Daniela Costa', 4, 3),
(NOW(), 'Gostei bastante!', 'Eduardo Almeida', 5, 4),
(NOW(), 'Post muito útil!', 'Fernanda Lima', 6, 5),
(NOW(), 'Bem escrito!', 'Gabriel Rocha', 7, 6),
(NOW(), 'Conteúdo de qualidade!', 'Helena Pereira', 8, 7),
(NOW(), 'Muito legal!', 'Igor Mendes', 9, 8),
(NOW(), 'Incrível!', 'Juliana Souza', 10, 9);

select * from Comentarios;

select Usuarios.nome as Nome_Autor, Posts.texto as Texto_Post, Comentador.nome as Nome_Comentador, Comentarios.texto as Texto_Comentado
from Posts 
inner join Usuarios on Posts.id_user = Usuarios.id_user
inner join Comentarios on Posts.id_post = Comentarios.id_post
inner join Usuarios as Comentador on Comentarios.id_user = Comentador.id_user;

select Usuarios.id_user, Usuarios.nome, Usuarios.email, Posts.id_post,Posts.texto
from Usuarios inner join Posts
on Usuarios.id_user = Posts.id_user;

select Usuarios.id_user, Usuarios.nome, Usuarios.email, Comentarios.id_com, Comentarios.texto, Comentarios._data
from Usuarios inner join Comentarios
on Usuarios.id_user = Comentarios.id_com;

SELECT Usuarios.nome AS nome_autor, Posts.texto AS texto_post,
Comentarios.nomeUsuario AS nome_comentador, Comentarios.texto AS texto_comentario
FROM Posts INNER JOIN Usuarios ON Posts.id_user = Usuarios.id_user
INNER JOIN Comentarios ON Posts.id_post = Comentarios.id_post;



