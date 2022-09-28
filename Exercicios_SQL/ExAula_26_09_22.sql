create database db_lojagen;

use db_lojagen;

create table tb_categorias (id bigint (5)auto_increment,	
    descricao varchar (255) not null,
    primary key (id)
    );
    
create table tb_produtos (id bigint (5)auto_increment,
	nome varchar (255) not null,
	preco decimal not null,
    qt_produto int not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categorias (id)
);

insert into tb_categorias (descricao) values (" perifericos ");
insert into tb_categorias (descricao) values (" software ");
insert into tb_categorias (descricao) values (" adesivos");

select * from tb_categorias;

insert into tb_produtos ( nome, preco, qt_produto,categoria_id) values ("mouse",20.00,4,1);

select * from tb_produtos;

delete from tb_categorias where id = 2 or id= 5;

select * from tb_categorias;

delete from tb_categorias where id = 6;

select * from tb_categorias;

insert into tb_produtos ( nome, preco, qt_produto,categoria_id) values ("meninas super poderosas",10.00,2,4);
insert into tb_produtos ( nome, preco, qt_produto,categoria_id) values ("workbench",2.50, 20,3);

select * from tb_produtos where nome = "mouse";

select * from tb_produtos right join tb_categorias on 
tb_produtos.categoria_id = tb_categorias.id;




