# Comando DQL - MySQL - Resumão

## 1. Introdução ao `SELECT` e `FROM`

**Descrição**:  
A consulta básica no SQL começa com o comando `SELECT`, que indica quais colunas queremos visualizar no resultado, e `FROM`, que especifica a tabela de onde esses dados serão extraídos.

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela;
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes;
```

**Aprendendo na Prática**:  
Esta consulta retorna os nomes e idades de todos os registros na tabela `clientes`, permitindo visualizar as informações sem filtros adicionais.

---
**DISTINCT**:  
O modificador DISTINCT remove valores duplicados de uma coluna ou conjunto de colunas na saída da consulta, garantindo que os resultados sejam únicos.

Sintaxe:

```sql
SELECT DISTINCT coluna1 FROM tabela;
```
Exemplo:

```sql
SELECT DISTINCT cidade FROM clientes;
```

Aprendendo na Prática:
Essa consulta retorna todas as cidades onde existem clientes registrados, mas sem repetições.

Exemplo Avançado:

```sql
SELECT DISTINCT cidade, estado FROM clientes;
```
Retorna combinações únicas de cidades e seus respectivos estados (que podem ser repetidos) na tabela clientes.
  
---

## 2. Funções

## **Funções de Agregação**:  
As funções de agregação permitem calcular valores combinados a partir de múltiplas linhas, como somar valores ou contar registros. São úteis para entender a totalidade dos dados em uma tabela ou grupo.

### Principais Funções de Agregação

1. **COUNT**: Conta o número total de registros, útil para saber quantos itens correspondem a um filtro.
   ```sql
   SELECT COUNT(*) FROM clientes;
   ```

2. **SUM**: Realiza a soma dos valores de uma coluna específica.
   ```sql
   SELECT SUM(salario) FROM funcionarios;
   ```

3. **AVG**: Calcula a média de valores, bom para descobrir o valor médio em uma coluna numérica.
   ```sql
   SELECT AVG(idade) FROM clientes;
   ```

4. **MAX** e **MIN**: Retornam o maior e o menor valor, respectivamente.
   ```sql
   SELECT MAX(salario) FROM funcionarios;
   SELECT MIN(salario) FROM funcionarios;
   ```

**Aprendendo na Prática com `COUNT`**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;
```
Essa consulta mostra a quantidade de clientes por cidade, agrupando e contando todos que compartilham a mesma cidade.
    
---
## **Manipulação de Strings com Funções SQL**:
Funções de manipulação de strings permitem ajustar, formatar e consultar dados textuais.

### Principais Funções
ALIAS: Cria um apelido para uma função ou coluna, usando o prefixo AS.
```sql
SELECT sum(salario) AS Salario FROM funcionários;
```
Também pode ser usado sem o prefixo AS e/ou usar texto como apelido, usando aspas.
```sql
SELECT sum(salario) 'Soma dos salários' FROM funcionários;
```

UPPER e LOWER: Transformam o texto para maiúsculas ou minúsculas.
```sql
SELECT UPPER(nome) FROM clientes;
SELECT LOWER(nome) FROM clientes;
```

CONCAT: Junta duas ou mais strings em uma única.
```sql
SELECT CONCAT(nome, ' ', sobrenome) AS nome_completo FROM clientes;
```

SUBSTRING: Extrai parte de uma string.
```sql
SELECT SUBSTRING(nome, 1, 3) AS iniciais FROM clientes;
```

LENGTH: Retorna o tamanho de uma string.
```sql
SELECT LENGTH(nome) FROM clientes;
```

TRIM: Remove espaços em branco no início e no fim de uma string.
```sql
SELECT TRIM(nome) FROM clientes;
```

Aprendendo na Prática com CONCAT:
```sql
SELECT CONCAT(nome, ' mora em ', cidade) AS mensagem FROM clientes;
```
Cria uma mensagem personalizada para cada cliente, unindo texto fixo e valores da tabela.

  
---
## **Funções de Data e Hora**:
Permitem realizar operações com valores de data e hora, essenciais para registros temporais e relatórios.

### Principais Funções
NOW: Retorna a data e hora atuais.
```sql
SELECT NOW();
```

CURDATE e CURTIME: Retornam a data e hora atuais separadamente.
```sql
SELECT CURDATE(), CURTIME();
```

DATE_ADD e DATE_SUB: Adicionam ou subtraem intervalos de tempo.
```sql
SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);
SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH);
```

DATEDIFF: Calcula a diferença entre duas datas.
```sql
SELECT DATEDIFF('2024-12-31', '2024-01-01');
```
YEAR, MONTH, DAY: Extraem partes de uma data.
```sql
SELECT YEAR(data_nascimento), MONTH(data_nascimento) FROM clientes;
```
Aprendendo na Prática com DATEDIFF:
```sql
SELECT nome, DATEDIFF(CURDATE(), data_nascimento) AS dias_de_vida FROM clientes;
```
Calcula a idade de cada cliente em dias.
  
---

## 3. Filtrando Resultados com `WHERE`

**Descrição**:  
A cláusula `WHERE` é essencial para filtrar dados com base em uma condição específica. Sem o `WHERE`, o SQL retornará todos os registros da tabela indicada no `FROM`. Com ele, os resultados são refinados, exibindo apenas aqueles que atendem à condição estipulada.

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela WHERE condição;
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes WHERE idade > 30;
```

**Aprendendo na Prática**:  
Essa consulta retorna somente os clientes com idade acima de 30 anos, filtrando aqueles que atendem a essa condição e facilitando análises segmentadas dos dados.

---

## 4. Funções Lógicas

Com funções lógicas como `AND`, `OR` e `NOT`, é possível criar condições compostas em `WHERE`, flexibilizando os filtros.

1. **AND**: Todas as condições devem ser verdadeiras.
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo' AND idade > 30;
   ```

2. **OR**: Ao menos uma das condições deve ser verdadeira.
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo' OR cidade = 'Rio de Janeiro';
   ```

3. **NOT**: Inverte a condição, exibindo registros que não atendem ao critério.
   ```sql
   SELECT * FROM clientes WHERE NOT cidade = 'São Paulo';
   ```

**Aprendendo na Prática com `AND`**:
```sql
SELECT nome, idade FROM clientes WHERE cidade = 'São Paulo' AND idade > 30;
```
Filtra os clientes de São Paulo que têm mais de 30 anos, ideal para combinações de condições.

---

## 5. Funções para Uso com `WHERE`

As funções aplicáveis em `WHERE` possibilitam filtros mais complexos, como buscas por padrões de texto e intervalos numéricos.

1. **LIKE**: Usa padrões para comparar strings. `%` representa qualquer sequência de caracteres, `LIKE 'J%'` encontra palavras que começam com "J".
   ```sql
   SELECT nome FROM clientes WHERE nome LIKE 'J%';
   ```

2. **BETWEEN**: Define um intervalo, muito útil em buscas numéricas ou de data.
   ```sql
   SELECT nome FROM clientes WHERE idade BETWEEN 20 AND 30;
   ```

3. **IN**: Verifica se o valor está em uma lista específica, evitando a repetição de condições com `OR`.
   ```sql
   SELECT nome FROM clientes WHERE cidade IN ('São Paulo', 'Rio de Janeiro');
   ```

**Aprendendo na Prática com `LIKE`**:
```sql
SELECT nome FROM clientes WHERE nome LIKE 'A%';
```
Retorna todos os clientes cujo nome começa com "A", permitindo buscas por grupos de clientes com base nas primeiras letras do nome.

---

## 6. Agrupando com `GROUP BY`

**Descrição**:  
`GROUP BY` é usado junto com funções de agregação para dividir os dados em grupos, como clientes por cidade ou total de vendas por mês.

**Sintaxe**:
```sql
SELECT coluna1, função_agregação(coluna2) FROM tabela GROUP BY coluna1;
```

**Exemplo**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;
```

**Aprendendo na Prática**:  
Conta o número de clientes em cada cidade, ajudando a identificar concentrações geográficas dos clientes.

---

## 7. Filtrando Grupos com `HAVING`

**Descrição**:  
Filtra grupos formados por `GROUP BY` após a agregação, essencial para aplicar condições em conjuntos agregados.

**Sintaxe**:
```sql
SELECT coluna1, função_agregação(coluna2) FROM tabela GROUP BY coluna1 HAVING condição;
```

**Exemplo**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade HAVING COUNT(*) > 5;
```

**Aprendendo na Prática**:  
Exibe apenas cidades com mais de cinco clientes, ideal para análises por volume.

---

## 8. Ordenando com `ORDER BY`

**Descrição**:  
Ordena o resultado da consulta em ordem ascendente (`ASC`, padrão) ou descendente (`DESC`), útil para ordenar dados por relevância, data, ou valor.

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela ORDER BY coluna1 [ASC|DESC];
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes ORDER BY idade DESC;
```

**Aprendendo na Prática**:  
Lista clientes em ordem decrescente de idade, ajudando a identificar o cliente mais velho e o mais novo.

---

## 9. Limitando Resultados com `LIMIT`

**Descrição**:  
Define quantas linhas serão exibidas, geralmente usado para paginar resultados ou limitar visualizações iniciais.

**Sintaxe**:
```sql
SELECT coluna1 FROM tabela LIMIT número;
```

**Exemplo**:
```sql
SELECT nome FROM clientes LIMIT 10;
```

**Aprendendo na Prática**:  
Retorna apenas os 10 primeiros clientes, útil para visualizar uma amostra de dados.

---

### 10. Realizando `JOIN`s em MySQL

O `JOIN` combina registros de tabelas distintas com base em uma coluna em comum.

#### a. `INNER JOIN` ou apenas `JOIN`

**Descrição**:  
Retorna registros que têm correspondência em ambas as tabelas.

**Exemplo**:
```sql
SELECT clientes.nome, pedidos.data
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
```
OU

```sql
SELECT clientes.nome, pedidos.data
FROM clientes
JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
```

**Aprendendo na Prática**:  
Exibe os nomes dos clientes e as datas dos pedidos, mas apenas para clientes que têm pedidos registrados.

#### b. `LEFT JOIN`

**Descrição**:  
Retorna todos os registros da tabela à esquerda, mesmo sem correspondência na tabela à direita.

**Exemplo**:
```sql
SELECT clientes.nome, pedidos.data
FROM clientes
LEFT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
```

**Aprendendo na Prática**:  
Exibe todos os clientes e suas datas de pedidos. Clientes sem pedidos terão `NULL` em `data`.

#### c. `RIGHT JOIN`

**Descrição**:  
Retorna todos os registros da tabela à direita, mesmo sem correspondência na tabela à esquerda.

**Exemplo**:
```sql
SELECT clientes.nome, pedidos.data
FROM clientes
RIGHT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
```

**Aprendendo na Prática**:  
Exibe todos os pedidos e os nomes dos clientes associados. Pedidos sem clientes associados terão `NULL` em `nome`.

#### d. Simulando `FULL JOIN` com `UNION`

**Descrição**:  
Combina `LEFT JOIN` e `RIGHT JOIN` para simular um `FULL JOIN`.

**Exemplo**:
```sql
SELECT clientes.nome, pedidos.data
FROM clientes
LEFT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
UNION
SELECT clientes.nome, pedidos.data
FROM clientes
RIGHT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
```

**Aprendendo na Prática**:  
Exibe todos os clientes e pedidos, incluindo aqueles sem correspondência em uma das tabelas.

---

## 11. Subconsultas (Subqueries)

**Descrição**:  
Subconsultas, ou consultas aninhadas, são usadas para resolver problemas complexos em partes. Elas permitem usar os resultados de uma consulta como entrada para outra.

### Tipos de Subconsultas

1. **Subconsulta Simples**:  
   Retorna um único valor que pode ser usado como uma constante em outra consulta.
   ```sql
   SELECT nome FROM clientes WHERE idade = (SELECT MAX(idade) FROM clientes);
   ```
   **Aprendendo na Prática**:  
   Essa consulta retorna o nome do cliente mais velho.

2. **Subconsulta com Múltiplos Valores**:  
   Retorna vários valores que podem ser usados com operadores como `IN`.
   ```sql
   SELECT nome FROM clientes WHERE cidade IN (SELECT cidade FROM fornecedores);
   ```
   **Aprendendo na Prática**:  
   Retorna os nomes de clientes que estão nas mesmas cidades dos fornecedores.

3. **Subconsulta Correlacionada**:  
   Refere-se a colunas da consulta externa e é avaliada para cada linha processada.
   ```sql
   SELECT nome FROM clientes WHERE idade > (SELECT AVG(idade) FROM clientes);
   ```
   **Aprendendo na Prática**:  
   Retorna o nome de clientes cuja idade é maior que a idade média de todos os clientes.

## 12. Operações de União com `UNION` e `UNION ALL`

**Descrição**:  
Combina os resultados de duas ou mais consultas em uma única saída.

- **`UNION`**: Remove duplicatas nos resultados combinados.
- **`UNION ALL`**: Mantém duplicatas.

**Sintaxe**:
```sql
SELECT coluna1 FROM tabela1
UNION
SELECT coluna1 FROM tabela2;
```

**Exemplo**:
```sql
SELECT nome FROM clientes
UNION
SELECT nome FROM fornecedores;
```

**Aprendendo na Prática**:  
Retorna uma lista de nomes únicos combinando clientes e fornecedores.

**Com `UNION ALL`**:
```sql
SELECT nome FROM clientes
UNION ALL
SELECT nome FROM fornecedores;
```
Inclui duplicatas, caso existam nomes iguais em ambas as tabelas.
