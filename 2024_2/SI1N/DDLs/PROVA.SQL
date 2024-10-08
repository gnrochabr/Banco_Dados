#CRIANDO MEU 1º BANCO DE DADOS
CREATE SCHEMA BANQUINHO;

#USANDO MEU BANQUINHO
USE BANQUINHO;

#CRIANDO A TABELA CLIENTES
CREATE TABLE IF NOT EXISTS CLIENTES(
#NOME_ATRIBUTO - TIPO - RESTRIÇÃO
CLIENTE_ID INT PRIMARY KEY,
CLIENTE_NOME VARCHAR(50) NOT NULL,
CLIENTE_RUA VARCHAR(100) NOT NULL,
CLIENTE_NUMERO INT,
CLIENTE_BAIRRO VARCHAR(50) NOT NULL,
CLIENTE_CIDADE VARCHAR(50) NOT NULL,
CLIENTE_UF CHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
FUNC_ID INT PRIMARY KEY,
FUNC_NOME VARCHAR(100) NOT NULL,
FUNC_CARGO VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS PRODUTOS(
PROD_COD INT PRIMARY KEY,
PROD_NOME VARCHAR(100) NOT NULL,
PROD_PRECO DECIMAL(5,2) NOT NULL,
PROD_QTDE INT NOT NULL,
CATEGORIA VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS PEDIDOS(
PED_NUMERO INT PRIMARY KEY,
PED_DATA DATE NOT NULL,
PED_VAL_TOTAL DECIMAL(10,2) NOT NULL,
CLIENTE INT NOT NULL,
FUNCIONARIO INT NOT NULL,

#CRIANDO A CHAVE ESTRANGEIRA DE CLIENTE
#RESTRICAO - NOME - CHAVE ESTRANGEIRA (COLUNA)
CONSTRAINT FK_CLIENTE FOREIGN KEY(CLIENTE)
#REFERENCIA TABELA(CHAVE PRIMÁRIA)
REFERENCES CLIENTES(CLIENTE_ID),

#CRIANDO A CHAVE ESTRANGEIRA DE FUNCIONARIO
CONSTRAINT FK_FUNCIONARIO FOREIGN KEY(FUNCIONARIO)
REFERENCES FUNCIONARIOS(FUNC_ID)
);

CREATE TABLE IF NOT EXISTS PEDIDOS_PRODUTOS(
PEDIDO INT,
PRODUTO INT,
PRIMARY KEY(PEDIDO, PRODUTO),
CONSTRAINT FK_PEDIDO FOREIGN KEY(PEDIDO)
REFERENCES PEDIDOS(PED_NUMERO),
CONSTRAINT FK_PRODUTO FOREIGN KEY(PRODUTO)
REFERENCES PRODUTOS(PROD_COD));
