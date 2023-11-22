USE db_foodDelivery;

INSERT INTO tb_usuario (senha, data_criacao, data_ultima_atualizacao, ativo)
VALUES 
('12345678', '2023-11-13 12:34:56', NULL, 1),
('17394826', '2023-11-13 11:32:55', NULL, 1), 
('98765432', '2023-11-14 08:00:00', '2023-11-14 08:05:00', 1),
('56789012', '2023-11-14 10:30:00', NULL, 0), 
('45678901', '2023-11-14 12:00:00', NULL, 1), 
('34567890', '2023-11-14 15:45:00', '2023-11-14 16:00:00', 0), 
('72830827', '2023-11-14 18:30:00', NULL, 1),
('23456789', '2023-11-14 20:15:00', NULL, 1),
('12345678', '2023-11-14 23:45:00', '2023-11-14 23:50:00', 0), 
('34561234', '2023-11-15 09:30:00', NULL, 1);

INSERT INTO tb_cliente (
usuario, cpf, rg, pre_nome, sobrenome, sexo, data_nascimento)  
VALUES 
  ('user1', '12345678901', 'AB1234567', 'João', 'Silva', 'M', '1990-05-15'),
  ('user2', '98765432109', 'CD9876543', 'Maria', 'Oliveira', 'F', '1985-08-22'),
  ('user3', '87654321098', 'EF8765432', 'Carlos', 'Santos', 'M', '2000-02-10'),
  ('user4', '23456789012', 'GH2345678', 'Ana', 'Costa', 'F', '1978-11-30'),
  ('user5', '34567890123', 'IJ3456789', 'Pedro', 'Pereira', 'M', '1995-07-03'),
  ('user6', '45678901234', 'KL4567890', 'Fernanda', 'Rodrigues', 'F', '1982-04-18'),
  ('user7', '56789012345', 'MN5678901', 'Ricardo', 'Ferreira', 'M', '1998-09-25'),
  ('user8', '67890123456', 'OP6789012', 'Cristina', 'Lima', 'F', '1970-12-08'),
  ('user9', '78901234567', 'QR7890123', 'Eduardo', 'Almeida', 'M', '1987-03-14'),
  ('user10', '89012345678', 'ST8901234', 'Carolina', 'Martins', 'F', '1993-06-28');


INSERT INTO tb_categoria_estabelecimento 
(nome) 
VALUES
  ('Restaurante'),
  ('Cafeteria'),
  ('Loja de Roupas'),
  ('Supermercado'),
  ('Academia'),
  ('Farmácia'),
  ('Cinema'),
  ('Posto de Gasolina'),
  ('Salão de Beleza'),
  ('Padaria');
  
  

INSERT INTO tb_estabelecimento 
(categoria_estabelecimento_id,cnpj, razao_social, nome_fantasia, descricao, email, nota) 
VALUES 
  (1, '12345678901234', 'Restaurante XYZ Ltda.', 'XYZ Restaurante', 'Um ótimo lugar para saborear deliciosas refeições.', 'contato@xyzrestaurante.com', 4.5),
  (2, '98765432109876', 'Café Aroma', 'Aroma Café', 'Cafeteria aconchegante com uma variedade de cafés especiais.', 'contato@aromacafe.com', 4.2),
  (3, '87654321098765', 'Moda Fashion', 'Fashion Store', 'Loja de roupas com as últimas tendências da moda.', 'contato@fashionstore.com', 4.8),
  (4, '23456789012345', 'Super Mercado Econômico', 'Econômico Supermercado', 'Oferecendo uma ampla seleção de produtos a preços acessíveis.', 'contatoesupermercado@gmail.com', 4.0),
  (5, '34567890123456', 'Gym Fitness', 'Fitness Gym', 'Academia moderna com equipamentos de última geração.', 'contato@gymfitness.com', 4.7),
  (7, '45678901234567', 'Farmácia Saúde Total', 'Saúde Total Farmácia', 'Farmácia dedicada a fornecer produtos de saúde de qualidade.', 'contato@saudefarmacia.com', 4.3),
  (2, '56789012345678', 'CineCenter', 'Center Cinemas', 'Multiplex com as últimas estreias de filmes.', 'contato@cinecenter.com', 4.6),
  (8, '67890123456789', 'Posto Veloz', 'Veloz Posto de Gasolina', 'Abasteça rápido e com qualidade.', 'contato@velozposto.com', 4.1),
  (10, '78901234567890', 'Beleza Charme', 'Charme Salão de Beleza', 'Salão de beleza especializado em tratamentos de beleza e bem-estar.', 'contato@charmesalao.com', 4.9),
  (9, '89012345678901', 'Padaria Sabor da Manhã', 'Sabor da Manhã Padaria', 'Padaria com pães frescos e deliciosos.', 'contatosabordamanha@gmail.com', 4.4);


INSERT INTO tb_contato_estabelecimento (estabelecimento_id, contato)
VALUES 
  (1, '11223344556'),
  (2, '99887766554'),
  (3, '55443322110'),
  (4, '98765432109'),
  (5, '12345678901'),
  (6, '11223344556'),
  (7, '99887766554'),
  (8, '55443322110'),
  (9, '98765432109'),
  (10, '12345678901');

INSERT INTO tb_endereco (
cep, tipo_logradouro, logradouro, bairro, cidade, uf)
VALUES 
  ('01234567', 'Rua', 'Rua A', 'Centro', 'São Paulo', 'SP'),
  ('23456789', 'Avenida', 'Avenida B', 'Jardins', 'São Paulo', 'SP'),
  ('34567890', 'Rua', 'Rua C', 'Copacabana', 'Rio de Janeiro', 'RJ'),
  ('45678901', 'Avenida', 'Avenida D', 'Ipanema', 'Rio de Janeiro', 'RJ'),
  ('56789012', 'Rua', 'Rua E', 'Boa Viagem', 'Recife', 'PE'),
  ('67890123', 'Avenida', 'Avenida F', 'Boa Vista', 'Recife', 'PE'),
  ('78901234', 'Travessa', 'Travessa G', 'Batel', 'Curitiba', 'PR'),
  ('89012345', 'Rua', 'Rua H', 'Centro', 'Porto Alegre', 'RS'),
  ('90123456', 'Avenida', 'Avenida I', 'Santana', 'São Paulo', 'SP'),
  ('12345678', 'Rua', 'Rua J', 'Barra', 'Salvador', 'BA');


INSERT INTO tb_endereco_cliente (
cliente_id, cep, numero, ponto_referencia, complemento) 
VALUES 
  (1, '01234567', '123', 'Próximo à Praça', 'Apto 101'),
  (2, '23456789', '456', 'Ao lado do Parque', NULL),
  (3, '34567890', '789', 'Próximo à Estação', 'Bloco B'),
  (4, '45678901', '101', 'Perto do Shopping', 'Apto 304'),
  (5, '56789012', '202', 'Em frente à Praia', NULL),
  (6, '67890123', '404', 'Ao lado do Mercado', 'Condomínio Residencial'),
  (7, '78901234', '505', 'Próximo ao Teatro', NULL),
  (8, '89012345', '606', 'Perto da Praça de Alimentação', 'Apto 20'),
  (9, '90123456', '707', 'Ao lado do Parque', 'Casa Amarela'),
  (10, '12345678', '808', 'Próximo à Arena', 'Bloco C');

INSERT INTO tb_status (nome, status_anterior, status_proximo)
VALUES
    ('pendente', NULL, NULL),
    ('aceito', NULL, NULL),
    ('em preparacao', NULL, NULL),
    ('pronto para entrega', NULL, NULL),
    ('a caminho', NULL, NULL),
    ('finalizado', NULL, NULL);


INSERT INTO tb_pedido (endereco_cliente_id, estabelecimento_id, 
cliente_id, status_id, data_hora_solicitacao, data_hora_entrega, 
total, desconto) 
VALUES 
  (1, 1, 1, 6, '2023-11-16 14:30:00', '2023-11-16 15:15:00', 50.00, 5.00),
  (2, 2, 2, 4, '2023-11-16 15:00:00', '2023-11-16 16:00:00', 80.00, 8.00),
  (3, 3, 3, 3, '2023-11-16 15:30:00', '2023-11-16 16:45:00', 120.00, 10.00),
  (4, 4, 4, 1, '2023-11-16 16:00:00', '2023-11-16 17:30:00', 45.00, 4.50),
  (5, 5, 5, 2, '2023-11-16 16:30:00', '2023-11-16 17:45:00', 65.00, 6.50),
  (6, 6, 6, 5, '2023-11-16 17:00:00', '2023-11-16 18:00:00', 90.00, 9.00),
  (7, 7, 7, 3, '2023-11-16 17:30:00', '2023-11-16 18:15:00', 55.00, 5.50),
  (8, 8, 8, 4, '2023-11-16 18:00:00', '2023-11-16 19:00:00', 75.00, 7.50),
  (9, 9, 9, 1, '2023-11-16 18:30:00', '2023-11-16 19:45:00', 110.00, 11.00),
  (10, 10, 6, 5, '2023-11-16 19:00:00', '2023-11-16 20:00:00', 40.00, 4.00);


INSERT INTO tb_pedido_historico (pedido_id, status_id, data_hora) 
VALUES 
  (1, 6, '2023-11-16 15:00:00'),
  (2, 4, '2023-11-16 16:30:00'),
  (3, 5, '2023-11-16 17:45:00'),
  (4, 2, '2023-11-16 18:45:00'),
  (5, 5, '2023-11-16 19:15:00'),
  (6, 1, '2023-11-16 20:00:00'),
  (7, 2, '2023-11-16 20:30:00'),
  (8, 3, '2023-11-16 21:15:00'),
  (9, 4, '2023-11-16 22:00:00'),
  (10, 1, '2023-11-16 22:30:00');


INSERT INTO tb_estabelecimento_endereco (estabelecimento_id, 
cep, numero, ponto_referencia, complemento) 
VALUES 
  (1, '01234567', '101', 'Próximo à Praça', 'Loja 1'),
  (2, '12345678', '202', 'Ao lado do Parque', 'Loja Principal'),
  (3, '23456789', '303', 'Próximo à Estação', 'Piso Superior'),
  (4, '34567890', '404', 'Perto do Shopping', 'Apto 302'),
  (5, '45678901', '505', 'Em frente à Praia', 'Loja de Esquina'),
  (6, '56789012', '606', 'Ao lado do Mercado', 'Sala 3'),
  (7, '67890123', '707', 'Próximo ao Teatro', 'Loja Térreo'),
  (8, '78901234', '808', 'Perto da Praça de Alimentação', 'Apto 15'),
  (9, '89012345', '909', 'Ao lado do Parque', 'Condomínio Residencial Bloco B'),
  (10, '90123456', '1010', 'Próximo à Arena', 'Sala 10');


INSERT INTO tb_dias_semana (nome)
VALUES 
  ('Domingo'),
  ('Segunda-feira'),
  ('Terça-feira'),
  ('Quarta-feira'),
  ('Quinta-feira'),
  ('Sexta-feira'),
  ('Sábado');


INSERT INTO tb_horario_funcionamento (estabelecimento_id, 
dia_id, horario_inicio, horario_fim, almoco) 
VALUES 
  (1, 1, '08:00:00', '18:00:00', 1),
  (2, 2, '09:00:00', '17:30:00', 0),
  (3, 3, '08:30:00', '19:00:00', 1),
  (4, 4, '10:00:00', '18:00:00', 0),
  (5, 5, '08:00:00', '20:00:00', 1),
  (6, 6, '10:30:00', '17:00:00', 0),
  (7, 7, '11:00:00', '15:00:00', 0),
  (8, 1, '09:00:00', '21:00:00', 1),
  (9, 3, '10:00:00', '20:00:00', 0),
  (10, 5, '08:30:00', '19:30:00', 1);


INSERT INTO tb_categoria_cardapio (nome) 
VALUES
  ('Entradas'),
  ('Pratos Principais'),
  ('Sobremesas'),
  ('Bebidas'),
  ('Especiais do Chef'),
  ('Saladas'),
  ('Sanduíches'),
  ('Comida Vegetariana'),
  ('Comida Vegana'),
  ('Bebidas Alcoólicas');


INSERT INTO tb_cardapio (categoria_cardapio_id, 
estabelecimento_id, nome) 
VALUES 
  (1, 1, 'Bruschetta de Tomate'),
  (2, 2, 'Filé à Parmegiana'),
  (3, 3, 'Mousse de Chocolate'),
  (4, 4, 'Coca-Cola'),
  (5, 5, 'Risoto do Chef'),
  (1, 1, 'Carpaccio de Salmão'),
  (2, 2, 'Risoto de Funghi'),
  (3, 3, 'Bolo de Morango'),
  (4, 4, 'Suco de Laranja'),
  (5, 5, 'Especial da Casa'),
  (8,5, 'filé mignon');

INSERT INTO tb_categoria_item (nome)
VALUES 
  ('Carne'),
  ('Peixe'),
  ('Vegetariano'),
  ('Vegano'),
  ('Acompanhamento'),
  ('Sobremesa'),
  ('Bebida Quente'),
  ('Bebida Gelada'),
  ('Entrada'),
  ('Prato Principal');
  
  INSERT INTO tb_item_cardapio (cardapio_id, categoria_item_id, nome, preco_unitario, descricao, observacoes)
VALUES
  (2, 1, 'Picanha Grelhada', 39.90, 'Suculenta picanha', 'Acompanha batatas rústicas.'),
  (1, 3, 'Pizza Margherita', 28.50, 'Pizza clássica', 'Opção sem glúten disponível.'),
  (3, 2, 'Frango Teriyaki', 18.75, 'Frango grelhado teriyaki', 'Acompanha arroz de jasmim.'),
  (4, 4, 'Café Espresso', 4.50, 'Bebida intensa', 'Opção descafeinada disponível.'),
  (2, 5, 'Cheesecake de Morango', 14.99, 'Cheesecake de morango', 'Sem glúten e sem lactose.'),
  (1, 1, 'Espaguete à Bolonhesa', 22.90, 'Espaguete à bolonhesa', 'Adicionar queijo parmesão ralado por cima.'),
  (5, 3, 'Salada de Frutas', 10.25, 'Salada de frutas', 'Opção sem açúcar disponível.'),
  (4, 2, 'Chá Verde Gelado', 6.75, 'Chá verde gelado', 'Adoçado com mel natural.'),
  (3, 4, 'Sorvete de Baunilha', 7.50, 'Sorvete de baunilha', 'Adicionar calda de chocolate quente.'),
  (5, 5, 'Tiramisu', 16.50, 'Sobremesa italiana clássica', 'Polvilhado com cacau em pó.');



INSERT INTO tb_item_pedido (
pedido_id, item_cardapio_id, quantidade, observacao)
VALUES 
  (1, 1, 2, 'Sem cebola, por favor.'),
  (2, 2, 1, 'Adicionar queijo extra.'),
  (3, 3, 3, 'Sem lactose, por favor.'),
  (4, 4, 2, 'Acompanha molho teriyaki adicional.'),
  (5, 5, 1, 'Adicionar açúcar ao café.'),
  (6, 6, 2, 'Ponto da carne: mal passada.'),
  (7, 7, 1, 'Opção vegetariana, sem frango.'),
  (8, 8, 1, 'Sushi sem wasabi.'),
  (9, 9, 2, 'Com chantilly no sorvete.'),
  (10, 10, 1, 'Adicionar mais morangos na cheesecake.');


INSERT INTO tb_cartao ( 
cliente_id, numero, nome, validade, cvv)
VALUES
  (1, '1111222233334444', 'João Silva', '12/25', '123'),
  (2, '2222333344445555', 'Maria Oliveira', '06/24', '456'),
  (3, '3333444455556666', 'Carlos Santos', '09/23', '789'),
  (4, '4444555566667777', 'Ana Pereira', '03/26', '321'),
  (5, '5555666677778888', 'João Silva', '08/24', '456'),
  (6, '6666777788889999', 'Maria Oliveira', '11/25', '789'),
  (7, '7777888899990000', 'Carlos Santos', '02/23', '123'),
  (8, '8888999900001111', 'Ana Pereira', '05/22', '456'),
  (9, '9999000011112222', 'João Silva', '10/25', '789'),
  (10, '1234123412345678', 'Maria Oliveira', '04/23', '321');
  
INSERT INTO tb_voucher (
codigo_promo, valor, porcentagem, tipo_voucher, data_inicio, data_fim, descricao, quantidade)
VALUES 
  ('ANIVERSARIO20', 20.00, NULL, 1, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 'Desconto especial de aniversário: R$ 20,00', 30),
  ('NOVEMBRO15', 15.00, NULL, 1, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 'Desconto de R$ 15,00 durante todo o mês de novembro', 100),
  ('BLACKFRIDAY50', 50.00, NULL, 1, '2023-11-26 00:00:00', '2023-11-26 23:59:59', 'Desconto de R$ 50,00 na Black Friday', 20),
  ('CYBERMONDAY', 30.00, NULL, 1, '2023-11-29 00:00:00', '2023-11-29 23:59:59', 'Desconto de 30% na Cyber Monday', 50),
  ('EARLYBIRD', 20.00, NULL, 1, '2023-12-01 00:00:00', '2023-12-10 23:59:59', 'Desconto de 20% para compras antecipadas', 50),
  ('DESC10', 10.00, NULL, 1, '2023-11-15 00:00:00', '2023-12-15 23:59:59', 'Desconto de R$ 10,00 em qualquer compra', 100),
  ('FRETEGRATIS', 15.00, NULL, 0, '2023-11-15 12:00:00', '2023-11-30 23:59:59', 'Frete grátis em todas as compras', 50),
  ('RECOMPENSA5', 5.00, NULL, 1, '2023-11-15 00:00:00', '2023-12-15 23:59:59', 'Receba R$ 5,00 de desconto em sua próxima compra', 200),
  ('DIA_PROGRAMADOR', 15.00, NULL, 1, '2023-11-15 00:00:00', '2023-11-15 23:59:59', 'Desconto especial no Dia do Programador', 30),
  ('25OFF', 25.00, NULL, 1, '2023-12-01 00:00:00', '2023-12-15 23:59:59', '25% de desconto em todo o site', 200);

INSERT INTO tb_pagamento (pedido_id, cartao_id, 
codigo_promo, valor, data_hora) 
VALUES 
  (1, 1, 'ANIVERSARIO20', 50.00, '2023-11-05 14:30:00'),
  (2, 2, 'NOVEMBRO15', 35.75, '2023-11-10 18:45:00'),
  (3, 3, 'BLACKFRIDAY50', 22.50, '2023-11-25 20:00:00'),
  (4, 4, 'CYBERMONDAY', 45.00, '2023-11-29 12:15:00'),
  (5, 5, 'EARLYBIRD', 18.00, '2023-12-02 08:30:00'),
  (6, 1, 'DESC10', 30.00, '2023-11-17 16:00:00'),
  (7, 2, 'FRETEGRATIS', 15.00, '2023-11-20 10:45:00'),
  (8, 3, 'RECOMPENSA5', 10.50, '2023-12-05 22:30:00'),
  (9, 4, 'DIA_PROGRAMADOR', 60.00, '2023-11-15 14:00:00'),
  (10, 5, '25OFF', 42.75, '2023-12-10 19:15:00');
 

