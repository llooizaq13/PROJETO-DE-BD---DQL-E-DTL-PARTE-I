-- -----------------------------------------------------
-- Views DDL
-- -----------------------------------------------------

-- 01 Saber os dados de contato do cliente.

create view ClienteContato as
select nome, telefone, email
from cliente;

select * from ClienteContato;

-- 02 Os livros maiores.

create view LivrosGrandes as
select IDISBN, titulo, NumeroPaginas
from livro
where NumeroPaginas > 400;

select * from LivrosGrandes;

-- 03 Os livros menores.

create view LivrosPequenos as
select titulo, NumeroPaginas
from livro
where NumeroPaginas < 400;

select * from LivrosPequenos;

-- 04 Os livros entre determinados números.

create view LivrosEntre as
select titulo, numeroPaginas
from livro
where NumeroPaginas between 100 and 300;

select * from LivrosEntre;

-- 05 Livros por gênero.

create view LivrosGenero as
select genero, count(*) as TotalLivros
from livro
group by genero;

select * from LivrosGenero;

-- 06 Funcionarios com salario maior.

create view FunSalarioMaior as
select Nome, Salario
from funcionario
where Salario > 2000.00;

select * from FunSalarioMaior;

-- 07 Livros publicados depois de 2000.

create view Livros2000 as
select titulo, dataPublicacao
from livro
where year (dataPublicacao) >= 2000;

select * from Livros2000;

-- 08 Funcionario acima dos 30.

create view FuncionariosMais30 as
select Nome, DataNascimento
from funcionario
where year(now()) - year(DataNascimento) > 30;

select * from FuncionariosMais30;

-- 09 Últimos livros publicados.

create view LivrosRecentes as
select titulo, dataPublicacao
from livro
order by dataPublicacao desc;

select * from LivrosRecentes;

-- 10 Livros mais antigos até o mais novo.

create view LivrosAntigos as
select titulo, dataPublicacao
from livro
order by dataPublicacao asc;

select * from LivrosAntigos;


