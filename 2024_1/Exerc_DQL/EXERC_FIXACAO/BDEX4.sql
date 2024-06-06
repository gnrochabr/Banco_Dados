#Usando a base de dados BDEX4_ESTOQUE, responda:
USE BDEX4_ESTOQUE;

#1. Exibir todas as informações da tabela `PRODUTOS`.
SELECT 
	*
FROM 
	produtos;

#2. Mostrar os nomes e preços dos produtos que custam mais de 50,00.
SELECT
	nome_pro, preco
FROM
	produtos
WHERE
	preco > 50;
    
#3. Listar os nomes e cidades dos fornecedores.
SELECT
	nome_for,cidade
FROM
	fornecedores;

#4. Exibir os detalhes dos pedidos de compra: ID do pedido, data, hora e nome do fornecedor.
SELECT 
	pc.id_pedido, pc.data_pedido, pc.hora_pedido, frnc.nome_for
FROM 
	pedidos_compra pc
JOIN 
	fornecedores frnc ON pc.fornecedor = frnc.id_fornecedor;

#5. Listar o nome dos produtos e a quantidade disponível em cada armazém.
SELECT
	arm.nome_armazem, prod.nome_pro, pa.quantidade
FROM
	produtos prod
JOIN
	produtos_armazens pa ON pa.produto = prod.id_produto
JOIN
	armazens arm ON arm.id_armazem = pa.armazem;
    
#6. Mostrar os nomes dos fornecedores que têm produtos no armazém de "São Paulo".
SELECT
	forn.nome_for
FROM
	fornecedores forn 
JOIN    
	produtos_fornecedores pf ON pf.fornecedor = forn.id_fornecedor
JOIN
	produtos prod ON pf.produto = prod.id_produto
JOIN
	produtos_armazens pa ON prod.id_produto = pa.produto
JOIN
	armazens arm ON arm.id_armazem = pa.armazem
WHERE
	arm.cidade_armazem = 'SÃO PAULO';
    
#7. Listar todos os armazéns, ordenados pelo nome do armazém de A a Z.
SELECT
	*
FROM
	armazens
ORDER BY
	nome_armazem;

#8. Mostrar os nomes dos produtos que têm a palavra "Premium" na descrição.
SELECT
	nome_pro
FROM
	produtos
WHERE
	descricao like '%premium%';

#9. Exibir os detalhes dos produtos: ID do produto, nome, descrição, preço e nome dos fornecedores.
SELECT
	prod.id_produto,
    prod.nome_pro,
    prod.descricao,
    prod.preco,
    forn.nome_for
FROM
	produtos prod
JOIN
	produtos_fornecedores pf ON  prod.id_produto = pf.produto
JOIN
	fornecedores forn ON pf.fornecedor = forn.id_fornecedor;

#10. Para cada pedido de compra, mostrar o ID do pedido e a quantidade total de produtos solicitados.
SELECT 
	id_pedido,
    sum(quantidade)
FROM
	pedidos_compra
GROUP BY
	id_pedido;

#11. Contar quantos produtos cada fornecedor oferece.
SELECT forn.nome_for as Fornecedor, count(pf.produto) as Qtde_produtos
FROM
	produtos_fornecedores pf
JOIN
	fornecedores forn ON pf.fornecedor = forn.id_fornecedor
GROUP BY
	forn.nome_for;
    
#12. Listar os nomes dos produtos e a quantidade disponível no armazém "Rio de Janeiro".

SELECT
	prod.nome_pro, pa.quantidade
FROM
	produtos prod
JOIN
	produtos_armazens pa ON prod.id_produto = pa.produto
JOIN
	armazens arm ON arm.id_armazem = pa.armazem
WHERE
	arm.cidade_armazem = 'RIO DE JANEIRO';

#13. Mostrar o nome dos fornecedores e a data e hora do último pedido de compra que eles receberam.
SELECT
	forn.nome_for,concat_ws(' ',max(pc.data_pedido),max(hora_pedido)) as data_hora
FROM
	fornecedores forn
JOIN
	pedidos_compra pc on pc.fornecedor = forn.id_fornecedor
GROUP BY
	forn.nome_for;
#14. Contar quantos pedidos de compra cada fornecedor recebeu.
SELECT
	forn.nome_for, count(pc.id_pedido)
FROM
	fornecedores forn
JOIN
	pedidos_compra pc on pc.fornecedor = forn.id_fornecedor
GROUP BY
	forn.nome_for;
    
#15. Para cada armazém, exibir o nome do armazém e a quantidade total de produtos armazenados nele.
SELECT
	arm.nome_armazem, sum(pa.quantidade) AS quantidade_total
FROM
	produtos_armazens pa
JOIN
	armazens arm ON arm.id_armazem = pa.armazem
GROUP BY
	arm.nome_armazem;
