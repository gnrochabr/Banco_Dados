USE revisao;

-- 1. Selecione todos os jogos disponíveis no banco de dados
SELECT * FROM jogos;

-- 2. Liste os nomes e telefones de todos os clientes cadastrados
SELECT nome, telefone 
FROM clientes;

-- 3. Encontre todos os jogos lançados após o ano de 2020
SELECT titulo, ano_lancamento 
FROM jogos 
WHERE ano_lancamento > 2020
ORDER BY ano_lancamento; -- opcional

-- 4. Liste todos os clientes que moram na cidade de 'Vila Velha'
SELECT nome 
FROM clientes -- AS c
JOIN enderecos ON clientes.endereco_id = enderecos.endereco_id
-- JOIN enderecos AS e ON c.endereco_id = e.endereco_id 
WHERE cidade = 'Vila Velha';

-- 5. Obtenha todas as locações feitas no último mês (considerando a data atual)
SELECT * 
FROM locacoes 
WHERE MONTH(data_locacao) = MONTH(CURDATE())-1 ;

-- 6. Liste os jogos disponíveis em ordem crescente de preço da diária
SELECT titulo, CONCAT('R$ ',preco_diaria) AS 'Diária'
FROM jogos 
ORDER BY preco_diaria ASC;

-- 7. Mostre os 5 clientes mais recentes cadastrados, ordenados pela data de nascimento
SELECT cliente_id, nome, data_nascimento FROM(
	SELECT cliente_id, nome, data_nascimento 
	FROM clientes
    ORDER BY cliente_id DESC
	LIMIT 5) AS ultimos_cadastros
ORDER BY data_nascimento DESC;

-- 8. Calcule a quantidade de locações feitas por cada cliente
SELECT c.nome, COUNT(l.cliente_id) AS total_locacoes 
FROM locacoes l 
RIGHT JOIN clientes c ON c.cliente_id = l.cliente_id
-- RIGHT JOIN: Clientes vem depois de locações
-- Toda vez que for uma tabela que eu quero selecionar valores nulos também
-- precisamos observar a posição dela no código
-- se tiver antes da tabela que tem NULL é LEFT JOIN, se tiver depois é RIGHT JOIN
GROUP BY c.nome
ORDER BY c.nome; -- opcional (Ordenado por nome do cliente, poderia ser pela quantidade)

-- 9. Encontre os jogos mais alugados (com pelo menos 5 locações)
SELECT j.titulo, COUNT(l.jogo_id) AS 'nº de locações' 
FROM locacoes l
JOIN jogos j ON j.jogo_id = l.jogo_id
GROUP BY j.titulo 
HAVING COUNT(*) >= 5 -- USAMOS HAVING PARA FILTRAR USANDO FUNÇÕES DE AGREGAÇÃO
ORDER BY COUNT(l.jogo_id) DESC;

-- 10. Liste os métodos de pagamento e a soma total de valores pagos para cada método
SELECT metodo_pagamento, CONCAT('R$ ',SUM(valor_pago)) AS 'Valor recebido'
FROM pagamentos 
GROUP BY metodo_pagamento;

-- 11. Recupere os detalhes das locações, incluindo o nome do cliente e o título do jogo
SELECT c.nome, j.titulo, l.data_locacao, l.data_devolucao as 'devolução', l.status_loc as 'status'
FROM locacoes l
JOIN clientes AS C ON l.cliente_id = c.cliente_id 
JOIN jogos AS j ON l.jogo_id = j.jogo_id
ORDER BY l.locacao_id;

-- 12. Liste os endereços de todos os clientes, com seus respectivos nomes
SELECT c.nome, e.rua, e.numero, e.bairro, e.cidade, e.estado 
FROM clientes AS c
JOIN enderecos AS e ON c.endereco_id = e.endereco_id;

-- 13. Mostre todas as locações em que o status é 'Atrasada', incluindo os dados do cliente e o jogo alugado
SELECT c.nome, j.titulo, l.data_locacao, l.data_devolucao as 'devolução', l.status_loc as 'status'
FROM locacoes l
JOIN clientes AS C ON l.cliente_id = c.cliente_id 
JOIN jogos AS j ON l.jogo_id = j.jogo_id
WHERE l.status_loc = 'Atrasada';

-- 14. Calcule o valor médio das diárias dos jogos
SELECT CONCAT('R$ ',ROUND(AVG(preco_diaria),2)) AS preco_medio 
FROM jogos;

-- 15. Determine o valor total arrecadado em pagamentos
SELECT CONCAT('R$ ',ROUND(SUM(valor_pago),2)) AS total_arrecadado 
FROM pagamentos;

-- 16. Encontre o jogo mais caro no banco de dados
SELECT titulo, CONCAT('R$ ',MAX(preco_diaria)) AS preco_maximo 
FROM jogos 
GROUP BY titulo;

-- 17. Liste os 3 jogos mais baratos disponíveis para locação
SELECT titulo, CONCAT('R$ ',preco_diaria) AS 'Preço'
FROM jogos 
ORDER BY preco_diaria ASC 
LIMIT 3;

-- 18. Mostre as 10 locações mais recentes, incluindo a data de locação e o status
SELECT locacao_id, data_locacao, status_loc 
FROM locacoes 
ORDER BY data_locacao DESC 
LIMIT 10;

-- 19. Identifique os clientes que fizeram mais de 3 locações
SELECT c.nome, COUNT(l.locacao_id) AS 'Total de locações'
FROM locacoes AS l
JOIN clientes AS c ON l.cliente_id = c.cliente_id 
GROUP BY c.cliente_id 
HAVING COUNT(l.locacao_id) > 3 -- USANDO FUNÇÃO COUNT, SÓ O HAVING PODE ME AJUDAR
ORDER BY COUNT(l.locacao_id) DESC;

-- 20. Liste os jogos com preço médio diário acima de R$5 e que possuem mais de 2 locações
SELECT j.titulo, j.preco_diaria, COUNT(l.locacao_id) AS total_locacoes 
FROM jogos j
JOIN locacoes l ON j.jogo_id = l.jogo_id
WHERE j.preco_diaria > 5 -- WHERE PARA COMPARAÇÕES DE DADOS CONHECIDOS 
GROUP BY j.jogo_id 
HAVING COUNT(l.locacao_id) > 2; -- HAVING PARA DADOS PARAMETRIZADOS POR FUNÇÕES DE AGRUPAMENTO
