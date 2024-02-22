-- DDL

create database if not exists curso_python_SQL;
use curso_python_SQL;

create table if not exists aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(30) not null,
uf_aluno char(2) not null,
telefone_aluno bigint not null,
altura decimal(3,2) not null
);

alter table aluno change column altura altura_aluno decimal(3,2) not null;
alter table aluno add column naturalidade_aluno varchar(30) not null;
alter table aluno drop column naturalidade_aluno;
alter table aluno modify column uf_aluno varchar(30);

-- DML

insert into aluno(nome_aluno, uf_aluno, telefone_aluno, altura_aluno) values 
("Izabel", "MG", 31965653232, 1.82),
("Pedro", "SP", 11965653232, 1.81),
("Tania", "AM", 92965653232, 1.83),
("Airton", "PR", 41965653232, 1.85);

insert into aluno values
(default, "Robson", "MT", 65965653232, 1.86),
(default, "Priscila", "RO", 69965653232, 1.87),
(default, "Rafael", "PA", 91965653232, 1.88);


update aluno set nome_aluno = "izabel alve;" where id_aluno = '2';
delete from aluno where id_aluno = '4';


-- DQL

-- Select * from aluno;
-- select * from aluno order by nome_aluno desc;
-- select * from aluno order by nome_aluno desc;
--select nome_aluno, uf_aluno from aluno order by nome_aluno;