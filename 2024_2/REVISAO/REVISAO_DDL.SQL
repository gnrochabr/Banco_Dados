-- Criando o banco de dados
CREATE DATABASE Revisao;
USE Revisao;

-- Tabela de endereços (normalizada)
CREATE TABLE enderecos (
    endereco_id INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cep VARCHAR(10) NOT NULL
);

-- Tabela de jogos
CREATE TABLE jogos (
    jogo_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    plataforma ENUM('PlayStation', 'Xbox', 'Nintendo Switch', 'PC') NOT NULL,
    genero VARCHAR(50) NOT NULL,
    ano_lancamento YEAR NOT NULL,
    preco_diaria DECIMAL(5, 2) NOT NULL
);

-- Tabela de clientes
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    endereco_id INT NOT NULL,
    FOREIGN KEY (endereco_id) REFERENCES enderecos(endereco_id)
);

-- Tabela de locações
CREATE TABLE locacoes (
    locacao_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    jogo_id INT NOT NULL,
    data_locacao DATE NOT NULL,
    data_devolucao DATE,
    multa_atraso DECIMAL(7, 2),
    status_loc ENUM('Em andamento', 'Concluída', 'Atrasada') NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (jogo_id) REFERENCES jogos(jogo_id)
);

-- Tabela de pagamentos
CREATE TABLE pagamentos (
    pagamento_id INT PRIMARY KEY AUTO_INCREMENT,
    locacao_id INT NOT NULL,
    valor_pago DECIMAL(7, 2) NOT NULL,
    data_pagamento DATE NOT NULL,
    metodo_pagamento ENUM('Cartão de Crédito', 'Cartão de Débito', 'Dinheiro', 'Pix') NOT NULL,
    FOREIGN KEY (locacao_id) REFERENCES locacoes(locacao_id)
);
