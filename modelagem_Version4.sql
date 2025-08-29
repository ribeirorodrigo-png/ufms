-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo registros na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Livro: Python Básico', 49.90),
(2, 'Café Expresso', 7.50),
(3, 'Caderno de Anotações', 15.00);

-- Inserindo registros na tabela pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-08-28'),
(2, 2, 1, '2025-08-29'),
(3, 3, 5, '2025-08-29');