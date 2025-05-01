-- -----------------------------------------------------
-- Inserts DML
-- -----------------------------------------------------

insert into passatempo.livro
(IDISBN, numeropaginas, genero, datapublicacao, titulo)
	values
("9345627834841", "568", "Lírico", '1998-02-01', "DA INVENÇÃO À DISTRAÇÃO"),
("8439056754231", "432", "Romance", '2005-05-12', "AS SOMBRAS DA PRIMAVERA"),
("2398475623947", "389", "Ciência", '2011-09-22', "O UNIVERSO INVISÍVEL"),
("9876543210123", "512", "Ficção Científica", '2018-07-15', "O LEGADO DAS MÁQUINAS"),
("3456127890034", "298", "Suspense", '2003-10-30', "SILÊNCIO ENTRE NÓS"),
("4567892310001", "150", "Poesia", '2020-03-21', "VERSOS DE CONCRETO"),
("6655443322110", "214", "Autoajuda", '2016-11-05', "O PODER DO AGORA"),
("1928374650912", "374", "Fantasia", '2013-08-19', "LENDAS & ENCANTOS"),
("8372619048293", "420", "Filosofia", '2000-04-17', "O PENSADOR MODERNO"),
("0192837465018", "610", "Técnico", '2021-01-09', "BANCO DE DADOS DESCOMPLICADO");

select * from passatempo.livro;

insert into passatempo.areaconhecimento 
	(area, descricao, IDISBN)
    values
  ("Ciências da Saúde", "Estuda medicina, odontologia, enfermagem, farmácia, nutrição e áreas afins.","9345627834841"),
  ("Ciências Exatas", "Envolve matemática, estatística, física, química, e áreas correlatas.", "8439056754231"),
  ("Ciências Humanas", "Inclui filosofia, sociologia, antropologia, história e psicologia.","2398475623947"),
  ("Engenharia e Tecnologia", "Foca em projetos, construções e soluções técnicas para problemas diversos.","9876543210123"),
  ("Linguística, Letras e Artes", "Relaciona-se com línguas, literatura, artes visuais, música e teatro.","3456127890034"),
  ("Ciências Sociais Aplicadas", "Abrange direito, administração, economia, comunicação, e áreas similares.", "4567892310001"),
  ("Educação", "Discute processos de ensino-aprendizagem, pedagogia e políticas educacionais.","1928374650912"),
  ("Meio Ambiente", "Estuda sustentabilidade, ecologia, preservação ambiental e recursos naturais.", "8372619048293"),
  ("Informática", "Relacionada ao desenvolvimento de sistemas, banco de dados, redes e segurança digital.","90123456789"),
  ("Ciência dos Alimentos", "Analisa propriedades, qualidade e segurança de alimentos e processos de produção.","6655443322110");
  
select * from passatempo.areaconhecimento;

insert into passatempo.autor 
(IDAutor, Nome, Nacionalidade, DataNascimento, EstiloLiterario, bio, IDISBN, Obras, CPF, LinkFoto, genero)
	values
	("45856", "Fátima Larissa Santiago", "brasileira", '1998-11-17', "lirico", "Escritora, professora, mestre e concursada do estado", "9345627834841", "13", "08444683459", "https://randomuser.me/api/portraits/women/56.jpg", "f"),
    ("84596", "Eduardo Silveira", "brasileiro", '1975-08-20', "romance histórico", "Escritor premiado com vasta obra crítica.", "8439056754231", "9", "12345678901", "https://randomuser.me/api/portraits/men/11.jpg", "m"),
    ("58426", "Lívia Costa", "brasileira", '1982-03-11', "científico", "Doutora em Física, autora de livros de divulgação científica.", "2398475623947", "5", "23456789012", "https://randomuser.me/api/portraits/women/12.jpg", "f"),
    ("84597", "Carlos Montenegro", "brasileiro", '1990-12-04', "ficção científica", "Especialista em ficção futurista e IA.", "9876543210123", "7", "34567890123", "https://randomuser.me/api/portraits/men/13.jpg", "m"),
	("59632", "Renata Bezerra", "brasileira", '1987-06-19', "suspense psicológico", "Autora best-seller de thrillers psicológicos.", "3456127890034", "4", "45678901234", "https://randomuser.me/api/portraits/women/14.jpg", "f"),
	("48572", "Vinícius Duarte", "brasileiro", '1995-04-23', "poesia urbana", "Poeta contemporâneo com enfoque em temas sociais.", "4567892310001", "6", "56789012345", "https://randomuser.me/api/portraits/men/15.jpg", "m"),
	("46859", "João Henrique Lopes", "brasileiro", '1972-11-29', "fantasia", "Criador de mundos fantásticos inspirados em mitologias.", "1928374650912", "8", "78901234567", "https://randomuser.me/api/portraits/men/17.jpg", "m"),
	("58467", "Beatriz Almeida", "brasileira", '1993-01-17', "filosofia", "Pesquisadora e ensaísta de pensamento contemporâneo.", "8372619048293", "2", "89012345678", "https://randomuser.me/api/portraits/women/18.jpg", "f"),
	("87459", "Rafael Mendonça", "brasileiro", '1984-05-30', "técnico", "Especialista em banco de dados e tecnologia.", "0192837465018", "10", "90123456789", "https://randomuser.me/api/portraits/men/19.jpg", "m"),
    ("75912", "Luciana Pereira", "brasileira", '1990-03-15', "marketing", "Especialista em estratégias de marketing digital e comportamento do consumidor.", "6655443322110", "5", "98765432100", "https://randomuser.me/api/portraits/women/22.jpg", "f");
	
select * from passatempo.autor;

insert into passatempo.cargo
(IDCargo, Nome)
	values
	("1259486", "Bibliotecária"),
	("1259487", "Editor-chefe"),
	("1259488", "Revisor de Texto"),
	("1259489", "Diagramador"),
	("1259490", "Assistente Editorial"),
	("1259491", "Designer Gráfico"),
	("1259492", "Gerente de Publicações"),
	("1259493", "Coordenador de Marketing"),
	("1259494", "Analista de Direitos Autorais"),
	("1259495", "Produtor de Conteúdo");
    
 select * from passatempo.cargo;
		
insert into passatempo.cliente
(CPFCliente, Telefone, Email, DataNascimento, Nome, IDPedidosVendas, CPFFuncionario)
	values
	('12345678900', '11987654321', 'joao.silva@email.com', '1985-05-10', 'João Silva', "1", '11122233344'),
	('23456789011', '21998765432', 'maria.oliveira@email.com', '1990-08-22', 'Maria Oliveira', "2", '11122233344'),
	('34567890122', '31999887766', 'carlos.santos@email.com', '1978-03-14', 'Carlos Santos', "3", '22233344455'),
	('45678901233', '41988776655', 'ana.pereira@email.com', '1995-12-01', 'Ana Pereira', "4", '22233344455'),
	('56789012344', '51977665544', 'lucas.martins@email.com', '1989-09-09', 'Lucas Martins', "5", '33344455566'),
	('67890123455', '61966554433', 'juliana.melo@email.com', '1992-07-20', 'Juliana Melo', "6", '33344455566'),
	('78901234566', '71955443322', 'rafael.lima@email.com', '1980-01-30', 'Rafael Lima', "7", '44455566677'),
	('89012345677', '81944332211', 'beatriz.costa@email.com', '1993-06-18', 'Beatriz Costa', "8", '44455566677'),
	('90123456788', '11933221100', 'andre.souza@email.com', '1975-04-25', 'André Souza', "9", '55566677788'),
	('01234567899', '21922110099', 'larissa.fernandes@email.com', '1996-10-11', 'Larissa Fernandes', "10", '55566677788');
    
select * from passatempo.cliente;
    
insert into passatempo.funcionario
(CPFFuncionario, Nome, telefone, Salario, DataNascimento)
	values
	('10101010101', 'Lucas Almeida', '(11) 98765-4321', "3200.00", '1990-03-12'),
	('20202020202', 'Fernanda Souza', '(21) 99876-5432', 3500.00, '1990-07-25'),
	('30303030303', 'Roberta Lima', '(31) 91234-5678', 3100.50, '1995-05-19'),
	('40404040404', 'Carlos Henrique', '(41) 98700-1122', 4000.00, '1982-09-10'),
	('50505050505', 'Juliana Torres', '(51) 99999-0001', 2800.75, '1982-11-30'),
	('60606060606', 'Pedro Martins', '(61) 99881-2233', 3300.00, '1993-01-08'),
	('70707070707', 'Aline Rocha', '(71) 98888-1111', 3000.90, '1982-06-21'),
	('80808080808', 'Diego Ramos', '(81) 99777-4444', 2950.00, '1991-12-05'),
	('90909090909', 'Tatiane Vieira', '(91) 99666-7777', 3600.00, '1985-02-14'),
	('11111111111', 'Rafael Silva', '(85) 98711-2020', 3400.60, '1990-08-17');
    
select * from passatempo.funcionario;

insert into passatempo.departamento
(IDRegistro, Nome, DescricaoAtividades, Responsavel)
	values
	('D001', 'Aquisições','Coordena negociações com editoras e fornecedores.', 'Marcos Vinícius'),
    ('D002', 'Marketing', 'Desenvolve campanhas promocionais e estratégias de divulgação.', 'Fernanda Costa'),
	('D003', 'Financeiro', 'Gerencia receitas, despesas e relatórios contábeis.', 'João Pedro Andrade'),
	('D004', 'Recursos Humanos', 'Responsável por recrutamento, seleção e treinamento.', 'Ana Beatriz Lima'),
	('D005', 'Logística', 'Controla o armazenamento e a distribuição de livros.', 'Lucas Henrique Alves'),
	('D006', 'Tecnologia', 'Administra sistemas e infraestrutura de TI da editora.', 'Carla Souza Martins'),
	('D007', 'Jurídico', 'Cuida dos contratos e aspectos legais da editora.', 'Ricardo Monteiro'),
	('D008', 'Editorial', 'Supervisiona o conteúdo e a qualidade das publicações.', 'Patrícia Borges'),
	('D009', 'Design Gráfico', 'Desenvolve capas, layouts e materiais visuais.', 'Tiago Ramos'),
	('D010', 'Atendimento ao Cliente', 'Garante suporte eficiente aos clientes e leitores.', 'Juliana Freitas');	
    
select * from passatempo.departamento;

insert into passatempo.enderecoc
(CEP, Rua, Bairro, UF, Cidade, Complemento, Referencia, Numero, CPFCliente)
	values
	('01001-000', 'Rua das Flores', 'Centro', 'SP', 'São Paulo', 'Apto 101', 'Próximo à praça', 123, '12345678900'),
	('20031-170', 'Av. Rio Branco', 'Centro', 'RJ', 'Rio de Janeiro', 'Sala 204', 'Em frente ao museu', 456, '23456789011'),
	('30130-000', 'Rua da Bahia', 'Funcionários', 'MG', 'Belo Horizonte', NULL, 'Próx. ao Palácio das Artes', 789, '34567890122'),
	('40015-200', 'Rua Chile', 'Comércio', 'BA', 'Salvador', NULL, 'Ao lado do teatro', 102, '45678901233'),
	('50030-230', 'Rua da Aurora', 'Boa Vista', 'PE', 'Recife', 'Casa', 'Perto da faculdade', 55, '56789012344'),
	('69005-010', 'Av. Eduardo Ribeiro', 'Centro', 'AM', 'Manaus', NULL, 'Em frente ao teatro Amazonas', 88, '67890123455'),
	('70040-010', 'SQS 104', 'Asa Sul', 'DF', 'Brasília', 'Bloco B', 'Próximo ao metrô', 22, '78901234566'),
	('80010-160', 'Rua XV de Novembro', 'Centro', 'PR', 'Curitiba', 'Fundos', 'Perto da biblioteca', 200, '89012345677'),
	('88010-400', 'Rua Conselheiro Mafra', 'Centro', 'SC', 'Florianópolis', NULL, 'Ao lado da catedral', 75, '90123456788'),
	('96010-000', 'Rua General Osório', 'Centro', 'RS', 'Pelotas', NULL, 'Em frente à prefeitura', 41, '01234567899');
    
select * from passatempo.enderecoc;
    
insert into passatempo.enderecof
(CEP, Rua, Bairro, UF, Cidade, Complemento, Referencia, Numero, CPFFuncionario)
	values
	('01010101', 'Rua da Liberdade', 'Centro', 'SP', 'São Paulo', 'Apto 101', 'Perto da praça principal', 123, '10101010101'),
	('02020202', 'Av. Rio Branco', 'Centro', 'RJ', 'Rio de Janeiro', 'Casa 2', 'Próximo ao mercado', 45, '20202020202'),
	('03030303', 'Rua das Palmeiras', 'Vila Nova', 'MG', 'Belo Horizonte', 'Sala Comercial 5', 'Em frente à escola', 89, '30303030303'),
	('04040404', 'Rua das Orquídeas', 'Boa Vista', 'PR', 'Curitiba', 'Bloco B', 'Próximo ao hospital', 110, '40404040404'),
	('05050505', 'Rua do Sol', 'Alto da Serra', 'RS', 'Porto Alegre', 'Apto 302', 'Perto do supermercado', 76, '50505050505'),
	('06060606', 'Rua dos Jacarandás', 'Vila São Jorge', 'DF', 'Brasília', 'Casa 1', 'Ao lado da igreja', 22, '60606060606'),
	('07070707', 'Rua da Paz', 'Vila Maria', 'BA', 'Salvador', 'Casa 5', 'Perto da praça principal', 33, '70707070707'),
	('08080808', 'Av. Brasil', 'Parque Central', 'PE', 'Recife', 'Apto 104', 'Em frente ao shopping', 59, '80808080808'),
	('09090909', 'Rua do Bosque', 'Jardim das Flores', 'PA', 'Belém', 'Casa 3', 'Ao lado do clube', 120, '90909090909'),
	('10101010', 'Rua das Acácias', 'Setor Sul', 'CE', 'Fortaleza', 'Apto 512', 'Perto do ponto de ônibus', 58, '11111111111');
    
select * from passatempo.enderecof;

insert into passatempo.exemplar
(idExemplares, StatusExemplares, IDPedidosVendas, CPFFuncionario, IDISBN)
	values
	(1, 'Disponível', 101, '10101010101', "0192837465018"),
	(2, 'Vendido', 102, '20202020202',"8372619048293"),
	(3, 'Reservado', 103, '30303030303',"1928374650912"),
	(4, 'Disponível', 104,'40404040404', "6655443322110"),
	(5, 'Vendido', 105, '50505050505', "4567892310001"),
	(6, 'Reservado', 106, '60606060606',"3456127890034"),
	(7, 'Disponível', 107, '70707070707', "9876543210123"),
	(8, 'Vendido', 108, '80808080808', "2398475623947"),
	(9, 'Disponível', 109, '90909090909', "8439056754231"),
	(10, 'Reservado', 110, '11111111111', "9345627834841"),
    (11, 'Disponível', 111, '10101010101', "0192837465018"),
	(12, 'Vendido', 112, '20202020202',"8372619048293"),
	(13, 'Reservado', 113, '30303030303',"1928374650912"),
	(14, 'Disponível', 114,'40404040404', "6655443322110"),
	(15, 'Vendido', 115, '50505050505', "4567892310001"),
	(16, 'Reservado', 116, '60606060606',"3456127890034"),
	(17, 'Disponível', 117, '70707070707', "9876543210123"),
	(18, 'Vendido', 118, '80808080808', "2398475623947"),
	(19, 'Disponível', 119, '90909090909', "8439056754231"),
	(20, 'Reservado', 120, '11111111111', "9345627834841"),
	(21, 'Disponível', 121, '10101010101', "0192837465018"),
	(22, 'Vendido', 122, '20202020202',"8372619048293"),
	(23, 'Reservado', 123, '30303030303',"1928374650912"),
	(24, 'Disponível', 124,'40404040404', "6655443322110"),
	(25, 'Vendido', 125, '50505050505', "4567892310001");
    
select * from passatempo.exemplar;

insert into passatempo.pagamento
(Comprovante, formaPagamento, Parcelamento, local, IDPedidosVendas, CPFFuncionario)
values
	('84532198', 'Cartão de Crédito', 3, 'Online', 101, '10101010101'),
	('93217465', 'Pix', 1, 'Loja Física', 102, '20202020202'),
	('71938456', 'Boleto', 1, 'Online', 103, '30303030303'),
	('64587219', 'Cartão de Débito', 1, 'Loja Física', 104, '40404040404'),
	('20481673', 'Dinheiro', 1, 'Loja Física', 105, '50505050505'),
	('95718302', 'Cartão de Crédito', 2, 'Online', 106, '60606060606'),
	('38645127', 'Pix', 1, 'Loja Física', 107, '70707070707'),
	('50193846', 'Cartão de Crédito', 4, 'Online', 108, '80808080808'),
	('68917245', 'Cartão de Débito', 1, 'Loja Física', 109, '90909090909'),
	('31592784', 'Dinheiro', 1, 'Loja Física', 110, '11111111111'),
	('41239876', 'Pix', 1, 'Online', 111, '10101010101'),
	('52837461', 'Cartão de Crédito', 5, 'Loja Física', 112, '20202020202'),
	('67382914', 'Dinheiro', 1, 'Loja Física', 113, '30303030303'),
	('78451230', 'Boleto', 1, 'Online', 114, '40404040404'),
	('89456321', 'Cartão de Crédito', 3, 'Online', 115, '50505050505'),
	('90567432', 'Cartão de Débito', 1, 'Loja Física', 116, '60606060606'),
	('11678543', 'Pix', 1, 'Online', 117, '70707070707'),
	('22789654', 'Cartão de Crédito', 6, 'Loja Física', 118, '80808080808'),
	('33890765', 'Dinheiro', 1, 'Loja Física', 119, '90909090909'),
	('44901876', 'Boleto', 1, 'Online', 120, '11111111111'),
	('55012987', 'Cartão de Crédito', 2, 'Online', 121, '10101010101'),
	('66123098', 'Pix', 1, 'Loja Física', 122, '20202020202'),
	('77234109', 'Cartão de Débito', 1, 'Online', 123, '30303030303'),
	('88345210', 'Dinheiro', 1, 'Loja Física', 124, '40404040404'),
	('99456321', 'Cartão de Crédito', 3, 'Online', 125, '50505050505');
    
select * from passatempo.pagamento;

    
insert into passatempo.palavrachave
(PalavraChave, Descricao, IDISBN)
values
	('Lírico', 'O percurso lírico de Paulo Leminski', '9345627834841'),
	('Romance', 'Romance histórico ambientado no século XIX com forte crítica social.', '8439056754231'),
	('Ciência', 'Uma análise profunda da física quântica para leigos.', '2398475623947'),
	('Ficção Científica', 'Aventura épica em um mundo pós-apocalíptico dominado por inteligência artificial.', '9876543210123'),
	('Suspense', 'Exploração psicológica da mente de um assassino em série.', '3456127890034'),
	('Poesia', 'Uma coletânea de poesias urbanas e contemporâneas.', '4567892310001'),
	('Autoajuda', 'Guia prático sobre desenvolvimento pessoal e produtividade.', '6655443322110'),
	('Fantasia', 'Contos de fantasia que misturam folclore brasileiro e magia.', '1928374650912'),
	('Filosofia', 'Obra clássica da filosofia revisitada sob a ótica contemporânea.', '8372619048293'),
	('Técnico', 'Manual técnico sobre arquitetura de bancos de dados relacionais.', '0192837465018');
    
select * from passatempo.palavrachave;

insert into passatempo.pedidovenda
(IDPedidosVendas, DataTransacoes, CPFFuncionario)
values
	(101, '2025-04-23', '10101010101'),
	(102, '2025-04-23', '20202020202'),
	(103, '2025-04-23', '30303030303'),
	(104, '2025-04-23', '40404040404'),
	(105, '2025-04-23', '50505050505'),
	(106, '2025-04-23', '60606060606'),
	(107, '2025-04-23', '70707070707'),
	(108, '2025-04-23', '80808080808'),
	(109, '2025-04-23', '90909090909'),
	(110, '2025-04-23', '11111111111'),
	(111, '2025-04-23', '10101010101'),
	(112, '2025-04-23', '20202020202'),
	(113, '2025-04-23', '30303030303'),
	(114, '2025-04-23', '40404040404'),
	(115, '2025-04-23', '50505050505'),
	(116, '2025-04-23', '60606060606'),
	(117, '2025-04-23', '70707070707'),
	(118, '2025-04-23', '80808080808'),
	(119, '2025-04-23', '90909090909'),
	(120, '2025-04-23', '11111111111'),
	(121, '2025-04-23', '10101010101'),
	(122, '2025-04-23', '20202020202'),
	(123, '2025-04-23', '30303030303'),
	(124, '2025-04-23', '40404040404'),
	(125, '2025-04-23', '50505050505');
    
select * from passatempo.pedidovenda;

insert into passatempo.status
(Descricao, IDPedidosVendas, CPFFuncionario)
values
	('Em Processamento', 101, '10101010101'),
	('Concluído', 102, '20202020202'),
	('Cancelado', 103, '30303030303'),
	('Em Processamento', 104, '40404040404'),
	('Concluído', 105, '50505050505'),
	('Em Processamento', 106, '60606060606'),
	('Cancelado', 107, '70707070707'),
	('Em Processamento', 108, '80808080808'),
	('Concluído', 109, '90909090909'),
	('Cancelado', 110, '11111111111'),
	('Em Processamento', 111, '10101010101'),
	('Concluído', 112, '20202020202'),
	('Cancelado', 113, '30303030303'),
	('Em Processamento', 114, '40404040404'),
	('Concluído', 115, '50505050505'),
	('Em Processamento', 116, '60606060606'),
	('Cancelado', 117, '70707070707'),
	('Em Processamento', 118, '80808080808'),
	('Concluído', 119, '90909090909'),
	('Cancelado', 120, '11111111111'),
	('Em Processamento', 121, '10101010101'),
	('Concluído', 122, '20202020202'),
	('Cancelado', 123, '30303030303'),
	('Em Processamento', 124, '40404040404'),
	('Concluído', 125, '50505050505');
    
select * from passatempo.status;
    
insert into passatempo.trabalhar
(DataInicio, DataFim, CPFFuncionario, IDRegistro, IDCargo)
values
	('2025-01-01', '2025-12-31', '10101010101', 'D001', '1259486'),
	('2025-01-01', '2025-12-31', '20202020202', 'D002', '1259487'),
	('2025-01-01', '2025-12-31', '30303030303', 'D003', '1259488'),
	('2025-01-01', '2025-12-31', '40404040404', 'D004', '1259489'),
	('2025-01-01', '2025-12-31', '50505050505', 'D005', '1259490'),
	('2025-01-01', '2025-12-31', '60606060606', 'D006', '1259491'),
	('2025-01-01', '2025-12-31', '70707070707', 'D007', '1259492'),
	('2025-01-01', '2025-12-31', '80808080808', 'D008', '1259493'),
	('2025-01-01', '2025-12-31', '90909090909', 'D009', '1259494'),
	('2025-01-01', '2025-12-31', '11111111111', 'D010', '1259495'); 
    
select * from passatempo.trabalhar;
