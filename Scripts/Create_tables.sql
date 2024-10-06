-- Tabela Clientes
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100),
    email NVARCHAR(100),
    data_cadastro DATE,
    endereco NVARCHAR(255)
);

-- Tabela Produtos
CREATE TABLE produtos (
    produto_id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100),
    preco DECIMAL(10, 2),
    categoria NVARCHAR(50),
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(fornecedor_id)
);

-- Tabela Fornecedores
CREATE TABLE fornecedores (
    fornecedor_id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100),
    contato NVARCHAR(100)
);

-- Tabela Pedidos
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY IDENTITY,
    cliente_id INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Tabela Itens do Pedido
CREATE TABLE itens_pedido (
    item_id INT PRIMARY KEY IDENTITY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);
