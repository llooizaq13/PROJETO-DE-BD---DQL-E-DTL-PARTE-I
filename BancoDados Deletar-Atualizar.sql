-- -----------------------------------------------------
-- Atualizar/Deletar DML
-- -----------------------------------------------------

-- ATUALIZAR 10

-- 01

update funcionario
set telefone = '8199999.6666'
	where CPFFuncionario = '70707070707';

-- 02
    
update cliente 
set email = 'jaozinho23@gmail.com' 
	where CPFCliente = '12345678900';
 
-- 03
 
update funcionario 
set Salario = Salario * 2 
	where CPFFuncionario = '10101010101';
    
-- 04

update livro 
set genero = "CONFIDENCIAL"
	where IDISBN = '9345627834841';
    
-- 05

update status 
set descricao = "Na Gerência"
	where IDPedidosVendas = '101';
    
-- 06

update cargo 
set Nome = 'Curadoria' 
	where IDCargo = '1259486';
    
-- 07

update trabalhar 
set DataFim = '2026-12-31'
	where CPFFuncionario = '20202020202';
    
-- 08

update exemplar 
set StatusExemplares = 'Esgotado' 
	where IDISBN = '4567892310001';
    
-- 09

update enderecof 
set complemento = 'Casa 24'
	where CPFFuncionario = '10101010101';
    
-- 10

update pedidovenda 
set DataTransacoes = "2026-04-23"
	where IDPedidosVendas = '101';

        
-- DELETAR 10

-- Evitar erro 1175.
SET SQL_SAFE_UPDATES = 0;
        
-- 01 

delete from funcionario
	where CPFFuncionario = '10101010101';

-- 02

delete from pagamento
	where IDPedidosVendas = 101;
    
-- 03

delete from pedidovenda
	where IDPedidosVendas = 102;
    
-- 04

delete from cliente
	where nome = 'Carlos';

-- 05

delete from pagamento
	where local = 'online';
    
-- 06

delete from enderecof
	where cidade = 'Paulista';
    
-- 07

delete from areaconhecimento
	where area like 'Meio Ambiente';
    
-- 08 

delete from exemplar
	where statusexemplares like 'vendido';
    
-- 09

delete from trabalhar
 where datafim <'2000-01-01';
 
-- 10

delete from cliente
 where email = 'A%';

    
    
    
    