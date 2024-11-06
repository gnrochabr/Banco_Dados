# Manual de DML para MySQL

## Introdução
A Data Manipulation Language (DML) é uma sublinguagem do SQL usada para manipular dados em um banco de dados. Este manual foca nos comandos DML que não incluem o `SELECT`, especificamente `INSERT`, `UPDATE`, `DELETE` e `REPLACE`. Estes comandos são utilizados para inserir, atualizar, deletar e substituir dados nas tabelas.

## Comandos DML

### 1. INSERT
#### Uso
- Para inserir novos registros em uma tabela.

#### Critérios
- Use `INSERT` para adicionar novos dados em uma tabela.
- Certifique-se de que os valores inseridos correspondem aos tipos de dados das colunas.

#### Sintaxe
```sql
INSERT INTO tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

#### Exemplos

**Inserir um único registro:**
```sql
INSERT INTO pessoas (nome, idade, cidade)
VALUES ('João Silva', 30, 'São Paulo');
```

**Inserir múltiplos registros:**
```sql
INSERT INTO pessoas (nome, idade, cidade)
VALUES ('Maria Oliveira', 25, 'Rio de Janeiro'),
       ('Carlos Souza', 40, 'Belo Horizonte');
```

### 2. UPDATE
#### Uso
- Para atualizar registros existentes em uma tabela.

#### Critérios
- Use `UPDATE` para modificar dados existentes em uma tabela.
- Utilize a cláusula `WHERE` para especificar quais registros devem ser atualizados.
- Sem a cláusula `WHERE`, todos os registros na tabela serão atualizados.

#### Sintaxe
```sql
UPDATE tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

#### Exemplos

**Atualizar um único registro:**
```sql
UPDATE pessoas
SET idade = 31
WHERE nome = 'João Silva';
```

**Atualizar múltiplos registros:**
```sql
UPDATE pessoas
SET cidade = 'Brasília'
WHERE cidade = 'São Paulo';
```

### 3. DELETE
#### Uso
- Para remover registros existentes de uma tabela.

#### Critérios
- Use `DELETE` para remover dados de uma tabela.
- Utilize a cláusula `WHERE` para especificar quais registros devem ser deletados.
- Sem a cláusula `WHERE`, todos os registros na tabela serão deletados.

#### Sintaxe
```sql
DELETE FROM tabela
WHERE condição;
```

#### Exemplos

**Deletar um único registro:**
```sql
DELETE FROM pessoas
WHERE nome = 'João Silva';
```

**Deletar múltiplos registros:**
```sql
DELETE FROM pessoas
WHERE cidade = 'Rio de Janeiro';
```

### 4. REPLACE
#### Uso
- Para inserir um novo registro ou substituir um registro existente se houver um conflito de chave única.

#### Critérios
- Use `REPLACE` quando quiser substituir um registro existente com base em um conflito de chave única ou adicionar um novo registro se não houver conflito.
- Se um registro com a mesma chave primária ou chave única já existir, ele será deletado e um novo registro será inserido.

#### Sintaxe
```sql
REPLACE INTO tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

#### Exemplo

**Substituir ou inserir um registro:**
```sql
REPLACE INTO pessoas (id, nome, idade, cidade)
VALUES (1, 'João Silva', 31, 'São Paulo');
```

## Considerações Finais

- **Integridade dos Dados:** Sempre verifique a integridade dos dados ao usar comandos DML para evitar erros de lógica e dados inconsistentes.
- **Transações:** Utilize transações (`START TRANSACTION`, `COMMIT`, `ROLLBACK`) para garantir a atomicidade das operações, especialmente em operações complexas que envolvem múltiplos comandos DML.
- **Backups:** Realize backups regulares dos dados antes de executar comandos DML críticos para prevenir perda de dados.
- **Desempenho:** Otimize as operações DML usando índices apropriados, especialmente para grandes conjuntos de dados.
