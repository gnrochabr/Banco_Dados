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

## 2. Funções de Agregação

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

## 7. Ordenando com `ORDER BY`

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

## 8. Filtrando Grupos com `HAVING`

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

#### a. `INNER JOIN`

**Descrição**:  
Retorna registros que têm correspondência em ambas as tabelas.

**Exemplo**:
```sql
SELECT clientes.nome, pedidos.data
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;
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

Para enriquecer ainda mais sua apostila e oferecer uma formação sólida sobre consultas de SQL (Data Query Language), aqui vão tópicos adicionais que podem ajudar seus alunos a alcançar uma base completa em DQL, com uma seção de funções avançadas, operações de subconsultas e dicas de otimização.

---

### 11. Subconsultas (Subqueries)

Subconsultas são consultas aninhadas dentro de outra consulta SQL. Elas são úteis para realizar operações complexas, como filtrar dados com base em resultados de outras tabelas ou em agregações.

**Sintaxe**:
```sql
SELECT coluna1 FROM tabela1 WHERE coluna2 = (SELECT coluna3 FROM tabela2 WHERE condição);
```

**Exemplo**:
```sql
SELECT nome FROM clientes WHERE cliente_id IN (SELECT cliente_id FROM pedidos WHERE data > '2024-01-01');
```

**Aprendendo na Prática**:  
Esta consulta retorna os nomes dos clientes que fizeram pedidos após 1º de janeiro de 2024.

#### Tipos de Subconsultas

1. **Subconsulta em `WHERE`**:
   ```sql
   SELECT * FROM produtos WHERE preco > (SELECT AVG(preco) FROM produtos);
   ```
   Exibe produtos cujo preço é superior ao preço médio.

2. **Subconsulta em `FROM` (Tabela Derivada)**:
   ```sql
   SELECT categoria, AVG(preco)
   FROM (SELECT * FROM produtos WHERE estoque > 0) AS produtos_em_estoque
   GROUP BY categoria;
   ```
   Agrupa produtos com estoque maior que zero por categoria e calcula o preço médio.

---

### 12. Funções de Data e Hora

Para operações envolvendo datas, o SQL oferece várias funções úteis para manipular e calcular valores de data e hora.

1. **`NOW()`**: Retorna a data e hora atual.
   ```sql
   SELECT NOW();
   ```

2. **`DATE()`**: Extrai a parte da data de um valor de data e hora.
   ```sql
   SELECT DATE(data) FROM pedidos;
   ```

3. **`DATEDIFF()`**: Calcula a diferença em dias entre duas datas.
   ```sql
   SELECT nome, DATEDIFF(NOW(), data_nascimento) AS idade_em_dias FROM clientes;
   ```

4. **`YEAR()`, `MONTH()`, `DAY()`**: Extrai o ano, mês ou dia de uma data.
   ```sql
   SELECT nome, YEAR(data_nascimento) AS ano_nascimento FROM clientes;
   ```

**Aprendendo na Prática**:
```sql
SELECT nome, DATE(data) AS data_pedido
FROM pedidos
WHERE DATEDIFF(NOW(), data) < 30;
```
Esta consulta retorna o nome e a data de pedidos realizados nos últimos 30 dias.

---

### 13. Manipulação de Strings

Funções de strings ajudam a formatar e processar texto dentro de consultas SQL.

1. **`CONCAT()`**: Concatena (une) duas ou mais strings.
   ```sql
   SELECT CONCAT(nome, ' - ', cidade) FROM clientes;
   ```

2. **`UPPER()` e `LOWER()`**: Converte strings para letras maiúsculas ou minúsculas.
   ```sql
   SELECT UPPER(nome) FROM clientes;
   ```

3. **`SUBSTRING()`**: Extrai parte de uma string.
   ```sql
   SELECT SUBSTRING(nome, 1, 3) FROM clientes;
   ```

4. **`REPLACE()`**: Substitui uma parte de uma string por outra.
   ```sql
   SELECT REPLACE(nome, 'o', 'a') FROM clientes;
   ```

**Aprendendo na Prática**:
```sql
SELECT CONCAT(UPPER(nome), ' - ', cidade) AS cliente_info FROM clientes;
```
Concatena o nome em maiúsculas e a cidade, exibindo-os como uma única string.

---

### 14. Operações de União de Resultados com `UNION` e `UNION ALL`

**Descrição**:  
O `UNION` combina os resultados de duas ou mais consultas. O `UNION ALL` permite a duplicação de linhas, enquanto o `UNION` elimina duplicatas.

**Sintaxe**:
```sql
SELECT coluna1 FROM tabela1
UNION
SELECT coluna1 FROM tabela2;
```

**Exemplo**:
```sql
SELECT nome FROM clientes WHERE cidade = 'São Paulo'
UNION
SELECT nome FROM clientes WHERE idade > 30;
```

**Aprendendo na Prática**:  
Esta consulta retorna os nomes dos clientes que estão em São Paulo ou têm mais de 30 anos, sem duplicação.

---

### 15. Boas Práticas em Consultas SQL

Para consultas SQL de alto desempenho e manutenção fácil, alguns princípios são essenciais:

1. **Use `JOIN` ao invés de subconsultas quando possível**: `JOIN`s geralmente são mais rápidos em bancos relacionais.
2. **Prefira `WHERE` em vez de `HAVING`** para filtros de linhas, exceto ao usar funções de agregação.
3. **Selecione apenas as colunas necessárias** ao invés de `SELECT *` para reduzir o uso de memória.
4. **Evite `NULL` em colunas de `JOIN`**: Utilize valores padrão para evitar problemas de desempenho em comparações.
5. **Documente suas consultas** com comentários (`--`) para manter a compreensão futura.
