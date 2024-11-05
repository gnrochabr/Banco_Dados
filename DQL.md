#Comando DQL - MYSQL - Resumão

### 1. Introdução ao `SELECT` e `FROM`

**Descrição**:  
O `SELECT` define as colunas a serem exibidas, e o `FROM` indica a tabela de onde esses dados serão extraídos.

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela;
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes;
```

**Aprendendo na Prática**:  
Esta consulta retorna os nomes e idades de todos os registros na tabela `clientes`.

---

### 2. Filtrando Resultados com `WHERE`

**Descrição**:  
A cláusula `WHERE` filtra registros com base em condições específicas.

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela WHERE condição;
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes WHERE idade > 30;
```

**Aprendendo na Prática**:  
Essa consulta exibe apenas os nomes e idades dos clientes que têm mais de 30 anos.

---

### 3. Funções de Agregação

As funções de agregação são usadas para realizar cálculos em grupos de valores e retornam um único valor. Elas são especialmente úteis quando combinadas com `GROUP BY`.

#### Principais Funções de Agregação:

1. **COUNT**: Conta o número de registros.
   ```sql
   SELECT COUNT(*) FROM clientes;
   ```

2. **SUM**: Soma os valores de uma coluna.
   ```sql
   SELECT SUM(salario) FROM funcionarios;
   ```

3. **AVG**: Calcula a média dos valores de uma coluna.
   ```sql
   SELECT AVG(idade) FROM clientes;
   ```

4. **MAX**: Retorna o maior valor de uma coluna.
   ```sql
   SELECT MAX(salario) FROM funcionarios;
   ```

5. **MIN**: Retorna o menor valor de uma coluna.
   ```sql
   SELECT MIN(salario) FROM funcionarios;
   ```

**Aprendendo na Prática com `COUNT`**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;
```
Essa consulta mostra a quantidade de clientes em cada cidade.

---

### 4. Funções para Uso com `WHERE`

Funções que podem ser usadas na cláusula `WHERE` ajudam a criar filtros mais complexos.

1. **LIKE**: Para padrões em textos.
   ```sql
   SELECT nome FROM clientes WHERE nome LIKE 'J%';
   ```

2. **BETWEEN**: Para valores entre um intervalo.
   ```sql
   SELECT nome FROM clientes WHERE idade BETWEEN 20 AND 30;
   ```

3. **IN**: Verifica se um valor está em uma lista.
   ```sql
   SELECT nome FROM clientes WHERE cidade IN ('São Paulo', 'Rio de Janeiro');
   ```

**Aprendendo na Prática com `LIKE`**:
```sql
SELECT nome FROM clientes WHERE nome LIKE 'A%';
```
Retorna todos os clientes cujo nome começa com a letra "A".

---

### 5. Funções Lógicas

Funções lógicas são usadas para construir condições complexas em `WHERE`.

1. **AND**: Todas as condições devem ser verdadeiras.
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo' AND idade > 30;
   ```

2. **OR**: Ao menos uma das condições deve ser verdadeira.
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo' OR cidade = 'Rio de Janeiro';
   ```

3. **NOT**: Inverte o resultado de uma condição.
   ```sql
   SELECT * FROM clientes WHERE NOT cidade = 'São Paulo';
   ```

**Aprendendo na Prática com `AND`**:
```sql
SELECT nome, idade FROM clientes WHERE cidade = 'São Paulo' AND idade > 30;
```
Lista os clientes de São Paulo com idade acima de 30.

---

### 6. Agrupando com `GROUP BY`

**Descrição**:  
Agrupa registros para realizar operações de agregação em grupos.

**Sintaxe**:
```sql
SELECT coluna1, função_agregação(coluna2)
FROM tabela
GROUP BY coluna1;
```

**Exemplo**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;
```

**Aprendendo na Prática**:  
Conta quantos clientes existem em cada cidade.

---

### 7. Ordenando com `ORDER BY`

**Descrição**:  
Ordena os resultados em ordem crescente (`ASC`) ou decrescente (`DESC`).

**Sintaxe**:
```sql
SELECT coluna1, coluna2 FROM tabela ORDER BY coluna1 [ASC|DESC];
```

**Exemplo**:
```sql
SELECT nome, idade FROM clientes ORDER BY idade DESC;
```

**Aprendendo na Prática**:  
Lista os clientes em ordem decrescente de idade.

---

### 8. Filtrando Grupos com `HAVING`

**Descrição**:  
Usado junto com `GROUP BY` para aplicar condições nos grupos formados.

**Sintaxe**:
```sql
SELECT coluna1, função_agregação(coluna2)
FROM tabela
GROUP BY coluna1
HAVING condição;
```

**Exemplo**:
```sql
SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade HAVING COUNT(*) > 5;
```

**Aprendendo na Prática**:  
Exibe apenas cidades com mais de cinco clientes.

---

### 9. Limitando os Resultados com `LIMIT`

**Descrição**:  
Restringe o número de registros retornados.

**Sintaxe**:
```sql
SELECT coluna1 FROM tabela LIMIT número;
```

**Exemplo**:
```sql
SELECT nome FROM clientes LIMIT 10;
```

**Aprendendo na Prática**:  
Retorna os 10 primeiros clientes da tabela.

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
