# Revisão de DML para MySQL

## Introdução
A Data Manipulation Language (DML) é uma sublinguagem do SQL usada para manipular dados em um banco de dados. Este manual abrange os comandos DML mais utilizados, **`INSERT`**, **`UPDATE`**, **`DELETE`** e **`REPLACE`**, que são essenciais para a inserção, atualização, remoção e substituição de registros. 

Este guia foi estruturado para ajudar tanto iniciantes quanto usuários intermediários, com explicações claras e exemplos práticos.
---

## Comandos DML

### 1. **INSERT**
O comando **`INSERT`** adiciona novos registros a uma tabela.

#### Sintaxe
```sql
INSERT INTO tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

#### Dicas:
- Especifique as colunas para evitar erros caso a estrutura da tabela seja alterada no futuro.
- Use múltiplos `VALUES` para inserir vários registros de uma só vez.

#### Exemplos
**Inserir um único registro:**
```sql
INSERT INTO clientes (nome, idade, email)
VALUES ('Ana Lima', 28, 'ana.lima@email.com');
```

**Inserir múltiplos registros:**
```sql
INSERT INTO clientes (nome, idade, email)
VALUES 
    ('Pedro Souza', 35, 'pedro.souza@email.com'),
    ('Carla Mendes', 40, 'carla.mendes@email.com');
```

---

### 2. **UPDATE**
O comando **`UPDATE`** modifica dados existentes em uma tabela.

#### Sintaxe
```sql
UPDATE tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

#### Dicas:
- Sempre use a cláusula `WHERE` para evitar alterações em todos os registros.
- Combine `UPDATE` com subconsultas para atualizações dinâmicas.

#### Exemplos
**Atualizar um único registro:**
```sql
UPDATE clientes
SET idade = 29
WHERE nome = 'Ana Lima';
```

**Atualizar registros com base em uma condição:**
```sql
UPDATE clientes
SET ativo = 0
WHERE idade > 35;
```

---

### 3. **DELETE**
O comando **`DELETE`** remove registros de uma tabela.

#### Sintaxe
```sql
DELETE FROM tabela
WHERE condição;
```

#### Dicas:
- Utilize `DELETE` com cuidado, especialmente sem a cláusula `WHERE`.
- Para excluir todos os registros sem remover a tabela, use:
  ```sql
  DELETE FROM tabela;
  ```

#### Exemplos
**Deletar um único registro:**
```sql
DELETE FROM clientes
WHERE nome = 'Carla Mendes';
```

**Deletar múltiplos registros:**
```sql
DELETE FROM clientes
WHERE ativo = 0;
```

---

### 4. **REPLACE**
O comando **`REPLACE`** insere um novo registro ou substitui um existente caso haja um conflito de chave única.

#### Sintaxe
```sql
REPLACE INTO tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

#### Dicas:
- Útil para evitar duplicação de dados ao trabalhar com chaves únicas.
- Substitui o registro existente deletando-o e inserindo um novo.

#### Exemplo
**Substituir ou inserir um registro:**
```sql
REPLACE INTO clientes (id, nome, idade, email)
VALUES (1, 'Ana Lima', 30, 'ana.lima@email.com');
```

---

## Considerações Finais
- **Integridade dos Dados:** Sempre valide os dados antes de inseri-los.
- **Backups:** Mantenha backups frequentes para evitar perda de dados em caso de erro.
- **Prática:** Trabalhe com exercícios práticos para fixar o conteúdo.
