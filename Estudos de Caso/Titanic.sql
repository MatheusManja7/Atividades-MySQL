create database Titanic;
use Titanic;

create table passengers(
	Passengerid int not null primary key,
    Survived char(1) not null,
    Pclass int not null,
    last_name varchar(100) not null,
    first_name varchar(100) not null,
    Sex char(6),
    Age char(5),
    SibSp int,
    Parch int,
    Ticket varchar(20),
    Fare float,
    Cabin varchar(50) default null,
    Embarked char(2)
);

load data infile '/var/lib/mysql-files/titanic2.csv'
into table passengers
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from passengers;



-- 01
select  passengers.Passengerid,  passengers.Ticket as Número_Bilhete, passengers.first_name as nome
from passengers
where Passengerid = 144;

-- 02
select count(passengers.Age) as Menores_de_18
from passengers
where Age < 18;

-- 03
select count(passengers.Survived) as Sobreviventes
from passengers
where Survived = 1;

-- 04
select count(passengers.Survived) as Falecimentos
from passengers
where Survived = 0;

-- 05
select passengers.Survived as sobreviveu, passengers.first_name as nome
from passengers
where Passengerid = 395;

select passengers.Survived as sobreviveu, passengers.last_name
from passengers
where last_name = 'Thomas';

-- 06
select count(passengers.Sex) as mulheres_total
from passengers
where Sex = 'female';

-- 07
select count(passengers.Sex) as homens_total
from passengers
where Sex = 'male';

-- 08
select count(passengers.Age) as total_idade_entre_25e35
from passengers
where Age >= 25 AND Age <= 35;

-- 09
select count(passengers.Pclass) as total_pessoas_primeira_classe
from passengers
where Pclass = 1;

-- 10
select count(*) as Mulheres_acima_de_30_anos
from passengers
where Sex = 'female' AND Age > 30;

-- 11
select passengers.Fare as Tarifa, passengers.last_name
from passengers
order by Fare desc
limit 1;

-- 12
select AVG(passengers.Fare) as Media_tarifa_1class
from passengers
where Pclass = 1;

select AVG(passengers.Fare) as Media_tarifa_1class
from passengers
where Pclass = 2;

select AVG(passengers.Fare) as Media_tarifa_1class
from passengers
where Pclass = 3;

-- 14
select passengers.Age
from passengers
order by Age desc
limit 1;






