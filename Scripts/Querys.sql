SELECT 
    c.nome AS Cliente,
    SUM(i.preco * i.quantidade) AS Total_Vendas
FROM 
    clientes c
JOIN 
    pedidos p ON c.cliente_id = p.cliente_id
JOIN 
    itens_pedido i ON p.pedido_id = i.pedido_id
GROUP BY 
    c.nome;



SELECT 
    p.categoria,
    p.nome,
    SUM(i.quantidade) AS Quantidade_Vendida
FROM 
    produtos p
JOIN 
    itens_pedido i ON p.produto_id = i.produto_id
GROUP BY 
    p.categoria, p.nome
ORDER BY 
    Quantidade_Vendida DESC;



SELECT 
    p.pedido_id,
    c.nome AS Cliente,
    p.data_pedido,
    SUM(i.preco * i.quantidade) AS Total_Pedido
FROM 
    pedidos p
JOIN 
    clientes c ON p.cliente_id = c.cliente_id
JOIN 
    itens_pedido i ON p.pedido_id = i.pedido_id
GROUP BY 
    p.pedido_id, c.nome, p.data_pedido;



CREATE PROCEDURE sp_total_vendas_cliente
AS
BEGIN
    SELECT 
        c.nome AS Cliente,
        SUM(i.preco * i.quantidade) AS Total_Vendas
    FROM 
        clientes c
    JOIN 
        pedidos p ON c.cliente_id = p.cliente_id
    JOIN 
        itens_pedido i ON p.pedido_id = i.pedido_id
    GROUP BY 
        c.nome;
END;
