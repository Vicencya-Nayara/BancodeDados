use PlatModas;

-- tabela clientes
INSERT INTO Clientes (nome_usuario, endereco, email, senha, nome_completo)
VALUES
    ('Vicencyan', 'DIVISÃO, 184 - CEDRO', 'vicnayara@gmail.com', 'NAYARA123', 'Vicencya Nayara Diniz'),
    ('Meduarda1', 'FORMENTO, 33 - IGUATU', 'eduarda1@gmail.com', 'DUDA987.', 'Maria Eduarda Ferreita'),
    ('Raynara_kelly23', 'DIVISÃO, 389 - CEDRO', 'raynarak22@gmail.com', 'NARAKEL78', 'Raynara Kelly Diniz'),
    ('Matheus9057', 'ALTO DO PADEIRO - CEDRO', 'matheus57@gmail.com', 'SILVAMATHEUS77', 'Matheus Souza Silva'),
    ('NayaKelly', 'DIVISÃO, 200 - CEDRO', 'nayk123@gmail.com', 'KELLY556', 'Nayanne Kelly Diniz'),
    ('AlaideOli', 'AVENIDA PEDRO LOPES, 300 - CEDRO', 'alaide@gmail.com', 'ALAMARIA!1', 'Maria Alaide Oliveira'),
    ('Leticelima', 'CAUCAIA, 86 - FORTALEZA', 'lima354@gmail.com', 'LELIMA!9', 'Letice Lima de Oliveira'),
    ('AlexandreNeto', 'PEGA AVOANTE, 77 - CEDRO', 'alenet@gmail.com', 'ALENETO00.', 'Alexandre da Silva Neto'),
    ('LorenzoRibei', 'CAIXA D\'AGUA, 140 - CRATO', 'lorenzo765@gmail.com', 'LORENZO765!', 'Anthony Lorenzo Ribeiro'),
    ('HelysaAna', 'Alto da Penha, 321 - CRATO', 'lysa12@gmail.com', 'LYSADANADA77', 'Ana Helysa Ribeiro'),
    ('Valentina07', 'RECANTO, 44 - CEDRO', 'valsilva07@gmail.com', 'VALENTINA33!', 'Maria Valentina Silva');


-- Tabela produto
INSERT INTO Produto (nome, descricao, preco, categoria, tamDisponivel)
VALUES
    ('Camiseta Branca', 'Camiseta básica branca', 19.99, 'Roupas', 'M'),
    ('Calça Jeans', 'Calça jeans azul clara', 49.99, 'Roupas', 'L'),
    ('Vestido Floral', 'Vestido floral estampado', 59.99, 'Roupas', 'S'),
    ('Bermuda Cargo', 'Bermuda cargo verde militar', 29.99, 'Roupas', 'XL'),
    ('Sapato Social Preto', 'Sapato social preto de couro', 79.99, 'Calçados', '40'),
    ('Bolsa de Couro', 'Bolsa de couro marrom', 39.99, 'Acessórios', ''),
    ('Óculos de Sol', 'Óculos de sol estilo aviador', 24.99, 'Acessórios', ''),
    ('Chapéu de Palha', 'Chapéu de palha para praia', 14.99, 'Acessórios', ''),
    ('Jaqueta de Couro', 'Jaqueta de couro marrom', 89.99, 'Roupas', 'M'),
    ('Saia Plissada', 'Saia plissada de cores variadas', 34.99, 'Roupas', 'S'),
    ('Tênis Esportivo', 'Tênis esportivo branco', 54.99, 'Calçados', '38'),
    ('Brincos de Prata', 'Brincos de prata com detalhes', 9.99, 'Acessórios', ''),
    ('Blusa de Moletom', 'Blusa de moletom cinza', 39.99, 'Roupas', 'L'),
    ('Calça Legging', 'Calça legging preta', 24.99, 'Roupas', 'M'),
    ('Relógio de Pulso', 'Relógio de pulso dourado', 29.99, 'Acessórios', '');

-- tabela carrinho de compras

INSERT INTO Carrinho_de_Compras (data_criacao, total_pagar, fk_Clientes_id_cliente)
VALUES ("2022-10-05", 70.00, 1);

INSERT INTO Carrinho_de_Compras (data_criacao, total_pagar, fk_Clientes_id_cliente)
VALUES ("2022-06-04", 75.00, 10),("2022-01-04", 100.00, 11);

INSERT INTO Carrinho_de_Compras (data_criacao, total_pagar, fk_Clientes_id_cliente)
VALUES ("2023-04-04", 49.99, 2), ("2021-11-09", 115.97, 3), ("2020-04-03", 34.99, 4),
       ("2020-10-11", 94.97, 5), ("2022-04-02", 9.99, 6), ("2021-02-02", 67.99, 7),
       ("2023-01-10", 98.99, 8), ("2020-12-31", 99.99, 9);
       
-- tabela pagamento
INSERT INTO Pagamento (metodoPagamento, numero_cartao, data_val_cartao)
VALUES
    ('Cartão de Crédito', 123456789, '2024-12-31'),
    ('PayPal', NULL, NULL),
    ('Transferência Bancária', NULL, NULL);

INSERT INTO Pagamento (metodoPagamento, numero_cartao, data_val_cartao)
VALUES
    ('Cartão de Crédito', 890123456, '2023-12-31'),
    ('PayPal', NULL, NULL),
    ('Transferência Bancária', NULL, NULL),
    ('Boleto Bancário', NULL, NULL),
    ('Cartão de Débito', 987654321, '2024-06-30'),
    ('Pix', NULL, NULL),
    ('Apple Pay', NULL, NULL),
    ('Google Pay', NULL, NULL);


-- tabela pedido

INSERT INTO Pedido (endereco_entrega, data_criacao, statusPedido, itens_pedido, fk_Clientes_id_cliente, fk_Pagamento_id_pagamento)
VALUES
    ('DIVISÃO, 184 - CEDRO', '2023-08-29', 'Pendente', 3, 1, 1),
    ('FORMENTO, 33 - IGUATU', '2023-08-29', 'Processando', 2, 2, 2),
    ('DIVISÃO, 389 - CEDRO', '2023-08-30', 'Enviado', 5, 3, 3),
    ('ALTO DO PADEIRO - CEDRO', '2023-08-30', 'Entregue', 1, 1, 4),
    ('DIVISÃO, 200 - CEDRO', '2023-08-31', 'Pendente', 4, 4, 5),
    ('CAUCAIA, 86 - FORTALEZA', '2023-08-31', 'Processando', 2, 2, 6),
    ('PEGA AVOANTE, 77 - CEDRO', '2023-09-01', 'Enviado', 3, 5, 7),
    ('AVENIDA PEDRO LOPES, 300 - CEDRO', '2023-09-01', 'Entregue', 1, 3, 8),
    ('CAIXA D\'AGUA, 140 - CRATO', '2023-09-02', 'Pendente', 2, 1, 9),
    ('Alto da Penha, 321 - CRATO', '2023-09-02', 'Processando', 6, 4, 10),
    ('RECANTO, 44 - CEDRO', '2023-09-03', 'Enviado', 3, 2, 11);
    
-- tabela itens

INSERT INTO Itens (quantidade, valor, fk_Produto_id_produto)
VALUES
    (2, 45.99, 1),
    (3, 29.99, 2),
    (1, 12.50, 3),
    (4, 8.75, 4),
    (2, 64.00, 5),
    (5, 18.49, 6),
    (1, 39.90, 7),
    (3, 7.25, 8),
    (2, 22.50, 9),
    (1, 5.99, 10);
    
-- tabela avalia

INSERT INTO Avalia (fk_Clientes_id_cliente, fk_Produto_id_produto, classicacao, comentario, data_avaliacao)
VALUES
    (1, 1, 5, 'Produto incrível, excedeu minhas expectativas!', '2023-08-30'),
    (2, 3, 4, 'Ótimo custo-benefício.', '2023-09-02'),
    (3, 2, 3, 'Gostei, mas esperava mais.', '2023-09-05'),
    (4, 4, 5, 'Perfeito para o que eu precisava.', '2023-09-07'),
    (5, 1, 2, 'Decepcionante, qualidade muito ruim.', '2023-09-10'),
    (1, 5, 4, 'Produto excelente, recomendo!', '2023-09-12'),
    (3, 3, 5, 'Surpreendentemente bom!', '2023-09-15'),
    (2, 2, 1, 'Péssima qualidade, não vale o preço.', '2023-09-18'),
    (4, 1, 3, 'Na média, atendeu minhas necessidades.', '2023-09-20'),
    (5, 4, 5, 'Melhor compra que já fiz!', '2023-09-22');




