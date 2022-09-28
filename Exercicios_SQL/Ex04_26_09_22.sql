
-- 4.1
create database db_cidade_dos_vegetarianos;

use db_cidade_dos_vegetarianos;

create table tb_categoria ( id bigint (10) auto_increment,
	tipo varchar (30) not null,
    peso varchar (30) not null,
    primary key (id) 	
);
-- 4.4
insert into tb_categoria (tipo, peso) values ("Vegetais","Kg");
insert into tb_categoria (tipo, peso) values ("Hortaliças","Pct");
insert into tb_categoria (tipo, peso) values ("Grãos","g");
insert into tb_categoria (tipo, peso) values ("Frutas","Kg");
insert into tb_categoria (tipo, peso) values ("Ovos","Cx");
-- teste
select * from tb_categoria;
-- 4.2
create table tb_produtos ( id bigint (8) auto_increment,
	nome varchar (30) not null,
    preco double,
    quantidade int not null,
	fornecedor varchar (30) not null,
    tipo_id bigint,
    primary key (id),
    foreign key (tipo_id) references tb_categoria (id) -- 4.3  
);
-- 4.5
insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Alface Crespa",2.00, 400, "Organic Fazenda",2);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Alface liso",3.50, 400, "Organic Fazenda",2);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Broculis",10.00, 200, "Organic Fazenda",1);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Cenoura",4.70, 800, "Organic Fazenda",1);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Grão de bico",6.00, 800, "Organic Fazenda",3);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Ovo Caipira",15.00, 60, "Organic Fazenda",5);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Banana Nanica",7.20, 400, "Organic Fazenda",4);
 
 insert into tb_produtos (nome, preco, quantidade, fornecedor, tipo_id)
 values ("Melância",14.00, 80, "Organic Fazenda",4);
 
-- teste
select * from tb_produtos;
-- 4.6 valores inseridos abaixo de 50,00
select * from tb_produtos where preco > 10.00;
-- 4.7
-- select * from tb_produtoss where preco > 50.00 and preco < 150.00;  como não foi inserido valores neste intervalo considerar o teste.

-- 4.8
select * from tb_produtos where nome like "%C%";
-- 4.9
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id;
-- 4.10
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.tipo_id where tb_categoria.tipo like "%fru%";