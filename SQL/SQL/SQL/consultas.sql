-- Listar clientes
SELECT * FROM clientes;

-- Listar produtos
SELECT * FROM produtos;

-- Total de vendas por cliente
SELECT
    c.nome,
    COUNT(v.id_venda) AS total_vendas
FROM clientes c
JOIN vendas v
ON c.id_cliente = v.id_cliente
GROUP BY c.nome;
