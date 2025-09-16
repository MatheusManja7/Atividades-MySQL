create database HubStore;
use HubStore;

create table pedido_prods(
	ID_Pedido varchar(20) not null,
    Data_Pedido varchar(20),
    ID_Cliente varchar(20),
    Segmento varchar(20),
    Pais varchar(20),
    Cidade varchar(20),
    Estado varchar(20),
    ID_Produto varchar(20),
    Categoria varchar(20),
    SubCategoria varchar(20),
    Valor_Venda decimal(10,2)
);

select * from pedido_prods;

-- Atividades
-- 01
SELECT COUNT(DISTINCT ID_Cliente) AS Total_Clientes
FROM pedido_prods;
-- O DISTINCT é usado para eliminar linhas duplicadas e exibir uma lista única de valores

-- 02
select count(pedido_prods.ID_Pedido) as Quantidade_de_Pedidos
from pedido_prods
where ID_Cliente = 'BH-11710';

-- 03
select sum(pedido_prods.Valor_Venda) as Valor_total_venda
from pedido_prods
where ID_Cliente = 'BH-11710';

-- 04
select Categoria, SUM(Valor_Venda) AS Total_Gasto
from pedido_prods
where ID_Cliente = 'BH-11710'
group by Categoria;

-- 05
select count(ID_Pedido) as Quantidade_Pedidos
from pedido_prods
where ID_Cliente = 'AA-10315';

-- 06
select ID_Cliente, SUM(Valor_Venda) as Valor_Total
from pedido_prods
group by ID_Cliente;

-- 07
select Categoria, count(ID_Pedido) as Total
from pedido_prods
group by Categoria;

-- 08
select Segmento, count(ID_Pedido) as Total
from pedido_prods
group by Segmento;

-- 09
select Cidade, count(ID_Pedido) as Total
from pedido_prods
group by Cidade
order by Total desc
limit 5;

-- 10
select Estado, count(ID_Pedido) as Total
from pedido_prods
group by Estado
order by Total desc;










