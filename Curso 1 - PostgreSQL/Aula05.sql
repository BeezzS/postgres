-- Aula 05
-- CASCADE

-- DELETE CASCADE

create table aluno_curso (
	aluno_id integer,
	cursoo_id integer,
	
	primary key (aluno_id, cursoo_id),
	foreign key (aluno_id) references aluno_2(id)
	on delete cascade, -- isso permite que, a partir de uma exclusao em uma das tabelas 'pai', os relacionamentos serão excluídos juntos. 
	-- sem o cascade, ele atua como RESTRICT, o que impede a exclusão
	-- se uma tabela pai estiver com CASCADE e outra com RESTRICT, a exclusão com relacionamentos será feita apenas na com CASCADE
)

-- UPDATE CASCADE

create table aluno_curso (
	aluno_id integer,
	cursoo_id integer,
	
	primary key (aluno_id, cursoo_id),
	foreign key (aluno_id) references aluno_2(id)
	on delete cascade
	on update cascade -- realiza a atualização em todos os relacionamentos, seguindo o mesmo princípio do DELETE
)


update aluno_2
set id = 28 -- a partir disso, é possível fazer esse update
where id = 3




