-- -----------------------------------------------------
-- Alterações DDL
-- -----------------------------------------------------

alter table passatempo.cliente
	add column pontuacao INT;

alter table passatempo.departamento
	drop column descricaoAtividades;
    
alter table passatempo.departamento
	add column descricao varchar(200) null;
    
alter table passatempo.autor
	rename column Biografia to bio;

alter table passatempo.cliente
	add genero CHAR(1);
    
alter table passatempo.pagamento
	modify FormaPagamento VARCHAR(16) NOT NULL;
    
rename table 
	passatempo.livro TO passatempo.livros;

alter table passatempo.autor
	add CPF VARCHAR(14);

alter table passatempo.autor
	add linkfoto VARCHAR(255);
    
alter table passatempo.autor
	add genero CHAR(1);
    
    
SHOW COLUMNS FROM passatempo.cliente;
SHOW COLUMNS FROM passatempo.autor;
SHOW COLUMNS FROM passatempo.livro;
SHOW COLUMNS FROM passatempo.pagamento;
SHOW COLUMNS FROM passatempo.departamento;
