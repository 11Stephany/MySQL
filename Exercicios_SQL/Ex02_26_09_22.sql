
-- 2.1
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria ( id bigint (5) auto_increment,
	sabores varchar (10) not null,
    size varchar (10) not null,
    primary key (id) 	
);
-- 2.4
insert into tb_categoria (sabores, size) values ("Salgado","Broto");
insert into tb_categoria (sabores, size) values ("Salgado","Média");
insert into tb_categoria (sabores, size) values ("Salgado","Família");
insert into tb_categoria (sabores, size) values ("Doce","Broto");
insert into tb_categoria (sabores, size) values ("Doce","Média");
insert into tb_categoria (sabores, size) values ("Doce","Família");
-- teste
select * from tb_categoria;
-- 2.2
create table tb_pizzas ( id bigint (8) auto_increment,
	nome_pizza varchar (30) not null,
    preco_pizza double,
    borda_recheada varchar (3) not null,
    massa_fina varchar (3) not null,
    tipo_id bigint,
    primary key (id),
    foreign key (tipo_id) references tb_categoria (id) -- 2.3  
);
-- 2.5
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Mussarela",30.00 , "nao", "sim",3);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Calabreza",30.00 , "sim", "sim",4);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Broculis I",38.50 , "sim", "sim",4);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Broculis II",40.00 , "nao", "sim",3);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Frango c/ milho",35.80 , "nao", "sim",3);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Frango c/ catupiry",40.00 , "sim", "sim",4);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Julieta",32.00 , "nao", "sim",5);
 
insert into tb_pizzas (nome_pizza, preco_pizza, borda_recheada, massa_fina, tipo_id)
 values ("Chocolate c/ morango",38.00, "sim", "sim",7);
 
-- 2.6 valores inseridos abaixo de 45,00
select * from tb_pizzas where preco_pizzas > 35.00;
-- 2,7
-- select 8 from tb_pizzas where preco_pizza > 50.00 and preco_pizza < 100.00;  como não foi inserido valores neste intervalo considerar o teste.alter

-- 2.8
select * from tb_pizzas where nome_pizza like "%M%";
-- 2.9
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.tipo_id;
-- 2.10
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.tipo_id where tb_categoria.sabores like "%doce%";



