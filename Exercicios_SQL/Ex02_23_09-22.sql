-- 2.1
create database ecommerce_category;
use ecommerce_category;
-- 2.2
create table products(
	id bigint (8) auto_increment,
    nome varchar (20) not null,
    categoria varchar (20) not null,
    registro bigint (4),
    valor double,
    ativo boolean,
    primary key (id)
);
-- 2.3
insert into products (nome,categoria,registro,valor,ativo) values ("banana","frutas",1010,400.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("melancia","frutas",1012,350.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("maça","frutas",1013,500.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("orquidea","flores",2010,510.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("rosas","flores",2011,250.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("cactos","flores",2012,400.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("bolsa sustentavel","ecobag",3010,655.00,true); 
insert into products (nome,categoria,registro,valor,ativo) values ("vazos","itens jardim",3020,40.00,true); 
-- checagem
select * from products;
-- 2.4
select * from products where valor > 5000;
-- 2.5
select * from products where valor < 5000;
-- checagem
select * from products;
-- 2.6
update products set ativo = false, valor = 3520.00	where id = 4;
-- checagem
select * from products;
update products set valor = 5210.00	where id = 5;
update products set ativo = true, valor = 3520.00	where id = 4;
update products set valor = 5001.00	where id = 7;
select * from products where valor > 5000;
-- 2.5
select * from products where valor < 5000;
-- checagem
select * from products;