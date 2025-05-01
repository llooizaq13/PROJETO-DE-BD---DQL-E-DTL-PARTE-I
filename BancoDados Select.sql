-- -----------------------------------------------------
-- Select DQL
-- -----------------------------------------------------

-- 1. Quantos livros a editora possui?

SELECT COUNT(*) AS TotalLivros
FROM livro;

-- 2. Quem é o responsável por cada departamento?

SELECT Nome, Responsavel
FROM departamento;

-- 3. Quantidade de pedidos em andamento.

SELECT COUNT(*) AS Totalemandamento
FROM status
WHERE Descricao = 'Em Processamento';

-- 04. Quem são os funcionarios que recebem acima de 2.000?

select Nome, Salario
from funcionario
where Salario > 2000;

-- 05. Mostrar a quantidade de livros que cada gênero possui.

select Genero, COUNT(*) as Quantidade
from livro
group by Genero;

-- 6. Filtrar clientes por bairro.

select cidade, CPFCliente
FROM enderecoc
WHERE cidade = 'Recife';  

-- 07. Quem os clientes nascimentos antes de 2015?

select nome, email, datanascimento
from cliente
where datanascimento < '2005-01-01';

-- 08. Quais os livros com mais de 300 páginas?

select Titulo, numeropaginas
from livro
where NumeroPaginas > 300;

-- 09. Livros que começam com a letra "O".

select Titulo, Genero
from livro
where Titulo like 'O%';

-- 10. Listar os livros com maior número de páginas do maior para o menor.

select Titulo, NumeroPaginas
from livro
order by NumeroPaginas desc;

-- 11. Livros publicados antes de 2000.

SELECT titulo, dataPublicacao
FROM livro
WHERE YEAR(dataPublicacao) < 2000;

-- 12. Funcionários que nasceram no mesmo ano.

SELECT f1.Nome AS Funcionario1, f2.Nome AS Funcionario2, YEAR(f1.DataNascimento) AS AnoNascimento
FROM funcionario f1
JOIN funcionario f2 ON YEAR(f1.DataNascimento) = YEAR(f2.DataNascimento)
                   AND f1.CPFFuncionario > f2.CPFFuncionario
ORDER BY AnoNascimento;

-- 13. Exibir os nomes dos cargos ordenados alfabeticamente.

select Nome
from cargo
order by Nome asc;

-- 14. Exibir os nomes dos clientes ordenados alfabeticamente.

select Nome
from cliente
order by Nome asc;

-- 15. Títulos dos livros com menos de 300 páginas.

select Titulo
from livro
where NumeroPaginas < 300;

-- 16. Clientes com mais de 20 anos.

select Nome, DataNascimento
from cliente
where year (CURDATE()) - year(DataNascimento) > 20;

-- 17. Funcionario que recebe menos.

select Nome, Salario
from funcionario
order by Salario ASC
limit 1;

-- 18. IDISBN que estão como reservado status.

select IDISBN
from exemplar
where StatusExemplares = 'Reservado';

-- 19. Livros lançados em 2013

select l.Titulo, l.DataPublicacao
from Livro l
where year (l.DataPublicacao) = 2013;

-- 20. Funcionarios que nasceram antes de 2000.

select f.Nome, f.DataNascimento
from Funcionario f
where f.DataNascimento < '2000-01-01';

