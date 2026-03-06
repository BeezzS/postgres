-- Aula 03 
-- Consultas com filtros

-- Novos inserts para estudo


insert into aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
) values (
	'Vicente',
	'23456789012',
	'Aluno novo na turma',
	30,
	15.75,
	1.80,
	true,
	'1995-06-12',
	'10:00:00',
	'2026-03-06 10:00:00'
);

insert into aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
) values (
	'Sandra',
	'34567890123',
	'Boa participação nas aulas',
	27,
	32.40,
	1.68,
	true,
	'1998-02-25',
	'15:30:00',
	'2026-03-06 15:30:00'
);


insert into aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
) values (
	'Sandra Pereira',
	'12356987401',
	'Observacao',
	24,
	28.12,
	1.72,
	true,
	'2003-09-10',
	'12:00:00',
	'2026-03-06 12:00:00'
);

insert into aluno (nome) values ('Fulano');


-- Alias (AS)
select nome as "Nome do Aluno",
idade as "Idade do Aluno",
matriculado_em as "Quando se Matriculo"
from aluno;

-- Filtro de campos do tipo STRING

select *
from aluno
where nome = 'Sandra'

select *
from aluno
where nome <> 'Sandra' -- diferente ou !=


select *
from aluno
where nome like 'Sandra' -- retonra registros parecidos 

select *
from aluno
where nome like '_andra' -- Aonde estiver o underscore, ele vai procurar pelas demais letras

select *
from aluno
where nome not like 'Sandra' -- retonra registros que não estejam parecidos

select *
from aluno
where nome like 'S%' -- retorna registros que atendam à condição que vem antes, entre ou depois do percentual

select *
from aluno
where nome like 'S%' -- retorna registros que atendam à condição que vem antes, entre ou depois do percentual

-- Filtrando campos dos tipos numérico, data e booleano

select *
from aluno
where cpf is null -- quando por valores booleanos, é necessário usar o IS ou IS NOT ao inves do = ou Like

select *
from aluno
where idade = 22 -- <> ou != (diferente), < e > >= e <= (maior ou menor ou igual)

select *
from aluno
where idade between 22 and 24 -- todos os registros que estão entre o range estipulado --> funciona pra todos os tipos numéricos

select *
from aluno
where idade between 22 and 24

-- Operadores E e OU

select *
from aluno
where nome like 'S%' -- primeira condição
and idade > 20 -- segunda condição (algo mais alguma coisa)
-- os dois têm que ser verdadeiros

select *
from aluno
where nome like 'S%'
or nome not like 'V%' -- segunda condição (Ou um ou outro e eu também posso adicionar outros or ou and)
-- apenas um dos dois precisa ser verdadeiro

select *
from aluno
where nome like 'S%'
or nome not like 'V%' -- segunda condição (Ou um ou outro e eu também posso adicionar outros or ou and)











