CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATETIME NOT NULL,
    status_pedido VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO produtos (nome_produto, descricao, preco, estoque) VALUES
('Livro: O Senhor dos Anéis', 'Edição de colecionador do clássico de fantasia', 89.90, 50),
('Café Especial: Blend da Casa', 'Grãos selecionados para um café aromático', 25.50, 100),
('Caneca Personalizada', 'Caneca de cerâmica com design exclusivo', 35.00, 75);

INSERT INTO pedidos (id_produto, quantidade, data_pedido, status_pedido) VALUES
(1, 1, '2025-08-29 10:00:00', 'Processando'),
(2, 2, '2025-08-29 10:30:00', 'Concluído'),
(3, 1, '2025-08-29 11:00:00', 'Pendente');