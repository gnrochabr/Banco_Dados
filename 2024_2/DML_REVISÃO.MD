# Revisão de DML para MySQL

## Introdução
A Data Manipulation Language (DML) é uma sublinguagem do SQL usada para manipular dados em um banco de dados. Este manual abrange os comandos DML mais utilizados, **`INSERT`**, **`UPDATE`**, **`DELETE`** e **`REPLACE`**, que são essenciais para a inserção, atualização, remoção e substituição de registros. 

Este guia foi estruturado para ajudar tanto iniciantes quanto usuários intermediários, com explicações claras e exemplos práticos.

---

## Tabela Ampliada de Tipos de Dados no MySQL

A escolha do tipo de dado correto é essencial para garantir desempenho e integridade no banco de dados. Abaixo, os tipos de dados mais comuns são organizados por categoria, com explicações e exemplos.

### Tipos Numéricos
| Tipo            | Descrição                                                                                   | Intervalo/Exemplo                                 |
|------------------|---------------------------------------------------------------------------------------------|--------------------------------------------------|
| **TINYINT**      | Números inteiros pequenos, ocupando 1 byte. Ideal para valores pequenos como flags (0/1).   | -128 a 127 (com sinal) ou 0 a 255 (sem sinal).   |
| **SMALLINT**     | Números inteiros pequenos, ocupando 2 bytes.                                                | -32.768 a 32.767 (com sinal).                    |
| **MEDIUMINT**    | Números inteiros médios, ocupando 3 bytes.                                                  | -8.388.608 a 8.388.607 (com sinal).             |
| **INT** ou **INTEGER** | Números inteiros padrão, ocupando 4 bytes. Ideal para contadores ou IDs.               | -2.147.483.648 a 2.147.483.647 (com sinal).      |
| **BIGINT**       | Números inteiros grandes, ocupando 8 bytes. Usado para valores muito altos.                 | -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807. |
| **DECIMAL(p, s)** ou **NUMERIC(p, s)** | Números com precisão exata, ocupando espaço variável. Usado para finanças. | `p`: dígitos totais, `s`: casas decimais. Ex.: `DECIMAL(10,2)` para até 10 dígitos, com 2 decimais. |
| **FLOAT**        | Números de ponto flutuante com precisão aproximada.                                         | Usado para cálculos científicos. Ex.: 3.14159.   |
| **DOUBLE**       | Ponto flutuante de precisão dupla.                                                         | Maior precisão que `FLOAT`.                     |
| **BOOLEAN** ou **BOOL** | Representa valores verdadeiros (1) ou falsos (0). Armazenado como `TINYINT(1)`.         | Ex.: 1 para verdadeiro, 0 para falso.           |

---

### Tipos de Texto
| Tipo            | Descrição                                                                 | Capacidade Máxima                             |
|------------------|---------------------------------------------------------------------------|----------------------------------------------|
| **CHAR(n)**      | Cadeia de caracteres de tamanho fixo. Útil para códigos de tamanho fixo. | Exatamente `n` caracteres (máx. 255).        |
| **VARCHAR(n)**   | Cadeia de caracteres de tamanho variável. Muito usado para textos comuns. | Máximo de `n` caracteres (até 65.535 com limite de linha). |
| **TEXT**         | Texto de tamanho variável, sem limite de comprimento explícito.          | Até 65.535 caracteres. Não suporta índices diretamente. |
| **TINYTEXT**     | Versão menor do `TEXT`.                                                  | Até 255 caracteres.                          |
| **MEDIUMTEXT**   | Versão maior do `TEXT`.                                                  | Até 16.777.215 caracteres.                   |
| **LONGTEXT**     | Texto longo. Usado para conteúdos grandes, como artigos ou documentos.   | Até 4.294.967.295 caracteres.                |
| **BLOB**         | Dados binários. Útil para armazenar arquivos ou imagens.                 | Dependendo do tipo: TINYBLOB, BLOB, etc.     |

**Diferença entre `CHAR` e `VARCHAR`:**
- **`CHAR`** ocupa espaço fixo, útil para valores uniformes como códigos ou siglas. Exemplo: `CHAR(5)` sempre ocupa 5 caracteres, mesmo que o valor armazenado seja "AB".
- **`VARCHAR`** ocupa espaço variável, economizando armazenamento. Exemplo: `VARCHAR(50)` armazena apenas o espaço necessário para "AB".

**Diferença entre `TEXT` e `VARCHAR`:**
- **`TEXT`** não pode ser diretamente indexado e tem maior capacidade.
- **`VARCHAR`** pode ser indexado e é mais eficiente para tamanhos menores.

---

### Tipos de Data e Hora
| Tipo            | Descrição                                                                     | Exemplo                          |
|------------------|-------------------------------------------------------------------------------|----------------------------------|
| **DATE**         | Apenas a data no formato `AAAA-MM-DD`. Ideal para datas de nascimento.       | `2024-11-26`.                   |
| **DATETIME**     | Data e hora no formato `AAAA-MM-DD HH:MM:SS`.                                | `2024-11-26 14:30:00`.          |
| **TIMESTAMP**    | Data e hora no formato `AAAA-MM-DD HH:MM:SS`, armazenado em UTC.             | Atualizado automaticamente em operações. |
| **TIME**         | Apenas hora no formato `HH:MM:SS`.                                          | `14:30:00`.                     |
| **YEAR**         | Representa um ano no formato `AAAA`.                                        | `2024`.                         |

**Diferenças entre `DATETIME` e `TIMESTAMP`:**
- **`DATETIME`** não é afetado por fusos horários.
- **`TIMESTAMP`** é armazenado em UTC e convertido para o fuso horário do servidor/cliente ao exibir.

---

### Como Escolher o Tipo de Dado?

1. **Para números pequenos:** Use `TINYINT`, `SMALLINT` ou `MEDIUMINT` dependendo do intervalo necessário.
2. **Para textos curtos e uniformes:** Use `CHAR`.
3. **Para textos variáveis:** Use `VARCHAR` para tamanhos menores e `TEXT` para grandes volumes.
4. **Para datas e horários:** Use `DATETIME` para registros locais e `TIMESTAMP` para dados com múltiplos fusos horários.
5. **Para valores exatos em cálculos financeiros:** Use `DECIMAL` em vez de `FLOAT` ou `DOUBLE` para evitar erros de arredondamento.

Com esta tabela ampliada, você terá mais segurança ao projetar bancos de dados e utilizar os comandos DML adequadamente. Se precisar de mais exemplos ou explicações, posso incluir!

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
