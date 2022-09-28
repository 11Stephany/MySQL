
-- 1.1
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (id bigint (5) auto_increment,
	estilo varchar (100) not null,-- confirmar 
    classe varchar (100) not null,  
    primary key (id)
);
-- 1.2
create table tb_personagens (id bigint (5) auto_increment,
	nome varchar (100) not null,    
	genero char (1),
    xp_ataque decimal not null,
    xp_defesa decimal not null,
    xp_precisao decimal not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_classes (id)  -- 1.3
    );
-- 1.4 teste com 3 classes.estilo
insert into tb_classes (estilo, classe) values (" Arqueiro ","junior");
insert into tb_classes (estilo, classe) value (" Guerreiro ","pleno");
insert into tb_classes (estilo, classe) value (" Feiticeiro ", "senior");
-- checagem
select * from tb_classes;
-- 1.5 teste com 5 duas vezes inserido
insert into tb_personagens (nome, genero, xp_ataque, xp_defesa, xp_precisao, categoria_id) values (
"Crystal", 'f', 2500, 1800, 2200, 1);
insert into tb_personagens (nome, genero, xp_ataque, xp_defesa, xp_precisao, categoria_id) values (
"Scar", 'm', 1600, 1700, 1200, 2);
insert into tb_personagens (nome, genero, xp_ataque, xp_defesa, xp_precisao, categoria_id) values (
"Maxx", 'm', 3400, 3000, 2999, 3);
insert into tb_personagens (nome, genero, xp_ataque, xp_defesa, xp_precisao, categoria_id) values (
"Maris", 'f', 1800, 2000, 1400, 2);
insert into tb_personagens (nome, genero, xp_ataque, xp_defesa, xp_precisao, categoria_id) values (
"May", 'f', 2500, 3400, 2650, 1);
-- checagem
select * from tb_personagens;
-- teste joins
select * from tb_personagens right join tb_classes on 
tb_personagens.categoria_id = tb_classes.id;
-- 1.6
select * from tb_personagens where xp_ataque > 2000;
-- 1.7
select * from tb_personagens where xp_defesa > 1000 and xp_defesa < 2000;
-- 1.8
select * from tb_personagens where nome like "%C%";
-- 1.9
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.categoria_id;
-- 1.10
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.categoria_id where tb_classes.estilo like "%Arqu%";












    
    
    
    
    
    
