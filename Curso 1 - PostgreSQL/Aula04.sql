-- Aula 04
-- Criando tabela com chave primária

create table cursos (
	-- unique --> ele é unico e não pode se repetir
	-- os campos não podem ser nulos
	-- chaves primárias não podem ser nulas e nem se repetir
	id integer not null unique, 
	nome varchar(255) not null
);

insert into cursos (id, nome) values (1, 'curso 1');
insert into cursos (id, nome) values (2, 'curso 2');
insert into cursos (id, nome) values (3, 'curso 3');

-- Criando tabela com chave estrangeira

create table aluno_2 (
	-- serial primary key --> outra forma de definir chave primária
	id serial primary key, 
	nome varchar(255) not null
);

insert into aluno_2 (nome) values ('aluno 1');
insert into aluno_2 (nome) values ('aluno 2');
insert into aluno_2 (nome) values ('aluno 3');

create table cursos_aluno_2 (
	aluno_2_id integer,
	curso_id integer,
	primary key (aluno_2_id, curso_id),
	foreign key (aluno_2_id) references aluno_2 (id)
);

insert into cursos_aluno_2 (aluno_2_id, curso_id) values (1,1);
insert into cursos_aluno_2 (aluno_2_id, curso_id) values (2,1);

-- a chave estrangeira é importante para não permitir que se inclua ou busque indevidamente um registro inexistente no banco de dados;


-- Consultas com relacionamentos

insert into cursos_aluno_2 (aluno_2_id, curso_id) values (2,2)

select aluno_2.nome as "Nome do Aluno", cursos.nome as "Nome do Curso" from aluno_2
join cursos_aluno_2 on cursos_aluno_2.aluno_2_id = aluno_2.id
join cursos on cursos.id = cursos_aluno_2.curso_id

-- join faz uma junção entre tabelas, buscas os dados que estão em ambas as tabelas selecionadas.

-- LEFT, RIGHT, CROSS e FULL JOINS

-- LEFT

-- ele me retorna todos os dados da tabela da esquerda + a intersecção

select aluno_2.nome as "Nome do Aluno", cursos.nome as "Nome do Curso" from aluno_2
left join cursos_aluno_2 on cursos_aluno_2.aluno_2_id = aluno_2.id
left join cursos on cursos.id = cursos_aluno_2.curso_id 

-- RIGHT

-- ele me retorna todos os dados da tabela da direita + a intersecção

select aluno_2.nome as "Nome do Aluno", cursos.nome as "Nome do Curso" from aluno_2
right join cursos_aluno_2 on cursos_aluno_2.aluno_2_id = aluno_2.id
right join cursos on cursos.id = cursos_aluno_2.curso_id

-- FULL
-- retorna todos os dados das tabelas e faz os relacionamentos, mesmo que esteja vazio

select aluno_2.nome as "Nome do Aluno", cursos.nome as "Nome do Curso" from aluno_2
full join cursos_aluno_2 on cursos_aluno_2.aluno_2_id = aluno_2.id
full join cursos on cursos.id = cursos_aluno_2.curso_id

-- CROSS

-- combina cada linha da primeira tabela com todas as linhas da segunda

select aluno_2.nome as "Nome do Aluno", cursos.nome as "Nome do Curso" from aluno_2
cross join cursos




