-- Aula 06
-- Avançando com consultas

-- Ordenando as consultas (ORDER BY)

select *
from aluno_2
order by nome -- irá ordenar a partir da coluna nome da tabela referenciada

select *
from aluno_2
order by nome desc -- se colocado um DESC após, ele irá ordernar de forma descrecente

select *
from aluno_2
order by nome, id-- irá ordenar pelos dois campo, priorizando pelo nome (DESC funciona da mesma forma)

select *
from aluno_2
order by 1 -- ordena com base na posição das colunas na tabela e adicionar outros também é possível

select *
from aluno_2
order by 1 desc, nome asc -- ASC (crescente) | posso adicionar quantas colunas quiser e referenciar qual será a ordem de cada uma delas (a primeira será a principal respseitada)


-- Limitando as consultas

select *
from aluno_2
limit 2 -- limita apenas ao número que vem após o LIMIT (vai aparecer só as duas primeiras linhas nesse caso)

select *
from aluno_2
order by id -- também posso adicionar por coluna pra ajudar na visualização
limit 2

select *
from aluno_2
limit 2
offset 1 -- aqui eu digo quantos registros eu quero pular para começar minha consulta. ou seja, aqui ele vai pular o primeiro registro e pegar os próximos 2 apenas

-- Funções de agregação

-- COUNT, SUM, MAX, MIN, AVG

select count(id) -- COUNT -- retorna a quantiade de registros
from aluno_2

select SUM(idade) -- SUM -- retorna a soma dos registros (quando numéricos)
from aluno

select MAX(idade) -- MAX -- retorna o maior valor dentre os registros
from aluno


select MIN(idade) -- MIN -- retorna o menor valor dentre os registros
from aluno

select AVG(idade) -- AVG -- retorna a média dos registros (quando numéricos)
from aluno

-- Agrupando consultas (GROUP BY)

select distinct nome, idade -- DISTINCT (remove linhas duplicadas do resultado.)
from aluno
group by nome, idade-- Agrupa os registros com mesmo nome e mesma idade.
order by nome


-- Filtrando consultas agrupadas

select cursos.nome, count(aluno_2)
from cursos
left join cursos_aluno_2 on cursos_aluno_2.curso_id = cursos.id 
left join aluno_2 on aluno_2.id = cursos_aluno_2.aluno_2_id
group by 1
having count(aluno_2.id) <> 0 -- para fazer filtro (como o WHERE) para agrupamentos é necessário usar o HAVING

