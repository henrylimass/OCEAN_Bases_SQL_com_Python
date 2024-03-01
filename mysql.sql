create database if not exists curso_python_sql;
use curso_python_sql;

create table if not exists aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar (30) not null,
uf_aluno char(2) not null,
telefone_aluno bigint not null,
altura decimal (3,2)not null
);


create table if not exists professor(
id_professor int auto_increment primary key,
nome_professor varchar(30) not null,
UF_professor char(2) not null,
telefone_professor bigint not null,
altura_professor decimal(3,2),
id_aluno int,
constraint fk_AlunoProfessor foreign key(id_aluno) references aluno (id_aluno)
);




alter table aluno change column altura altura_aluno decimal(3,2) not null;


-- DML

insert into aluno(nome_aluno, uf_aluno, telefone_aluno, altura_aluno) values 
("Marcos", "RJ", 21965653232, 1.80);

insert into aluno(nome_aluno, uf_aluno, telefone_aluno, altura_aluno) values 
("Izabel", "MG", 31965653232, 1.82),
("Pedro", "SP", 11965653232, 1.81),
("Tania", "AM", 92965653232, 1.83),
("Airton", "PR", 41965653232, 1.85);

insert into aluno values
(default, "Robson", "MT", 65965653232, 1.86),
(default, "Priscila", "RO", 69965653232, 1.87),
(default, "Rafael", "PA", 91965653232, 1.88);

insert into professor(nome_professor, UF_professor, telefone_professor, altura_professor, id_aluno)values
("Danilo", "MG", 35985857474, 1.78, 5);

select professor.nome_professor, aluno.nome_aluno from professor inner join aluno on aluno.id_aluno = professor.id_aluno;

-- update aluno set uf_aluno = "AL" where id_aluno = '2';
-- update aluno set uf_aluno = "AL", nome_aluno ="Izabel Alves" where id_aluno = '2';

-- delete from aluno where id_aluno = '4';


-- DQL

-- select * from aluno;
-- select * from aluno order by nome_aluno;
-- select nome_aluno, altura_aluno from aluno where altura_aluno < '1.84' order by nome_aluno;

-- select nome_aluno, altura_aluno from aluno order by nome_aluno and nome_aluno;

-- select * from aluno where altura_aluno between '1.82' and '1.84' order by nome_aluno;
-- select count(nome_aluno) from aluno;
