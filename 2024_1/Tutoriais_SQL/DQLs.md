# Manual de DQL para MySQL

## Introdução
A Data Query Language (DQL) é uma sublinguagem do SQL (Structured Query Language) usada para consultar e obter dados de um banco de dados. No MySQL, o principal comando DQL é o `SELECT`. Este manual descreve quando e como usar cada componente do `SELECT`, incluindo consultas sobre consultas (subconsultas), e fornece exemplos práticos para facilitar a compreensão.

## Estrutura Básica do Comando SELECT

A sintaxe básica de um comando `SELECT` é:

```sql
SELECT coluna1, coluna2, ...
FROM tabela
WHERE condição
JOIN tabela
ON condição
GROUP BY coluna
HAVING condição
ORDER BY coluna
LIMIT número;
```

## Componentes do Comando SELECT

### 1. SELECT
#### Uso
- Para especificar as colunas que se deseja recuperar da tabela.

#### Critérios
- Usado sempre que se deseja recuperar dados do banco.
- Escolha apenas as colunas necessárias para reduzir a carga de processamento e largura de banda.

#### Exemplo
```sql
SELECT nome, idade
FROM pessoas;
```

### 2. FROM
#### Uso
- Especifica a tabela de onde os dados serão recuperados.

#### Critérios
- Obrigatório em todas as consultas `SELECT`.
- Certifique-se de que a tabela existe e tem os dados que você precisa.

#### Exemplo
```sql
SELECT nome, idade
FROM pessoas;
```

### 3. WHERE
#### Uso
- Filtra registros com base em condições específicas.

#### Critérios
- Use `WHERE` para restringir os resultados apenas aos dados que atendem a determinadas condições.
- Não use `WHERE` quando não houver necessidade de filtragem.
- Utilize índices nas colunas referenciadas no `WHERE` para melhorar a performance.

#### Exemplos
```sql
SELECT nome, idade
FROM pessoas
WHERE idade > 18;

SELECT nome, cidade
FROM pessoas
WHERE cidade = 'São Paulo';
```

### 4. ORDER BY
#### Uso
- Ordena os resultados de acordo com uma ou mais colunas.

#### Critérios
- Utilize `ORDER BY` quando for necessário que os resultados estejam em uma ordem específica.
- Evite usar `ORDER BY` em grandes conjuntos de dados sem um índice apropriado, pois pode afetar a performance.
- Pode usar `ASC` para ordem crescente e `DESC` para ordem decrescente.

#### Exemplo
```sql
SELECT nome, idade
FROM pessoas
ORDER BY idade DESC;
```

### 5. GROUP BY
#### Uso
- Agrupa linhas que possuem valores iguais em colunas especificadas em conjuntos de resumo.

#### Critérios
- Use `GROUP BY` quando precisar agrupar dados para aplicar funções de agregação como `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`.
- Não use `GROUP BY` sem uma função de agregação.
- Todas as colunas no `SELECT` que não são usadas em funções de agregação devem estar no `GROUP BY`.

#### Exemplo
```sql
SELECT cidade, COUNT(*)
FROM pessoas
GROUP BY cidade;
```

### 6. HAVING
#### Uso
- Filtra grupos de resultados criados pela cláusula `GROUP BY`.

#### Critérios
- Use `HAVING` para filtrar grupos após a aplicação das funções de agregação.
- Use `WHERE` para filtrar antes de agrupar os dados.
- `HAVING` é mais lento que `WHERE` porque filtra após a agregação.
- Não use `HAVING` sem `GROUP BY` em consultas comuns. Em situações raras, pode ser usado com funções de agregação diretamente sem `GROUP BY`.

#### Exemplos
```sql
SELECT cidade, COUNT(*)
FROM pessoas
GROUP BY cidade
HAVING COUNT(*) > 1;

SELECT SUM(salario) AS total_salario
FROM funcionarios
HAVING total_salario > 100000;
```

### 7. JOINs
#### Uso
- Combina registros de duas ou mais tabelas com base em uma condição relacionada.

#### Critérios
- Utilize `JOINs` para combinar dados de múltiplas tabelas com base em relações lógicas.
- Tipos de `JOINs`:
  - **INNER JOIN:** Retorna registros que têm correspondência em ambas as tabelas.
  - **LEFT JOIN:** Retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita.
  - **RIGHT JOIN:** Retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda.
  - **FULL JOIN:** Retorna registros quando há uma correspondência em uma das tabelas (não suportado diretamente no MySQL, mas pode ser simulado com `UNION`).
- Evite `JOINs` em grandes tabelas sem índices apropriados nas colunas de junção.

#### Exemplos
```sql
-- INNER JOIN
SELECT p.nome, e.nome_empresa
FROM pessoas p
INNER JOIN empresas e ON p.empresa_id = e.id;

-- LEFT JOIN
SELECT p.nome, e.nome_empresa
FROM pessoas p
LEFT JOIN empresas e ON p.empresa_id = e.id;

-- RIGHT JOIN
SELECT p.nome, e.nome_empresa
FROM pessoas p
RIGHT JOIN empresas e ON p.empresa_id = e.id;

-- FULL JOIN (não suportado diretamente no MySQL, mas pode ser simulado com UNION)
SELECT p.nome, e.nome_empresa
FROM pessoas p
LEFT JOIN empresas e ON p.empresa_id = e.id
UNION
SELECT p.nome, e.nome_empresa
FROM pessoas p
RIGHT JOIN empresas e ON p.empresa_id = e.id;
```

### 8. LIMIT
#### Uso
- Restringe o número de registros retornados.

#### Critérios
- Use `LIMIT` para obter uma amostra dos resultados ou para paginação.
- Não use `LIMIT` sem necessidade, pois pode ocultar registros que precisam ser analisados.

#### Exemplo
```sql
SELECT nome, idade
FROM pessoas
LIMIT 5;
```

### 9. Subconsultas
Subconsultas, ou consultas aninhadas, são consultas SQL dentro de outras consultas SQL. Elas são usadas para realizar operações que requerem o uso de resultados de outras consultas.

#### Tipos de Subconsultas
1. **Subconsulta Escalar:** Retorna um único valor e é usada em contextos onde se espera um valor único, como em uma cláusula `WHERE`.
2. **Subconsulta de Linha Única:** Retorna uma única linha com uma ou mais colunas e é usada em contextos que esperam um único conjunto de valores.
3. **Subconsulta de Múltiplas Linhas:** Retorna várias linhas e é usada em contextos que podem lidar com conjuntos de resultados múltiplos, como em uma cláusula `IN`.

#### Critérios
- Use subconsultas para resolver consultas complexas em etapas.
- Evite subconsultas desnecessárias, pois podem ser menos eficientes que joins.
- Utilize subconsultas quando precisar de um valor específico ou um conjunto de valores que dependem de outras consultas.

#### Exemplos de Subconsultas

**Subconsulta Escalar:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade = (SELECT MAX(idade) FROM pessoas);
```

**Subconsulta de Linha Única:**
```sql
SELECT nome, idade
FROM pessoas
WHERE (cidade, idade) = (SELECT cidade, MAX(idade) FROM pessoas GROUP BY cidade LIMIT 1);
```

**Subconsulta de Múltiplas Linhas:**
```sql
SELECT nome, idade
FROM pessoas
WHERE cidade IN (SELECT cidade FROM cidades WHERE populacao > 100000);
```

**Subconsulta no FROM:**
```sql
SELECT sub.cidade, COUNT(*)
FROM (SELECT cidade FROM pessoas WHERE idade > 18) AS sub
GROUP BY sub.cidade;
```

**Subconsulta com EXISTS:**
```sql
SELECT nome
FROM pessoas p
WHERE EXISTS (SELECT 1 FROM empregados e WHERE e.pessoa_id = p.id);
```

## Exemplos Práticos

### Consulta Simples
```sql
SELECT nome, idade
FROM pessoas;
```

### Consulta com Filtro
```sql
SELECT nome, idade
FROM pessoas
WHERE idade > 18;
```

### Consulta com Ordenação
```sql
SELECT nome, idade
FROM pessoas
ORDER BY idade DESC;
```

### Consulta com Agrupamento
```sql
SELECT cidade, COUNT(*)
FROM pessoas
GROUP BY cidade;
```

### Consulta com Join
```sql
SELECT p.nome, e.nome_empresa
FROM pessoas p
INNER JOIN empresas e ON p.empresa_id = e.id;
```

### Consulta com Limite
```sql
SELECT nome, idade
FROM pessoas
LIMIT 5;
```

### Consulta com Subconsulta
```sql
SELECT nome, idade
FROM pessoas
WHERE idade = (SELECT MAX(idade) FROM pessoas);
```

## Considerações Finais

- **Performance:** Utilize índices nas colunas frequentemente usadas em cláusulas `WHERE`, `ORDER BY`, e `JOIN` para melhorar a performance das consultas.
- **Legibilidade:** Escreva consultas claras e bem formatadas para facilitar a manutenção e compreensão do código.
- **Segurança:** Evite SQL Injection utilizando parâmetros preparados (prepared statements) ao construir consultas dinâmicas.
