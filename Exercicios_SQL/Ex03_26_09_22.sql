-- 3.1
create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias ( id bigint (20) auto_increment,
	setor varchar (30) not null,
	prescricao boolean not null,
    primary key (id)
);
-- 3.4
insert into tb_categorias (setor, prescricao) values ("Cosmeticos",false);
insert into tb_categorias (setor, prescricao) values ("Higiene Pessoal",false);
insert into tb_categorias (setor, prescricao) values ("Medicamentos",true);
insert into tb_categorias (setor, prescricao) values ("Baby",false);
-- 3.2
create table tb_produtos ( id bigint (15) auto_increment,
	nome_prod varchar (255) not null,
	und_prod int not null,
    preco_prod double,
    data_cadastro datetime not null,
    cadastro_id bigint,
    primary key (id),
    foreign key (cadastro_id) references tb_categorias (id) -- 3.3
);
-- teste
select * from tb_categorias;
select * from tb_produtos;
-- 3.5
insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Cotonete",100,3.50,'2020-08-10 10:00:00',2); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Algodão",10,8.70,'2020-09-02 10:10:00',2); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Dipirona Gen",1, 17.20,'2020-08-10 10:00:00',3); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Zopiden",60, 300.80,'2020-08-10 10:00:00',3);
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Bandaid",15,9.90,'2020-09-02 10:10:00',2); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Cleasing Oil Hada Labo",1,101.00,'2020-09-02 10:10:00',1); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Fralda Huggies pp",150,120.00,'2020-09-02 10:10:00',4); 
 
 insert into tb_produtos (nome_prod, und_prod, preco_prod, data_cadastro, cadastro_id)
 values ("Lenço umedecido Johnson",1,20.00,'2020-08-10 10:00:00',4); 
 -- teste
 select * from tb_produtos;
 -- 3.6
 select * from tb_produtos where preco_prod > 50.00;
 -- 3.7
 select * from tb_produtos where preco_prod > 5.00 and preco_prod < 60.00;
 -- 3.8
 select * from tb_produtos where nome_prod like "%C%";
 -- 3.9
 select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.cadastro_id;
 -- 3.10
 select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.cadastro_id where tb_categorias.setor like "%cosme%";

  
 