CREATE DATABASE pizzaria

CREATE TABLE cadastro_cliente(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cpf VARCHAR(11),
endereco VARCHAR(50),
telefone VARCHAR(50),
email VARCHAR(80)
)


CREATE TABLE contre_pizza(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(50),
quantidade int,
data_fabricacao DATE,
id_pizza_cardapio INT
)


CREATE TABLE pizza_cardapio(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(50),
valor INT
)

CREATE TABLE receita(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
quantidade_preparo INT,
id_estoque INT,
id_pizza_cardapio INT
)

CREATE TABLE estoque(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100),
quantidade INT
)


SELECT * FROM pizzaria

DESC controle_pizza

SHOW TABLES

	
RENAME TABLE contre_pizzas TO controle_pizza



ALTER TABLE controle_pizza
	ADD FOREIGN KEY (id_pizza_cardapio) REFERENCES pizza_cardapio(id)
	
	
ALTER TABLE receita 
	ADD FOREIGN KEY (id_estoque) REFERENCES estoque(id)
	
ALTER TABLE receita
	ADD FOREIGN KEY (id_pizza_cardapio) REFERENCES pizza_cardapio(id)
	

DESC receita


CREATE TABLE venda(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
quantidade INT,
valor INT,
id_pedido INT,
id_cliente INT
)

CREATE TABLE pedido(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
valor INT,
id_venda INT,
id_cliente INT,
id_forma_pagamento INT
)

CREATE TABLE forma_pagamento(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(100),
id_pedido INT
)


ALTER TABLE venda
	ADD FOREIGN KEY (id_pedido) REFERENCES pedido(id)

SHOW tables
DESC forma_pagamento

DESC cadastro_cliente

INSERT INTO cadastro_cliente (nome, cpf, endereco, telefone, email) VALUES
('Michael','45451563','Rua joao','123456','michael@gmail.com'),
('Detro', '578631' , 'Rua detro' , '2583644' , 'detro@gmail.com'),
('Lola', '233452' , 'rua lola' , '12324124' , 'lola@gmail.com'),
('maria', '20213013' , 'Rua maria' , '1523266' , 'maria@gmail.com'),
('france', '45541321' , 'rua france' , '344643' , 'france@gmail.com'),
('Michael1','45451563','Rua joao','123456','michael@gmail.com'),
('Detro1', '578631' , 'Rua detro' , '2583644' , 'detro@gmail.com'),
('Lola1', '233452' , 'rua lola' , '12324124' , 'lola@gmail.com'),
('maria1', '20213013' , 'Rua maria' , '1523266' , 'maria@gmail.com'),
('france1', '45541321' , 'rua france' , '344643' , 'france@gmail.com'),
('Michael2','45451563','Rua joao','123456','michael@gmail.com'),
('Detro3', '578631' , 'Rua detro' , '2583644' , 'detro@gmail.com'),
('Lola3', '233452' , 'rua lola' , '12324124' , 'lola@gmail.com'),
('maria3', '20213013' , 'Rua maria' , '1523266' , 'maria@gmail.com'),
('france3', '45541321' , 'rua france' , '344643' , 'france@gmail.com')

SELECT * FROM cadastro_cliente


INSERT INTO estoque (nome_produto, quantidade, unidade_medida, valor) VALUES
('Carne', 2000 ,'Gramas', 500),
('Embalagem ', 100 , 'Unidade', 100),
('Frango', 1000 , 'Gramas', 350),
('Massa para pizza', 50000 , 'Gramas', 100),
('Molho para tomate', 50 , 'Unidades', 200),
('Queijo mussarela', 1000 , 'Gramas', 150),
('Presunto', 1000 , 'Grmas', 100),
('Calabresa', 500 , 'Gramas', 80),
('Ovos', 600 , 'Unidades', 300),
('Azeitona', 100 , 'Gramas', 58),
('Cebola', 100 , 'Gramas', 30),
('Agua mineral com ou sem gás', 200,'ml', 2200),
('Limão', 40 , 'Unidade', 60 ),
('Refrigerante', 50 ,'Unidade', 500),
('Cerveja long neck', 50 , 'Unidade', 500),
('Chopp', 80 , 'Unidade', 600),
('Consertada', 100 , 'Unidade', 200)



DESC estoque

SHOW TABLES 

SELECT * FROM estoque



INSERT INTO pizza_cardapio(sabor , valor, observacao) VALUES
('Alho e olho', 40 , '2 colheres (sopa) de manteiga , 1 talo de alho-poró fatiado, 2 colheres (sopa) de molho de tomate
, 2 xícaras (chá) de queijo muçarela ralado, 200g de lombinho defumado fatiado, Orégano a gosto'),
('Frango', 40 , '400g de peito de frango, 4 colheres de orégano , 400g de queijo catupiry, 1 xícara de chá de molho de tomate, Sal, pimenta e salsinha a gosto'),
('Portuguesa' , 40 , '1/2 xícara (chá) de molho de tomate caseiro, 300g de queijo muçarela ralado, 250g de presunto ralado, 2 ovos cozidos picados, 1 cebola em rodelas, 1 tomate maduro fatiado, Orégano e azeitona preta a gosto para polvilhar'),
('Vegetariana' , 40 , '200g de muçarela de búfala, 1/2 xícara (chá) de tomate seco, 1 xícara (chá) de palmito em rodelas, 100g de queijo parmesão ralado, Azeitonas pretas e manjericão fresco para decorar'),
('Pizza de calabresa' , 40 , '1/2 xícara (chá) de molho de tomate caseiro, 200g de queijo muçarela ralado, 2 gomos de linguiça calabresa fatiada, 1 cebola fatiada, 12 azeitonas verdes miúdas para decorar'),
('Pizza 4 queijos' , 40 , '1/2 xícara (chá) de queijo mussarela ralado, , 1/2 xícara (chá) de queijo prato ralado, 1/2 xícara (chá) de queijo parmesão ralado, 1/2 xícara (chá) de queijo gorgonzola amassado, Óleo e farinha de trigo para untar, Orégano para polvilhar'),
('Peperoni' , 40 , '200 g de farinha de trigo, 5 g de fermento, 2 colheres de azeite, 100 ml de água, Sal, 4 colheres de sopa de molho de tomate (clique aqui para ver a receita), 300 g de queijo mussarela ralado, 100 g de pepperoni fatiado, Orégano ou manjericão fresco'),
('Bahiana' , 40 , '2 gomos de linguiça calabresas defumadas sem a pele, 1/2 quilo de carne moída, Pimenta calabresa á gosto, 1 cebolas médias picadas, MOLHO'),
('Atum defumado' , 40 , 'Cerca de meia colher (sopa) de molho de tomate, 1 lata de Atum Sólido em Óleo Sabor Defumado (170g), 1 e meia xícara (chá) de alho poró refogado*, 3 colheres (sopa) de queijo tipo parmesão na parte média do ralador (30g)')

SELECT * FROM pizza_cardapio

DESC pizza_cardapio


ALTER TABLE pizza_cardapio
ADD COLUMN observacao VARCHAR(255)

ALTER TABLE pizza_cardapio
ADD COLUMN unidade_medida VARCHAR(100)

ALTER TABLE pizza_cardapio
DROP COLUMN unidade_medida

ALTER TABLE estoque
ADD COLUMN valor int


DESC estoque
DESC receita

SELECT * FROM receita 
SELECT * FROM estoque

INSERT INTO receita (quantidade_preparo, id_estoque, id_pizza_cardapio)  VALUES
(400, 3, 2),
(1, 4, 2),
(1, 5, 2),
(2, 5, 2),
(1, 3, 3),
(1, 11, 3),
(3, 6, 3),
(4, 7, 3),
(1, 5, 3),
(1, 4, 6),
(1, 5, 6),
(10,6,6)



SELECT DISTINCT  estoque.id, estoque.nome_produto ,pizza_cardapio.id, pizza_cardapio.sabor  FROM pizza_cardapio, estoque 


SELECT pizza_cardapio, estoque, quantidade


SELECT pizza_cardapio.sabor,estoque.nome_produto, receita.quantidade_preparo FROM pizza_cardapio, estoque ,receita 

WHERE pizza_cardapio.id = receita.id_pizza_cardapio

AND 

estoque.id = id_estoque


DESC cadastro_cliente

INSERT INTO cadastro_cliente(nome, cpf, endereco, telefone, email) VALUES 
('admin', '45646252', 'Rua feradwdoo', '454545', 'admin@admin.com'),
('atendente 1', '5454541', 'Rua x' , '454545', 'atendente 1'),
('atendente 2', '5454541', 'Rua x' , '454545', 'atendente 2')

SELECT * FROM cadastro_cliente


CREATE TABLE usuario(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
usuario VARCHAR(100), 
senha VARCHAR(100),
perfil VARCHAR(100),
situacao VARCHAR(50)
 )
 
 INSERT INTO usuario(nome, usuario, senha, perfil, situacao) values
 ('Michael','mike','123456','admin','ativo'),
 ('atendente 1','atendente1','123456','atendente1','ativo'),
 ('atendente 2','atendente2','123456','atendente2','ativo')

SELECT * FROM usuario


UPDATE alunos
SET nome = 'Esse nome foi alterado - status 200'
WHERE id = 1


SELECT * FROM controle_pizza


ALTER TABLE controle_pizza
DROP COLUMN sabor

ALTER TABLE estoque
ADD COLUMN id_pizza INT

DESC estoque

select * FROM pizza_cardapio


INSERT INTO estoque (nome_produto, unidade_medida, valor, id_pizza) VALUES
('alho e olho' ,'Unidades', 40, 01),
('Frango' ,'Unidades', 40, 02),
('Portuguesa' ,'Unidades', 40, 03),
('Vegetariana' ,'Unidades', 40, 04),
('Pizza de calabresa' ,'Unidades', 40, 05),
('Pizza 4 queijos' ,'Unidades', 40, 06),
('Peperoni' ,'Unidades', 40, 07),
('Bahiana' ,'Unidades', 40, 08),
('Atum defumado' ,'Unidades', 40, 09)


SELECT * FROM estoque

SELECT * FROM controle_pizza
desc

INSERT INTO controle_pizza (quantidade, data_fabricacao, id_pizza_cardapio) VALUES
(10, '2024-05-05', 2),
(5, '2024-05-05', 3),
(8, '2024-05-05', 4),
(15, '2024-05-05', 5),
(14, '2024-05-05', 6),
(10, '2024-05-05', 1),
(12, '2024-05-05', 7),
(13, '2024-05-05', 8),
(14, '2024-05-05', 9),
(20, '2024-05-06', 2),
(12, '2024-05-06', 3),
(18, '2024-05-06', 4),
(7, '2024-05-06', 5),
(10, '2024-05-06', 6),
(8, '2024-05-06', 1),
(8, '2024-05-06', 7),
(8, '2024-05-06', 8),
(16, '2024-05-06', 9),
(13, '2024-05-07', 2),
(18, '2024-05-07', 3),
(14, '2024-05-07', 4),
(12, '2024-05-07', 5),
(14, '2024-05-07', 6),
(7, '2024-05-07', 1),
(18, '2024-05-07', 7),
(11, '2024-05-07', 8),
(9, '2024-05-07', 9),
(16, '2024-05-08', 2),
(14, '2024-05-08', 3),
(25, '2024-05-08', 4),
(12, '2024-05-08', 5),
(18, '2024-05-08', 6),
(22, '2024-05-08', 1),
(14, '2024-05-08', 7),
(19, '2024-05-08', 8),
(12, '2024-05-08', 9)

UPDATE estoque
SET quantidade = + 46
WHERE id_pizza = 5





SELECT * FROM pizza_cardapio

DELETE FROM controle_pizza
WHERE id = 2

SELECT * FROM pizza_cardapio

select * FROM estoque

--------------------------------------------

SELECT * FROM receita

SELECT * FROM controle_pizza

SELECT pizza_cardapio.sabor, controle_pizza.quantidade, controle_pizza.data_fabricacao FROM pizza_cardapio, controle_pizza
WHERE controle_pizza.id_pizza_cardapio = pizza_cardapio.id

SELECT pizza_cardapio.sabor, estoque.nome_produto, receita.quantidade_preparo FROM pizza_cardapio, estoque, receita
WHERE receita.id_pizza_cardapio = pizza_cardapio.id AND receita.id_estoque = estoque.id


SELECT * FROM cadastro_cliente


DELETE * FROM 

INSERT INTO `cadastro_cliente` (`id`, `nome`, `endereco`, `telefone`, `email`) VALUES
	(1, 'Pietra Souza', 'Rua das Rosas, N°4563', '(11)96325-1475', 'pietra@gmail.com'),
	(2, 'Ricardo Antunes', 'Av. Paulo Cardoso, N°1654, Bloco 4,apto. 122', '(11)97458-2511', 'antunesr@gmail.com'),
	(3, 'Pedro Azevedo', 'Rua Padre Paulo, N°54', '(11)90210-3952', 'pedroazevedo15@gmail.com'),
	(4, 'Ana Silva', 'Avenida dos Bandeirantes, N°789', '(21)98765-4321', 'ana.silva@email.com'),
	(5, 'João Santos', 'Rua das Flores, N°123', '(31)12345-6789', 'joao.santos@email.com'),
	(6, 'Maria Oliveira', 'Travessa das Palmeiras, N°456', '(11)00000-0000', 'maria.oliveira@email.com'),
	(7, 'Carlos Rodrigues', 'Rua das Acácias, N°987', '(41)00000-0000', 'carlos.rodrigues@email.com'),
	(8, 'Fernanda Lima', 'Avenida Central, N°654', '(41)00000-0000', 'fernanda.lima@email.com'),
	(9, 'Ana Paula Santos', 'Avenida das Flores, N°555', '(11)00000-0000', 'ana.paula.santos@email.com'),
	(10, 'Lucas Oliveira', 'Praça da Paz, N°321', '(41)00000-0000', 'lucas.oliveira@email.com'),
	(11, 'Roberto Pereira', 'Rua da Amizade, N°222', '(41)00000-0000', 'roberto.pereira@email.com'),
	(12, 'Juliana Souza', 'Alameda dos Sonhos, N°789', '(41)00000-0000', 'juliana.souza@email.com'),
	(13, 'Ricardo Mendes', 'Avenida dos Ventos, N°333', '(41)00000-0000', 'ricardo.mendes@email.com'),
	(14, 'Patrícia Silva', 'Praça das Árvores, N°888', '(41)00000-0000', 'patricia.silva@email.com'),
	(15, 'Mariana Costa', 'Rua da Felicidade, N°777', '(41)66666-6666', 'mariana.costa@email.com'),
	(16, 'Gustavo Fernandes', 'Avenida das Estrelas, N°444', '(51)99999-9999', 'gustavo.fernandes@email.com'),
	(17, 'Ana Lima', 'Rua das Flores, N°123', '(11)98765-4321', 'ana.lima@email.com'),
	(18, 'João Oliveira', 'Avenida dos Girassóis, N°456', '(21)87654-3210', 'joao.oliveira@email.com'),
	(19, 'Carla Santos', 'Travessa das Palmeiras, N°789', '(31)76543-2109', 'carla.santos@email.com'),
	(20, 'Felipe Costa', 'Alameda das Acácias, N°987', '(41)65432-1098', 'felipe.costa@email.com'),
	(21, 'Mariana Pereira', 'Praça da Paz, N°654', '(51)54321-0987', 'mariana.pereira@email.com'),
	(22, 'Lucas Fernandes', 'Avenida Central, N°321', '(41)00000-0000', 'lucas.fernandes@email.com'),
	(23, 'Amanda Souza', 'Rua da Amizade, N°654', '(21)32109-8765', 'amanda.souza@email.com'),
	(24, 'Rodrigo Oliveira', 'Avenida dos Ventos, N°987', '(31)21098-7654', 'rodrigo.oliveira@email.com'),
	(25, 'Juliana Costa', 'Alameda dos Sonhos, N°456', '(41)10987-6543', 'juliana.costa@email.com'),
	(26, 'Pedro Santos', 'Rua da Felicidade, N°789', '(51)09876-5432', 'pedro.santos@email.com'),
	(27, 'Laura Mendes', 'Rua das Palmeiras, N°123', '(11)55555-1234', 'laura.mendes@email.com'),
	(28, 'André Silva', 'Avenida das Flores, N°456', '(21)44444-5678', 'andre.silva@email.com'),
	(29, 'Camila Santos', 'Travessa dos Girassóis, N°789', '(31)33333-9012', 'camila.santos@email.com'),
	(30, 'Guilherme Oliveira', 'Alameda dos Cravos, N°987', '(41)22222-3456', 'guilherme.oliveira@email.com'),
	(31, 'Isabela Costa', 'Praça das Rosas, N°654', '(51)11111-7890', 'isabela.costa@email.com'),
	(32, 'Thiago Pereira', 'Rua da Amizade, N°321', '(11)99999-2345', 'thiago.pereira@email.com'),
	(33, 'Julia Fernandes', 'Avenida dos Ventos, N°987', '(21)88888-6789', 'julia.fernandes@email.com'),
	(34, 'Rafaela Lima', 'Alameda Central, N°654', '(31)77777-8901', 'rafaela.lima@email.com'),
	(35, 'Diego Santos', 'Travessa da Paz, N°456', '(41)66666-2345', 'diego.santos@email.com'),
	(36, 'Fernando Costa', 'Rua das Estrelas, N°789', '(51)55555-6789', 'fernando.costa@email.com'),
	(37, 'Aline Oliveira', 'Rua das Orquídeas, N°123', '(11)22222-1234', 'aline.oliveira@email.com'),
	(38, 'Bruno Silva', 'Avenida dos Crisântemos, N°456', '(21)33333-5678', 'bruno.silva@email.com'),
	(39, 'Carolina Santos', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'carolina.santos@email.com'),
	(40, 'Daniel Costa', 'Alameda dos Lírios, N°987', '(41)55555-3456', 'daniel.costa@email.com'),
	(41, 'Eduarda Pereira', 'Praça das Violetas, N°654', '(51)66666-7890', 'eduarda.pereira@email.com'),
	(42, 'Fabio Fernandes', 'Rua dos Cravos, N°321', '(11)77777-2345', 'fabio.fernandes@email.com'),
	(43, 'Gabriela Lima', 'Avenida das Rosas, N°987', '(21)88888-6789', 'gabriela.lima@email.com'),
	(44, 'Hugo Santos', 'Alameda da Paz, N°654', '(31)99999-8901', 'hugo.santos@email.com'),
	(45, 'Igor Costa', 'Travessa das Estrelas, N°456', '(41)00000-2345', 'igor.costa@email.com'),
	(46, 'Jéssica Fernandes', 'Rua da Felicidade, N°789', '(51)11111-6789', 'jessica.fernandes@email.com'),
	(47, 'Karine Oliveira', 'Rua das Tulipas, N°123', '(11)22222-3456', 'karine.oliveira@email.com'),
	(48, 'Leandro Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'leandro.silva@email.com'),
	(49, 'Mariana Santos', 'Travessa dos Crisântemos, N°789', '(31)44444-9012', 'mariana.santos@email.com'),
	(50, 'Nathan Costa', 'Alameda das Margaridas, N°987', '(41)55555-2345', 'nathan.costa@email.com'),
	(51, 'Olivia Pereira', 'Praça dos Lírios, N°654', '(51)66666-5678', 'olivia.pereira@email.com'),
	(52, 'Pedro Fernandes', 'Rua das Violetas, N°321', '(11)77777-8901', 'pedro.fernandes@email.com'),
	(53, 'Rafael Lima', 'Avenida dos Cravos, N°987', '(21)88888-2345', 'rafael.lima@email.com'),
	(54, 'Sandra Santos', 'Alameda das Rosas, N°654', '(31)99999-5678', 'sandra.santos@email.com'),
	(55, 'Thiago Costa', 'Travessa das Orquídeas, N°456', '(41)00000-8901', 'thiago.costa@email.com'),
	(56, 'Vanessa Fernandes', 'Rua das Margaridas, N°789', '(51)11111-2345', 'vanessa.fernandes@email.com'),
	(57, 'William Oliveira', 'Rua das Hortênsias, N°123', '(11)22222-3456', 'william.oliveira@email.com'),
	(58, 'Xavier Silva', 'Avenida dos Jasmins, N°456', '(21)33333-6789', 'xavier.silva@email.com'),
	(59, 'Yasmin Santos', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'yasmin.santos@email.com'),
	(60, 'Zoe Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'zoe.costa@email.com'),
	(61, 'Alice Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'alice.pereira@email.com'),
	(62, 'Benjamin Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'benjamin.fernandes@email.com'),
	(63, 'Carolina Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'carolina.lima@email.com'),
	(64, 'Davi Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'davi.santos@email.com'),
	(65, 'Eloá Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'eloa.costa@email.com'),
	(66, 'Felipe Fernandes', 'Rua das Orquídeas, N°789', '(51)11111-2345', 'felipe.fernandes@email.com'),
	(67, 'Gabriel Oliveira', 'Rua dos Lírios, N°123', '(11)22222-3456', 'gabriel.oliveira@email.com'),
	(68, 'Helena Silva', 'Avenida das Margaridas, N°456', '(21)33333-6789', 'helena.silva@email.com'),
	(69, 'Isaac Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'isaac.santos@email.com'),
	(70, 'Júlia Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'julia.costa@email.com'),
	(71, 'Kevin Pereira', 'Praça dos Cravos, N°654', '(51)66666-5678', 'kevin.pereira@email.com'),
	(72, 'Laura Fernandes', 'Rua das Margaridas, N°321', '(11)77777-8901', 'laura.fernandes@email.com'),
	(73, 'Miguel Lima', 'Avenida das Camélias, N°987', '(51)66666-5678', 'miguel.lima@email.com'),
	(74, 'Nina Santos', 'Alameda dos Girassóis, N°654', '(31)99999-5678', 'nina.santos@email.com'),
	(75, 'Oliver Costa', 'Travessa das Hortênsias, N°456', '(41)00000-8901', 'oliver.costa@email.com'),
	(76, 'Pietro Oliveira', 'Rua das Rosas, N°123', '(11)22222-3456', 'pietro.oliveira@email.com'),
	(77, 'Quiteria Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'quiteria.silva@email.com'),
	(78, 'Rafaela Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'rafaela.santos@email.com'),
	(79, 'Santiago Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'santiago.costa@email.com'),
	(80, 'Tatiane Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'tatiane.pereira@email.com'),
	(81, 'Uriel Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'uriel.fernandes@email.com'),
	(82, 'Vitória Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'vitoria.lima@email.com'),
	(83, 'Wesley Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'wesley.santos@email.com'),
	(84, 'Xavier Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'xavier.costa@email.com'),
	(85, 'Yasmin Fernandes', 'Rua das Hortênsias, N°789', '(51)11111-2345', 'yasmin.fernandes@email.com'),
	(86, 'Zacarias Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'zacarias.oliveira@email.com'),
	(87, 'Ana Carolina Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'anacarolina.silva@email.com'),
	(88, 'Bernardo Santos', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'bernardo.santos@email.com'),
	(89, 'Clara Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'clara.costa@email.com'),
	(90, 'Daniel Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'daniel.pereira@email.com'),
	(91, 'Eduarda Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'eduarda.fernandes@email.com'),
	(92, 'Fernando Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'fernando.lima@email.com'),
	(93, 'Gabriela Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'gabriela.santos@email.com'),
	(94, 'Henrique Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'henrique.costa@email.com'),
	(95, 'Isadora Fernandes', 'Rua das Violetas, N°123', '(51)66666-5678', 'isadora.fernandes@email.com'),
	(96, 'José Oliveira', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'jose.oliveira@email.com'),
	(97, 'Karina Silva', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'karina.silva@email.com'),
	(98, 'Lucas Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'lucas.costa@email.com'),
	(99, 'Mariana Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'mariana.pereira@email.com'),
	(100, 'Nathalia Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'nathalia.fernandes@email.com'),
	(101, 'Oscar Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'oscar.lima@email.com'),
	(102, 'Patricia Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'patricia.santos@email.com'),
	(103, 'Raphael Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'raphael.costa@email.com'),
	(104, 'Samantha Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'samantha.fernandes@email.com'),
	(105, 'Tadeu Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'tadeu.oliveira@email.com'),
	(106, 'Ursula Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'ursula.silva@email.com'),
	(107, 'Vinicius Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'vinicius.santos@email.com'),
	(108, 'Walter Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'walter.costa@email.com'),
	(109, 'Ximena Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'ximena.pereira@email.com'),
	(110, 'Yuri Fernandes', 'Rua das Orquídeas, N°123', '(11)22222-3456', 'yuri.fernandes@email.com'),
	(111, 'Zilda Oliveira', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'zilda.oliveira@email.com'),
	(112, 'Alessandro Silva', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'alessandro.silva@email.com'),
	(113, 'Bianca Santos', 'Alameda das Begônias, N°987', '(41)55555-2345', 'bianca.santos@email.com'),
	(114, 'Cristiano Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'cristiano.pereira@email.com'),
	(115, 'Daniela Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'daniela.fernandes@email.com'),
	(116, 'Eduardo Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'eduardo.lima@email.com'),
	(117, 'Fabiana Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'fabiana.santos@email.com'),
	(118, 'Gustavo Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'gustavo.costa@email.com'),
	(119, 'Heloisa Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'heloisa.fernandes@email.com'),
	(120, 'Igor Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'igor.oliveira@email.com'),
	(121, 'Janaína Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'janaina.silva@email.com'),
	(122, 'Kauan Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'kauan.santos@email.com'),
	(123, 'Larissa Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'larissa.costa@email.com'),
	(124, 'Marcos Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'marcos.pereira@email.com'),
	(125, 'Nathália Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'nathalia.fernandes@email.com'),
	(126, 'Otávio Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'otavio.lima@email.com'),
	(127, 'Paula Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'paula.santos@email.com'),
	(128, 'Quiteria Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'quiteria.costa@email.com'),
	(129, 'Renato Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'renato.fernandes@email.com'),
	(130, 'Silvia Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'silvia.oliveira@email.com'),
	(131, 'Tatiane Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'tatiane.silva@email.com'),
	(132, 'Ubirajara Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'ubirajara.santos@email.com'),
	(133, 'Valentina Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'valentina.costa@email.com'),
	(134, 'Wagner Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'wagner.pereira@email.com'),
	(135, 'Xuxa Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'xuxa.fernandes@email.com'),
	(136, 'Yago Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'yago.lima@email.com'),
	(137, 'Zoraide Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'zoraide.santos@email.com'),
	(138, 'Yago Fernandes', 'Rua das Margaridas, N°123', '(11)22222-3456', 'yago.fernandes@email.com'),
	(139, 'Zara Oliveira', 'Avenida dos Girassóis, N°456', '(21)33333-6789', 'zara.oliveira@email.com'),
	(140, 'Alana Silva', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'alana.silva@email.com'),
	(141, 'Bruno Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'bruno.costa@email.com'),
	(142, 'Carla Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'carla.pereira@email.com'),
	(143, 'Daniel Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'daniel.fernandes@email.com'),
	(144, 'Eduardo Lima', 'Avenida dos Cravos, N°987', '(21)88888-2345', 'eduardo.lima@email.com'),
	(145, 'Fernanda Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'fernanda.santos@email.com'),
	(146, 'Giovanni Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'giovanni.costa@email.com'),
	(147, 'Heloisa Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'heloisa.fernandes@email.com'),
	(148, 'Isaac Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'isaac.oliveira@email.com'),
	(149, 'Jéssica Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'jessica.silva@email.com'),
	(150, 'Kaique Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'kaique.santos@email.com'),
	(151, 'Larissa Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'larissa.costa@email.com'),
	(152, 'Mateus Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'mateus.pereira@email.com'),
	(153, 'Natalia Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'natalia.fernandes@email.com'),
	(154, 'Otavio Lima', 'Avenida dos Cravos, N°987', '(21)88888-2345', 'otavio.lima@email.com'),
	(155, 'Paula Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'paula.santos@email.com'),
	(156, 'Ricardo Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'ricardo.costa@email.com'),
	(157, 'Sabrina Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'sabrina.fernandes@email.com'),
	(158, 'Thales Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'thales.oliveira@email.com'),
	(159, 'Ubirajara Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'ubirajara.silva@email.com'),
	(160, 'Valentina Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'valentina.santos@email.com'),
	(161, 'Wagner Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'wagner.costa@email.com'),
	(162, 'Xavier Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'xavier.pereira@email.com'),
	(163, 'Yasmin Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'yasmin.fernandes@email.com'),
	(164, 'Zelia Lima', 'Avenida dos Cravos, N°987', '(21)88888-2345', 'zelia.lima@email.com'),
	(165, 'Ana Paula Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'anapaula.santos@email.com'),
	(166, 'Breno Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'breno.costa@email.com'),
	(167, 'Ana Beatriz Oliveira', 'Rua das Orquídeas, N°123', '(11)22222-3456', 'ana.beatriz@email.com'),
	(168, 'Bruno Almeida', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'bruno.almeida@email.com'),
	(169, 'Carla Freitas', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'carla.freitas@email.com'),
	(170, 'Diego Gonçalves', 'Alameda das Begônias, N°987', '(41)55555-2345', 'diego.goncalves@email.com'),
	(171, 'Eduarda Lima', 'Praça das Camélias, N°654', '(51)66666-5678', 'eduarda.lima@email.com'),
	(172, 'Felipe Costa', 'Rua das Violetas, N°321', '(11)77777-8901', 'felipe.costa@email.com'),
	(173, 'Gabriela Marques', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'gabriela.marques@email.com'),
	(174, 'Hugo Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'hugo.santos@email.com'),
	(175, 'Isabela Fernandes', 'Travessa das Rosas, N°456', '(41)00000-8901', 'isabela.fernandes@email.com'),
	(176, 'João Victor Oliveira', 'Rua das Begônias, N°789', '(51)11111-2345', 'joaovictor@email.com'),
	(177, 'Karen Silva', 'Rua dos Crisântemos, N°123', '(11)22222-3456', 'karen.silva@email.com'),
	(178, 'Lucas Ferreira', 'Avenida dos Jasmins, N°456', '(21)33333-6789', 'lucas.ferreira@email.com'),
	(179, 'Mariana Alves', 'Travessa das Hortênsias, N°789', '(31)44444-9012', 'mariana.alves@email.com'),
	(180, 'Nathalia Costa', 'Alameda dos Lírios, N°987', '(41)55555-2345', 'nathalia.costa@email.com'),
	(181, 'Otávio Pereira', 'Praça das Margaridas, N°654', '(51)66666-5678', 'otavio.pereira@email.com'),
	(182, 'Pedro Henrique Lima', 'Rua dos Cravos, N°321', '(11)77777-8901', 'pedro.henrique@email.com'),
	(183, 'Rafaela Oliveira', 'Avenida das Orquídeas, N°987', '(21)88888-2345', 'rafaela@email.com'),
	(184, 'Sara Santos', 'Travessa das Rosas, N°654', '(31)99999-5678', 'sara.santos@email.com'),
	(185, 'Thiago Ferreira', 'Alameda dos Girassóis, N°654', '(41)00000-8901', 'thiago.ferreira@email.com'),
	(186, 'Ulisses Costa', 'Rua das Hortênsias, N°789', '(51)11111-2345', 'ulisses.costa@email.com'),
	(187, 'Vitória Oliveira', 'Rua das Orquídeas, N°123', '(11)00000-0000', 'vitoria.oliveira@email.com'),
	(188, 'Wagner Almeida', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'wagner.almeida@email.com'),
	(189, 'Xavier Freitas', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'xavier.freitas@email.com'),
	(190, 'Yasmin Gonçalves', 'Alameda das Begônias, N°987', '(41)55555-2345', 'yasmin.goncalves@email.com'),
	(191, 'Zoe Lima', 'Praça das Camélias, N°654', '(51)66666-5678', 'zoe.lima@email.com'),
	(192, 'André Costa', 'Rua das Violetas, N°321', '(11)77777-8901', 'andre.costa@email.com'),
	(193, 'Bianca Marques', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'bianca.marques@email.com'),
	(194, 'Carlos Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'carlos.santos@email.com'),
	(195, 'Diana Fernandes', 'Travessa das Rosas, N°456', '(41)00000-8901', 'diana.fernandes@email.com'),
	(196, 'Erick Oliveira', 'Rua dos Crisântemos, N°789', '(51)11111-2345', 'erick.oliveira@email.com'),
	(197, 'Fernanda Ferreira', 'Alameda dos Lírios, N°987', '(41)55555-2345', 'fernanda.ferreira@email.com'),
	(198, 'Gustavo Pereira', 'Praça das Margaridas, N°654', '(51)66666-5678', 'gustavo.pereira@email.com'),
	(199, 'Heloisa Lima', 'Rua dos Cravos, N°321', '(51)66666-5678', 'heloisa.lima@email.com'),
	(200, 'Isabela Oliveira', 'Rua das Violetas, N°123', '(11)22222-3456', 'isabela.oliveira@email.com'),
	(201, 'Josué Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'josue.silva@email.com'),
	(202, 'Karla Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'karla.santos@email.com'),
	(203, 'Luciano Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'luciano.costa@email.com'),
	(204, 'Maria Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'maria.pereira@email.com'),
	(205, 'Nelson Fernandes', 'Rua das Orquídeas, N°321', '(11)77777-8901', 'nelson.fernandes@email.com'),
	(206, 'Otávio Lima', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'otavio.lima@email.com'),
	(207, 'Paula Santos', 'Alameda das Margaridas, N°654', '(31)99999-5678', 'paula.santos@email.com'),
	(208, 'Roberto Costa', 'Travessa das Rosas, N°456', '(41)00000-8901', 'roberto.costa@email.com'),
	(209, 'Sandra Fernandes', 'Rua das Violetas, N°789', '(51)11111-2345', 'sandra.fernandes@email.com'),
	(210, 'Tatiana Oliveira', 'Rua dos Cravos, N°123', '(11)22222-3456', 'tatiana.oliveira@email.com'),
	(211, 'Ubirajara Silva', 'Avenida das Orquídeas, N°456', '(21)33333-6789', 'ubirajara.silva@email.com'),
	(212, 'Viviane Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'viviane.santos@email.com'),
	(213, 'Wagner Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'wagner.costa@email.com'),
	(214, 'Xavier Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'xavier.pereira@email.com'),
	(215, 'Yasmin Fernandes', 'Rua das Violetas, N°123', '(11)22222-3456', 'yasmin.fernandes@email.com'),
	(216, 'Zuleica Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'zuleica.silva@email.com'),
	(217, 'Afonso Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'afonso.santos@email.com'),
	(218, 'Bianca Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'bianca.costa@email.com'),
	(219, 'Cleber Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'cleber.pereira@email.com'),
	(220, 'Diana Oliveira', 'Rua das Violetas, N°123', '(11)22222-3456', 'diana.oliveira@email.com'),
	(221, 'Eduardo Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'eduardo.silva@email.com'),
	(222, 'Fernanda Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'fernanda.santos@email.com'),
	(223, 'Gabriel Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'gabriel.costa@email.com'),
	(224, 'Hugo Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'hugo.pereira@email.com'),
	(225, 'Isabela Fernandes', 'Rua das Violetas, N°123', '(11)22222-3456', 'isabela.fernandes@email.com'),
	(226, 'Jéssica Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'jessica.silva@email.com'),
	(227, 'Kleber Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'kleber.santos@email.com'),
	(228, 'Leonardo Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'leonardo.costa@email.com'),
	(229, 'Mariana Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'mariana.pereira@email.com'),
	(230, 'Nathalia Oliveira', 'Rua das Violetas, N°123', '(11)22222-3456', 'nathalia.oliveira@email.com'),
	(231, 'Oscar Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'oscar.silva@email.com'),
	(232, 'Paulo Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'paulo.santos@email.com'),
	(233, 'Raquel Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'raquel.costa@email.com'),
	(234, 'Sergio Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'sergio.pereira@email.com'),
	(235, 'Thiago Fernandes', 'Rua das Violetas, N°123', '(11)22222-3456', 'thiago.fernandes@email.com'),
	(236, 'Ubiratan Silva', 'Avenida dos Cravos, N°456', '(21)33333-6789', 'ubiratan.silva@email.com'),
	(237, 'Vanessa Santos', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'vanessa.santos@email.com'),
	(238, 'Washington Costa', 'Alameda das Begônias, N°987', '(41)55555-2345', 'washington.costa@email.com'),
	(239, 'Xuxa Pereira', 'Praça das Camélias, N°654', '(51)66666-5678', 'xuxa.pereira@email.com'),
	(240, 'Ana Clara Silva', 'Rua das Acácias, N°123', '(11)22222-3456', 'anaclara.silva@email.com'),
	(241, 'Bruno Oliveira', 'Avenida dos Girassóis, N°456', '(21)33333-6789', 'bruno.oliveira@email.com'),
	(242, 'Carla Fernandes', 'Travessa das Orquídeas, N°789', '(31)44444-9012', 'carla.fernandes@email.com'),
	(243, 'Daniel Santos', 'Alameda das Begônias, N°987', '(41)55555-2345', 'daniel.santos@email.com'),
	(244, 'Eduarda Lima', 'Praça das Camélias, N°654', '(51)66666-5678', 'eduarda.lima@email.com'),
	(245, 'Felipe Fernandes', 'Rua das Violetas, N°321', '(11)77777-8901', 'felipe.fernandes@email.com'),
	(246, 'Gabriela Oliveira', 'Avenida dos Cravos, N°987', '(21)88888-2345', 'gabriela.oliveira@email.com'),
	(247, 'Henrique Silva', 'Travessa das Margaridas, N°654', '(31)99999-5678', 'henrique.silva@email.com'),
	(248, 'Isabel Costa', 'Alameda das Begônias, N°654', '(41)00000-8901', 'isabel.costa@email.com'),
	(249, 'Juliana Fernandes', 'Rua das Orquídeas, N°789', '(51)11111-2345', 'juliana.fernandes@email.com'),
	(250, 'Kleber Oliveira', 'Rua das Rosas, N°123', '(11)22222-3456', 'kleber.oliveira@email.com'),
	(251, 'Larissa Silva', 'Avenida dos Crisântemos, N°456', '(21)33333-6789', 'larissa.silva@email.com'),
	(252, 'Marcelo Santos', 'Travessa das Margaridas, N°789', '(31)44444-9012', 'marcelo.santos@email.com'),
	(253, 'Natália Fernandes', 'Alameda dos Girassóis, N°987', '(41)55555-2345', 'natalia.fernandes@email.com'),
	(254, 'Otávio Lima', 'Praça das Begônias, N°654', '(51)66666-5678', 'otavio.lima@email.com'),
	(255, 'Paula Costa', 'Rua das Rosas, N°321', '(11)77777-8901', 'paula.costa@email.com'),
	(256, 'Rafaela Oliveira', 'Avenida dos Girassóis, N°987', '(21)88888-2345', 'rafaela.oliveira@email.com'),
	(257, 'Samuel Silva', 'Travessa das Margaridas, N°654', '(31)99999-5678', 'samuel.silva@email.com'),
	(258, 'Tatiane Fernandes', 'Alameda das Begônias, N°654', '(41)00000-8901', 'tatiane.fernandes@email.com'),
	(259, 'Uillian Oliveira', 'Rua das Orquídeas, N°789', '(51)11111-2345', 'uillian.oliveira@email.com'),
	(260, 'Viviane Silva', 'Avenida dos Cravos, N°987', '(21)22222-3456', 'viviane.silva@email.com'),
	(261, 'Wagner Santos', 'Travessa das Margaridas, N°654', '(31)33333-6789', 'wagner.santos@email.com'),
	(262, 'Xavier Fernandes', 'Alameda dos Girassóis, N°987', '(41)44444-9012', 'xavier.fernandes@email.com'),
	(263, 'Yasmin Lima', 'Praça das Begônias, N°654', '(51)55555-2345', 'yasmin.lima@email.com'),
	(264, 'Zé Oliveira', 'Rua das Rosas, N°321', '(11)66666-5678', 'ze.oliveira@email.com'),
	(265, 'Ana Beatriz Silva', 'Avenida dos Cravos, N°987', '(21)77777-8901', 'anabeatriz.silva@email.com'),
	(266, 'Bruno Fernandes', 'Travessa das Margaridas, N°654', '(31)88888-2345', 'bruno.fernandes@email.com'),
	(267, 'Carolina Oliveira', 'Alameda dos Girassóis, N°987', '(41)99999-5678', 'carolina.oliveira@email.com'),
	(268, 'Daniel Lima', 'Praça das Begônias, N°654', '(51)00000-8901', 'daniel.lima@email.com'),
	(269, 'Eduarda Fernandes', 'Rua das Rosas, N°321', '(11)11111-2345', 'eduarda.fernandes@email.com'),
	(270, 'Felipe Silva', 'Avenida dos Cravos, N°987', '(21)22222-5678', 'felipe.silva@email.com'),
	(271, 'Gabriel Santos', 'Travessa das Margaridas, N°654', '(31)33333-8901', 'gabriel.santos@email.com'),
	(272, 'Heloisa Oliveira', 'Alameda dos Girassóis, N°987', '(41)44444-2345', 'heloisa.oliveira@email.com'),
	(273, 'Igor Lima', 'Praça das Begônias, N°654', '(51)55555-5678', 'igor.lima@email.com'),
	(274, 'Joana Fernandes', 'Rua das Rosas, N°321', '(11)66666-8901', 'joana.fernandes@email.com'),
	(275, 'Kauã Silva', 'Avenida dos Cravos, N°987', '(21)77777-2345', 'kaua.silva@email.com'),
	(276, 'Lara Santos', 'Travessa das Margaridas, N°654', '(31)88888-5678', 'lara.santos@email.com'),
	(277, 'Mateus Oliveira', 'Alameda dos Girassóis, N°987', '(41)99999-8901', 'mateus.oliveira@email.com'),
	(278, 'Alice Silva', 'Rua das Flores, N°123', '(11)1234-5678', 'alice.silva@email.com'),
	(279, 'Bruno Oliveira', 'Avenida dos Girassóis, N°456', '(21)2345-6789', 'bruno.oliveira@email.com'),
	(280, 'Carla Santos', 'Travessa das Margaridas, N°789', '(31)3456-7890', 'carla.santos@email.com'),
	(281, 'Daniel Costa', 'Alameda das Begônias, N°987', '(41)4567-8901', 'daniel.costa@email.com'),
	(282, 'Eduarda Pereira', 'Praça das Camélias, N°654', '(51)5678-9012', 'eduarda.pereira@email.com'),
	(283, 'Fernando Fernandes', 'Rua das Orquídeas, N°321', '(11)6789-0123', 'fernando.fernandes@email.com'),
	(284, 'Gabriela Lima', 'Avenida dos Cravos, N°987', '(21)7890-1234', 'gabriela.lima@email.com'),
	(285, 'Henrique Santos', 'Alameda das Margaridas, N°654', '(31)8901-2345', 'henrique.santos@email.com'),
	(286, 'Isabella Costa', 'Travessa das Rosas, N°456', '(41)9012-3456', 'isabella.costa@email.com'),
	(287, 'João Fernandes', 'Rua das Violetas, N°789', '(51)0123-4567', 'joao.fernandes@email.com'),
	(288, 'Karen Oliveira', 'Rua dos Crisântemos, N°123', '(11)2345-6789', 'karen.oliveira@email.com'),
	(289, 'Leandro Silva', 'Avenida das Orquídeas, N°456', '(21)3456-7890', 'leandro.silva@email.com'),
	(290, 'Mariana Santos', 'Travessa das Margaridas, N°789', '(31)4567-8901', 'mariana.santos@email.com'),
	(291, 'Nathan Costa', 'Alameda dos Lírios, N°987', '(41)5678-9012', 'nathan.costa@email.com'),
	(292, 'Olivia Pereira', 'Praça das Camélias, N°654', '(51)6789-0123', 'olivia.pereira@email.com'),
	(293, 'Pedro Fernandes', 'Rua das Orquídeas, N°321', '(11)7890-1234', 'pedro.fernandes@email.com'),
	(294, 'Rafaela Lima', 'Avenida dos Cravos, N°987', '(21)9012-3456', 'rafaela.lima@email.com'),
	(295, 'Sandra Santos', 'Alameda das Margaridas, N°654', '(31)0123-4567', 'sandra.santos@email.com'),
	(296, 'Thiago Costa', 'Travessa das Rosas, N°456', '(41)2345-6789', 'thiago.costa@email.com'),
	(297, 'Vanessa Fernandes', 'Rua das Violetas, N°789', '(51)3456-7890', 'vanessa.fernandes@email.com'),
	(298, 'William Oliveira', 'Rua dos Crisântemos, N°123', '(11)4567-8901', 'william.oliveira@email.com'),
	(299, 'Xavier Silva', 'Avenida das Orquídeas, N°456', '(21)5678-9012', 'xavier.silva@email.com'),
	(300, 'Yasmin Santos', 'Travessa das Margaridas, N°789', '(31)6789-0123', 'yasmin.santos@email.com'),
	(301, 'Zoe Costa', 'Alameda dos Lírios, N°987', '(41)7890-1234', 'zoe.costa@email.com'),
	(302, 'Aline Pereira', 'Praça das Camélias, N°654', '(51)9012-3456', 'aline.pereira@email.com'),
	(303, 'Breno Lima', 'Avenida dos Cravos, N°987', '(21)0123-4567', 'breno.lima@email.com'),
	(304, 'Carolina Santos', 'Travessa das Margaridas, N°654', '(31)2345-6789', 'carolina.santos@email.com'),
	(305, 'Diego Costa', 'Alameda das Begônias, N°321', '(41)3456-7890', 'diego.costa@email.com'),
	(306, 'Elaine Fernandes', 'Praça das Camélias, N°987', '(51)4567-9012', 'elaine.fernandes@email.com'),
	(307, 'Fábio Oliveira', 'Rua das Orquídeas, N°654', '(11)5678-0123', 'fabio.oliveira@email.com'),
	(308, 'Gabriel Silva', 'Avenida dos Crisântemos, N°321', '(21)6789-1234', 'gabriel.silva@email.com'),
	(309, 'Helena Santos', 'Travessa das Margaridas, N°987', '(31)7890-2345', 'helena.santos@email.com'),
	(310, 'Isaac Costa', 'Alameda das Lírios, N°654', '(41)9012-3456', 'isaac.costa@email.com'),
	(311, 'Juliana Pereira', 'Praça das Camélias, N°321', '(51)0123-4567', 'juliana.pereira@email.com'),
	(312, 'Kleber Lima', 'Avenida dos Cravos, N°654', '(21)2345-6789', 'kleber.lima@email.com'),
	(313, 'Luciana Santos', 'Travessa das Margaridas, N°987', '(31)3456-7890', 'luciana.santos@email.com'),
	(314, 'Mário Costa', 'Alameda das Begônias, N°654', '(41)4567-9012', 'mario.costa@email.com'),
	(315, 'Natália Fernandes', 'Praça das Camélias, N°321', '(51)5678-0123', 'natalia.fernandes@email.com'),
	(316, 'Otávio Oliveira', 'Rua das Orquídeas, N°654', '(11)6789-1234', 'otavio.oliveira@email.com'),
	(317, 'Patricia Silva', 'Avenida dos Crisântemos, N°987', '(21)7890-2345', 'patricia.silva@email.com'),
	(318, 'Renato Santos', 'Travessa das Margaridas, N°654', '(31)9012-3456', 'renato.santos@email.com');
	
DELETE FROM cadastro_cliente
WHERE id = 18

SELECT * FROM estoque


CREATE TABLE forma(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(150),
debito VARCHAR(100),
credito VARCHAR(100),
pix VARCHAR(100),
dinheiro VARCHAR(100)
)


DESC forma_pagamento

DESC pedido



SELECT * FROM pedido

DESC venda

ALTER TABLE venda
	ADD id_estoque int
	
	#Adicionando chave estranheira na tabela usuarios
ALTER TABLE venda 
	ADD FOREIGN KEY (id_estoque) REFERENCES estoque(id)

insert into pedido(id_cliente, valor, id_forma_pagamento)
values
(272,58,2),
(236,135,3),
(105,90,3),
(177,143,1),
(288,111,4),
(202,129,1),
(122,69,4),
(220,60,3),
(186,135,1),
(118,147,2),
(121,99,3),
(135,68,3),
(74,87,4),
(18,82,3),
(35,86,1),
(47,109,4),
(267,102,2),
(199,51,4),
(214,128,4),
(121,106,3),
(188,106,1),
(45,93,1),
(170,52,1),
(252,114,4),
(69,70,2),
(213,60,3),
(21,100,4),
(221,131,3),
(135,69,1),
(241,105,3),
(286,147,3),
(250,136,1),
(100,58,2),
(158,54,2),
(98,123,4),
(128,136,2),
(125,81,3),
(96,69,3),
(135,123,3),
(229,112,4),
(46,118,2),
(70,83,4),
(25,79,4),
(38,111,1),
(90,69,2),
(71,113,4),
(175,107,2),
(31,64,4),
(204,134,2),
(218,124,3),
(68,110,1),
(174,91,3),
(165,82,2),
(139,64,3),
(136,106,2),
(59,119,3),
(44,79,2),
(193,122,2),
(60,98,3),
(262,140,3),
(238,59,3),
(49,114,1),
(99,113,2),
(222,141,3),
(200,149,2),
(121,147,4),
(217,98,3),
(7,78,4),
(290,142,4),
(28,105,4),
(139,111,1),
(283,57,3),
(223,86,2),
(65,56,3),
(50,97,4),
(39,93,1),
(106,78,2),
(105,97,1),
(251,75,4),
(136,52,3),
(92,62,4),
(126,91,1),
(262,100,3),
(122,132,4),
(201,149,1),
(161,100,2),
(17,135,4),
(210,56,2),
(14,82,2),
(31,127,2),
(28,141,1),
(266,98,4),
(141,144,2),
(57,121,3),
(147,92,2),
(153,77,4),
(259,144,3),
(272,51,3),
(192,81,4),
(248,83,4),
(260,59,2),
(209,83,4),
(38,134,3),
(62,126,1),
(49,132,4),
(193,143,4),
(53,142,3),
(31,137,1),
(280,112,2),
(127,133,2),
(35,51,1),
(178,100,4),
(241,139,1),
(91,112,3),
(229,131,2),
(98,144,4),
(181,73,1),
(153,76,2),
(191,88,3),
(211,133,3),
(161,61,2),
(139,148,3),
(103,93,1),
(249,109,4),
(232,65,3),
(136,146,1),
(279,63,1),
(289,79,1),
(140,82,2),
(74,63,2),
(276,58,2),
(120,84,2),
(43,72,1),
(132,67,4),
(214,136,1),
(172,133,1),
(191,55,1),
(150,117,4),
(98,116,4),
(5,131,2),
(124,67,1),
(4,100,3),
(107,56,2),
(205,61,3),
(34,148,3),
(36,116,4),
(183,75,1),
(24,86,3),
(81,82,1),
(76,103,3);

SELECT * FROM pedido

drop table forma

ALTER TABLE forma_pagamento
	ADD nome VARCHAR(100)

ALTER TABLE forma_pagamento
	ADD debito VARCHAR(100)
	
ALTER TABLE forma_pagamento
	ADD credito VARCHAR(100)

ALTER TABLE forma_pagamento
	ADD pix VARCHAR(100)

ALTER TABLE forma_pagamento
	ADD dinheiro VARCHAR(100)
	
	
DESC forma_pagamento

#Excluindo campo da tabela
ALTER TABLE forma_pagamento
DROP COLUMN id_pedido


SELECT pizza_cardapio.sabor, controle_pizza.quantidade, controle_pizza.data_fabricacao FROM pizza_cardapio, controle_pizza
WHERE controle_pizza.id_pizza_cardapio = pizza_cardapio.id

SELECT pizza_cardapio.sabor, estoque.nome_produto, receita.quantidade_preparo FROM pizza_cardapio, estoque, receita
WHERE receita.id_pizza_cardapio = pizza_cardapio.id AND receita.id_estoque = estoque.id


----------------------------------------------------------------------------

SELECT cadastro_cliente FROM 

SELECT
sabor AS pizza,
data_fabricacao AS feito,
quantidade AS tem

FROM
pizza_cardapio,controle_pizza

WHERE data_fabricacao>='2024-03-06'-- AND quantidade BETWEEN  12 AND 18

----------------------------------------------------------------------------


SELECT cadastro_cliente.nome, cadastro_cliente.telefone FROM cadastro_cliente WHERE nome LIKE '%santos%' ORDER BY nome DESC

----------------------------------------------------------------------------


SELECT pizza_cardapio.sabor, controle_pizza.quantidade, controle_pizza.data_fabricacao FROM pizza_cardapio, controle_pizza
WHERE controle_pizza.id_pizza_cardapio = pizza_cardapio.id


----------------------------------------------------------------------------

SELECT pizza_cardapio.sabor, estoque.nome_produto, receita.quantidade_preparo FROM pizza_cardapio, estoque, receita
WHERE receita.id_pizza_cardapio = pizza_cardapio.id AND receita.id_estoque = estoque.id


-----------------------------------------------------------

SELECT forma_pagamento.forma, SUM(pedido.valor) AS soma 
FROM pedido JOIN forma_pagamento
ON pedido.id_forma_pagamento = forma_pagamento.id 
GROUP BY id_forma_pagamento;

# VALOR DAS VENDAS POR MEIO DE PAGAMENTO E A QUANTIDADE

-----------------------------------------------------------

SELECT estoque.nome_produto,
AVG(venda.quantidade) as mais_vendida
FROM estoque JOIN venda
ON venda.id_estoque=estoque.id
WHERE estoque.nome_produto LIKE "%pizza%"
GROUP BY estoque.nome_produto 
ORDER BY SUM(venda.quantidade) DESC
LIMIT 1

# PIZZA MAIS VENDIDA 

-----------------------------------------------------------

SELECT estoque.nome_produto,
SUM(venda.quantidade) as mais_vendida
FROM estoque JOIN venda
ON venda.id_estoque=estoque.id
WHERE estoque.nome_produto LIKE "%pizza%"
GROUP BY estoque.nome_produto 
ORDER BY SUM(venda.quantidade) ASC
LIMIT 1

# MENOS VENDIDA

------------------------------------------------------------

SELECT estoque.nome_produto,
AVG(venda.quantidade) as mais_vendida
FROM estoque JOIN venda
ON venda.id_estoque=estoque.id
WHERE estoque.nome_produto LIKE "%pizza%"
GROUP BY estoque.nome_produto 

# MEDIA DE PIZZA VENDIDA

------------------------------------------------------------

SELECT controle_pizza.data_fabricacao, SUM(controle_pizza.quantidade) AS quantidade
FROM pizza_cardapio JOIN controle_pizza
ON pizza_cardapio.id = controle_pizza.id_pizza_cardapio
GROUP BY controle_pizza.data_fabricacao

#QUANTIDADE DE PIZZA PRODUZIDA POR DIA

-------------------------------------------------------------

SELECT pizza_cardapio.sabor, controle_pizza.data_fabricacao, SUM(controle_pizza.quantidade) AS quantidade
FROM pizza_cardapio JOIN controle_pizza
ON pizza_cardapio.id = controle_pizza.id_pizza_cardapio
GROUP BY pizza_cardapio.sabor


#QUANTIDADE DE PIZZA PRODUZIDA POR SABOR 

--------------------------------------------------------------
SELECT *,LOWER (nome) AS Minusculo FROM cadastro_cliente
WHERE LTRIM(nome) LIKE '%Gabriela%';

SELECT *,LOWER (Ltrim(nome)) AS Minusculo FROM cadastro_cliente
WHERE LTRIM(nome) LIKE '%Gabriela%';


CREATE TABLE datas(
id INT PRIMARY KEY AUTO_INCREMENT,
DATA VARCHAR(30),
nome VARCHAR(30)
)


SELECT LPAD(CONCAT(MONTH(data_fabricacao), 
EXTRACT(YEAR FROM data_fabricacao)),6,0)
AS NOVO
FROM controle_pizza

SELECT * FROM controle_pizza

-------------------------------------
#Cliente nome > Data > Produtos comprados

SELECT cadastro_cliente.nome AS Cliente, controle_pizza.data_fabricacao AS data, pizza_cardapio.sabor AS produto, pedido.valor
FROM cadastro_cliente, pizza_cardapio, controle_pizza, pedido
WHERE cadastro_cliente.id_cliente = pedido.id


-------------------------------------
#Cliente nome > Forma Pagamento > Valor total

SELECT cadastro_cliente.nome, forma_pagamento.forma, pedido.valor
FROM cadastro_cliente, forma_pagamento, pedido
WHERE cadastro_cliente.id_cliente = pedido.id

-------------------------------------

#20/04/2024

SELECT * FROM cadastro_cliente
WHERE id_cliente = 01
UNION 
SELECT * FROM cadastro_cliente
WHERE id_cliente = 04


SELECT * FROM pedido

SELECT COUNT(id_cliente) FROM cadastro_cliente

SELECT id_cliente FROM cadastro_cliente
INTERSECT
SELECT id_cliente FROM pedido


SELECT id_cliente FROM cadastro_cliente
EXCEPT
SELECT id_cliente FROM pedido

------------------------------------------

DELIMITER $$
CREATE PROCEDURE cliente()
BEGIN 
SELECT * FROM cadastro_cliente;
END $$
DELIMITER ;

------------------------------------------

SELECT COUNT(id_cliente) FROM cliente
WHERE id_cliente IN(
SELECT id_cliente FROM cliente;
END $$
DELIMITER ;

CALL cliente;

-------------------------------------------

CREATE TABLE venda_cliente(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente int,
nome_cliente VARCHAR(100),
valor_venda VARCHAR(100)
)

DESC venda_cliente

#Criar Select com Join(juntar) dados de id_cliente , nome e valor do pedido

SELECT cadastro_cliente.id_cliente, cadastro_cliente.nome, pedido.valor
FROM cadastro_cliente JOIN pedido
ON cadastro_cliente.id_cliente = pedido.id_cliente
--------------------------------------------------

DESC venda_cliente

SELECT * FROM venda_cliente

#Criar procedimento para inserir dados (procedure)
DELIMITER $$
CREATE PROCEDURE vendacliente()
BEGIN 
INSERT INTO venda_cliente(id_cliente, nome_cliente, valor_venda)
SELECT cadastro_cliente.id_cliente, cadastro_cliente.nome, pedido.valor
FROM cadastro_cliente JOIN pedido
ON cadastro_cliente.id_cliente = pedido.id_cliente;
END $$
DELIMITER ;

#Rodar procedimento criado anteriormente (procedure)
CALL vendacliente

----------------------------------------------------

DELIMITER $$

CREATE PROCEDURE Verificar(OUT quantidade INT)
BEGIN 
SELECT COUNT(*) INTO quantidade FROM cadastro_cliente;
END $$
DELIMITER;

CALL Verificar(@tot);
SELECT @tot;

----------------------------------------------------

DELIMITER $$

CREATE PROCEDURE Elevar(INOUT numero INT)
BEGIN 
SET numero = numero * numero;
END $$
DELIMITER;

SET @valor = 5;
CALL Elevar(@valor);
SELECT @valor;

----------------------------------------------------

DELIMITER // 
CREATE FUNCTION hello(nome VARCHAR(100))
RETURNS VARCHAR(100) DETERMINISTIC 
BEGIN 
RETURN CONCAT('Hello, ',nome, '!');
END ; //

DELIMITER;

SELECT hello("Roger");

----------------------------------------------------

DELIMITER //
CREATE FUNCTION valtotal(valor INT, qtd INT)
RETURNS INT deterministic
BEGIN
DECLARE total INT;
SET total = valor*qtd;
RETURN total;
END; //
DELIMITER ;

SELECT *, valtotal (valor,quantidade) AS RESULTADO FROM venda;

----------------------------------------------------

DELIMITER //
CREATE FUNCTION Calcvalue (starting_value INT)
RETURNS INT DETERMINISTIC 
BEGIN 

	DECLARE total_value INT;
	SET total_value = 0;
	label1: WHILE total_value <= 3000 DO 
		SET total_value = total_value + starting_value;
	END WHILE label1;
	RETURN total_value;

END; //
DELIMITER;

SELECT Calcvalue(1000);
----------------------------------------------------

#FUNCAO PARA CALCULAR 23% DE AUMENTO DA PIZZA

DELIMITER //
CREATE or replace FUNCTION ValorNovo(valor_novo FLOAT, preco FLOAT)
RETURNS FLOAT deterministic
BEGIN
DECLARE total float;
SET total = preco+preco*(valor_novo/100);
RETURN total;
END; //
DELIMITER;


SELECT sabor, valor, ValorNovo(23,valor) FROM pizza_cardapio;

#CALCULAR DIFERENCA GERADA


































