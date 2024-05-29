-- Atualizar o preço do produto com ID 1 e a descrição do fornecedor com ID 2
UPDATE PRODUTOS
SET PRECO = 29.90
WHERE ID_PRODUTO = 1;

UPDATE FORNECEDORES
SET DESCRICAO = 'Fornecedor de moda contemporânea'
WHERE ID_FORNECEDOR = 2;

-- Atualizar a cidade do armazém com ID 3 e o logradouro do produto com ID 4
UPDATE ARMAZENS
SET CIDADE_ARMAZEM = 'Porto Velho'
WHERE ID_ARMAZEM = 3;

UPDATE PRODUTOS
SET LOG_ARMAZEM = 'Avenida da Tecnologia, 200'
WHERE ID_PRODUTO = 4;

-- Atualizar o preço do produto com ID 5 e a quantidade do produto no armazém com ID 6
UPDATE PRODUTOS
SET PRECO = 49.90
WHERE ID_PRODUTO = 5;

UPDATE PRODUTOS_ARMAZENS
SET QUANTIDADE = 150
WHERE PRODUTO = 6;

-- Atualizar a descrição do fornecedor com ID 7 e a quantidade do produto no armazém com ID 8
UPDATE FORNECEDORES
SET DESCRICAO = 'Distribuidora de produtos para animais de estimação'
WHERE ID_FORNECEDOR = 7;

UPDATE PRODUTOS_ARMAZENS
SET QUANTIDADE = 180
WHERE PRODUTO = 8;

-- Atualizar o nome do produto com ID 9 e o CNPJ do fornecedor com ID 10
UPDATE PRODUTOS
SET NOME = 'Cadeira Ergonômica'
WHERE ID_PRODUTO = 9;

UPDATE FORNECEDORES
SET CNPJ = '109876543210'
WHERE ID_FORNECEDOR = 10;
