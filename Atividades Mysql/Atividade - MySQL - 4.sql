create database Biblioteca;

use Biblioteca;

create table editoras(
	id_editora int not null auto_increment,
    nome varchar(100) not null,
    cnpj char(14) not null,
    cidade varchar(100),
    primary key (id_editora)
	);

insert into editoras (nome, cnpj, cidade) values
("Editora Novos Horizontes", "12345678000195", "São Paulo"),
("Editora Letras do Sul", "23456789000106", "Porto Alegre"),
("Editora Mundo dos Livros", "34567890000117", "Rio de Janeiro"),
("Editora Saberes", "45678901000128", "Brasília"),
("Editora Fantasia", "56789012000139", "Belo Horizonte"),
("Editora Infinitas", "67890123000140", "Curitiba"),
("Editora Criativa", "78901234000151", "Salvador"),
("Editora Saber & Arte", "89012345000162", "Recife");
    
select * from editoras;
    
create table autores(
	id_autor int not null auto_increment,
	nome varchar(100) not null,
	email varchar(100) not null,
	estado char(3) default 'SP',
	primary key (id_autor)
	);
    
insert into autores(nome,email,estado) values
("João Silva", "joao.silva@email.com", "SP"),
("Maria Oliveira", "maria.oliveira@email.com", "RJ"),
("Pedro Santos", "pedro.santos@email.com", "MG"),
("Ana Costa", "ana.costa@email.com", "PR"),
("Carlos Pereira", "carlos.pereira@email.com", "BA"),
("Fernanda Lima", "fernanda.lima@email.com", "PE"),
("Lucas Almeida", "lucas.almeida@email.com", "CE"),
("Juliana Rocha", "juliana.rocha@email.com", "ES"),
("André Ferreira", "andre.ferreira@email.com", "SC"),
("Patricia Mendes", "patricia.mendes@email.com", "GO"),
("Jules Verne", "jules.verne@email.com", "FR"),
("George Orwell", "george.orwell@email.com", "IG"),
("Machado de Assis", "machado.assis@email.com", "BR"),
("Antoine de Saint-Exupéry", "antoine.saint-exupery@email.com", "FR"),
("J.K. Rowling", "jk.rowling@email.com", "RU"),
("Fiódor Dostoiévski", "fyodor.dostoevsky@email.com", "RS"),
("Gabriel García Márquez", "gabriel.garcia@email.com", "CB"),
("Herman Hesse", "herman.hesse@email.com", "AL"),
("Clarice Lispector", "clarice.lispector@email.com", "BR"),
("Isaac Asimov", "isaac.asimov@email.com", "EUA");

select * from autores;   

create table livros(
	id_livro int not null auto_increment,
    titulo varchar(150) not null,
    edicao int not null,
    paginas int not null,
    ISBN char(5),
    id_editora int,
    id_autor int,
    primary key(id_livro)
	);
    
insert into livros(titulo,edicao,paginas,ISBN,id_editora,id_autor) values
("O Mistério do Relógio", 1, 250, "12345",5,1),
("A Cidade dos Sonhos", 2, 300, "23456",2,2),
("Viagem ao Centro da Terra", 1, 200, "34567",8,3),
("A Revolução dos Bichos", 1, 150, "45678",4,4),
("O Pequeno Príncipe", 1, 120, "56789",7,5),
("1984", 1, 400, "67890",1,6),
("Dom Casmurro", 1, 350, "78901",2,7),
("O Senhor dos Anéis", 3, 600, "89012",4,8),
("A Arte da Guerra", 1, 180, "90123",2,9),
("O Cortiço", 1, 300, "01234",8,10),
("O Alquimista", 1, 240, "12346",1,11),
("A Metamorfose", 1, 100, "23457",6,12),
("Cidades Invisíveis", 1, 220, "34568",5,13),
("A Estrada da Noite", 1, 280, "45679",8,14),
("O Amor nos Tempos do Cólera", 1, 320, "56780",3,15),
("A Montanha Mágica", 1, 150, "67891",6,16),
("As Aventuras de Sherlock Holmes", 1, 400, "78902",2,17),
("O Livro do Desassossego", 1, 360, "89013",4,18),
("O Fim da Eternidade", 1, 300, "90124",3,19),
("A Morte de Ivan Ilitch", 1, 140, "01235",2,20);    

select * from livros;

select livros.titulo, livros.paginas, editoras.nome,editoras.cidade
from livros inner join editoras
on livros.id_editora = editoras.id_editora;

select livros.id_livro, livros.titulo, autores.nome, autores.email
from livros inner join autores
on livros.id_autor = autores.id_autor;