-- Inserir dados na tabela Fornecedores
INSERT INTO fornecedores (nome, contato) VALUES 
('Aspen', 'fornecedor1@exemplo.com'),
('Brasil_magnesio', 'fornecedor2@exemplo.com');

-- Inserir dados na tabela Produtos
INSERT INTO produtos (nome, preco, categoria, fornecedor_id) VALUES 
('Produto A', 10.50, 'Categoria 1', 1),
('Produto B', 25.00, 'Categoria 2', 1),
('Produto C', 7.30, 'Categoria 1', 2);

-- Inserir dados na tabela Clientes
INSERT INTO clientes (nome, email, data_cadastro, endereco) VALUES 
('José Medeiros', 'auditoria1@exemplo.com', '2024-01-01', 'Rua A, 123'),
('Cesar Reis', 'cliente2@exemplo.com', '2024-02-15', 'Rua B, 456'),
('Laura Silva', 'cliente3@exemplo.com', '2024-02-15', 'Rua C, 576');

-- Inserir dados na tabela Pedidos
INSERT INTO pedidos (cliente_id, data_pedido) VALUES 
(1, '2024-05-01'),
(2, '2024-05-05'),
(3, '2024-05-10');

-- Inserir dados na tabela Itens Pedido
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco) VALUES 
(1, 1, 2, 10.50),
(1, 3, 1, 7.30),
(2, 2, 1, 25.00);
