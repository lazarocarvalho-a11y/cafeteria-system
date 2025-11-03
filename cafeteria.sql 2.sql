-- Criando tabela produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    tipo VARCHAR(50)
);

-- Inserindo produtos
INSERT INTO produtos (id, nome, preco, tipo) VALUES
(1, 'Café Expresso', 5.00, 'Bebida'),
(2, 'Cappuccino', 8.50, 'Bebida'),
(3, 'Pão de Queijo', 4.00, 'Comida');

-- Criando tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    forma_pagamento VARCHAR(20),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido, forma_pagamento) VALUES
(1, 1, 2, '2025-11-02', 'Dinheiro'),
(2, 2, 1, '2025-11-02', 'Cartão'),
(3, 3, 3, '2025-11-02', 'Pix');

-- Atualizando pedido
UPDATE pedidos SET quantidade = 4 WHERE id = 2;

-- Removendo um produto
DELETE FROM produtos WHERE id = 3;

-- Consultas
SELECT * FROM produtos;
SELECT * FROM pedidos;
