-- 1.1
create database rh_colaboradores;
-- 1.2
create table dados_colaboradores (
    id bigint (5) auto_increment,   
    nome varchar (30) not null,
    cpf bigint (11),
    data_adm date,
    salario double,
    primary key (id) 
    );
-- Inclusão de atributo por não considerar id como atributo
drop table dados_colaboradores;
-- 1.2
create table dados_colaboradores (
    id bigint (5) auto_increment,
    matricula bigint (6),   
    nome varchar (30) not null,
    cpf bigint (11),
    data_adm date,
    salario double,
    primary key (id) 
    );    
-- checagem e teste
select * from dados_colaboradores;
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (000001,"Nome Um",12345678910,01/01/2022,3000.00);
-- 1.6
-- checagem e update teste
select * from dados_colaboradores;
update dados_colaboradores set data_adm = 2022/01/02, salario = 2500.00	where id = 1;
-- 1.3
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (100,"Amora",13456789110,"2021-06-01",3000.00);
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (101,"Lua",23456789110,"2015-02-20",2500.00);
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (102,"Pituka",33456789110,"2017-08-10",1800.00);
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (103,"Lily",43456789110,"2013-04-01",1850.00);
insert into dados_colaboradores (matricula, nome, cpf, data_adm, salario) values (104,"Januario",53456789110,"2016-08-12",1500.00);
-- 1.4
select * from dados_colaboradores where salario > 2000;
-- 1.5 
select * from dados_colaboradores where salario < 2000.00;