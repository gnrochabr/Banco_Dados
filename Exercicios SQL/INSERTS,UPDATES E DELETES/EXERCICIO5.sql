USE BDEX5_EVENTOS;

INSERT INTO PARTICIPANTES (NUM_INSCRICAO, CPF, NOME, DATA_NASC, EMPRESA)
VALUES
    (1, '123.456.789-00', 'João Silva', '1990-05-15', 'Tech Solutions'),
    (2, '987.654.321-00', 'Maria Oliveira', '1985-10-20', 'Marketing Expert'),
    (3, '111.222.333-00', 'Carlos Santos', '1995-03-25', 'Healthcare Innovations'),
    (4, '444.555.666-00', 'Ana Pereira', '1988-07-12', 'Finance Consulting'),
    (5, '777.888.999-00', 'Luiza Mendes', '1992-11-30', 'Fashion Trends');

INSERT INTO LOCAIS (ID_LOCAL, NOME, LOG_LOCAL, NUMLOG_LOCAL, BAIRRO_LOCAL, CIDADE, UF, CEP, CAPACIDADE)
VALUES
    (1, 'Centro de Convenções', 'Av. Principal', 123, 'Centro', 'São Paulo', 'SP', '12345-678', 1000),
    (2, 'Centro de Eventos', 'Rua das Flores', 456, 'Centro', 'Rio de Janeiro', 'RJ', '98765-432', 800),
    (3, 'Auditório Municipal', 'Av. das Palmeiras', 789, 'Jardim Botânico', 'Curitiba', 'PR', '54321-876', 500),
    (4, 'Salão Nobre', 'Rua dos Girassóis', 101, 'Barro Preto', 'Belo Horizonte', 'MG', '87654-321', 1200),
    (5, 'Teatro Municipal', 'Av. da Praia', 112, 'Barra', 'Salvador', 'BA', '23456-789', 700);

INSERT INTO EVENTOS (ID_EVENTO, NOME_EVENTO, DATA_EVENTO, ENTIDADE_EVENTO, LOCAL_EVENTO)
VALUES
    (1, 'Congresso de Tecnologia', '2024-08-15', 'Tech Solutions', 1),
    (2, 'Seminário de Marketing', '2024-09-20', 'Marketing Expert', 2),
    (3, 'Conferência de Saúde', '2024-10-25', 'Healthcare Innovations', 3),
    (4, 'Workshop de Finanças', '2024-11-30', 'Finance Consulting', 4),
    (5, 'Feira de Moda', '2024-12-05', 'Fashion Trends', 5);
INSERT INTO ATIVIDADES (ID_ATIVIDADE, NOME_ATV, DATA_ATV, HORA_ATV, EVENTO_ATV)
VALUES
    (1, 'Palestra sobre Inovação', '2024-08-15', '09:00:00', 1),
    (2, 'Oficina de Marketing Digital', '2024-09-20', '10:30:00', 2),
    (3, 'Mesa Redonda sobre Saúde Mental', '2024-10-25', '11:00:00', 3),
    (4, 'Treinamento de Gestão Financeira', '2024-11-30', '14:00:00', 4),
    (5, 'Desfile de Moda', '2024-12-05', '15:30:00', 5);
INSERT INTO PARTICIPANTE_ATIVIDADE (INSCRICAO, CPF, ATIVIDADE)
VALUES
    (1, '123.456.789-00', 1),
    (2, '987.654.321-00', 2),
    (3, '111.222.333-00', 3),
    (4, '444.555.666-00', 4),
    (5, '777.888.999-00', 5);

-- Inserir participante para um evento
INSERT INTO PARTICIPANTE_EVENTO (INSCRICAO, CPF, EVENTO)
VALUES
  (1, '123.456.789-00', 1),
    (2, '987.654.321-00', 2),
    (3, '111.222.333-00', 3),
    (4, '444.555.666-00', 4),
    (5, '777.888.999-00', 5);

UPDATE PARTICIPANTES SET EMPRESA = 'Tech Innovations' WHERE NUM_INSCRICAO = 1;
UPDATE PARTICIPANTES SET NOME = 'Maria da Silva' WHERE CPF = '987.654.321-00';

UPDATE LOCAIS SET CAPACIDADE = 1500 WHERE ID_LOCAL = 1;
UPDATE LOCAIS SET CIDADE = 'Rio de Janeiro' WHERE ID_LOCAL = 2;

UPDATE EVENTOS SET NOME_EVENTO = 'ExpoTech 2025' WHERE ID_EVENTO = 1;
UPDATE EVENTOS SET ENTIDADE_EVENTO = 'Digital Marketing Agency' WHERE ID_EVENTO = 2;

UPDATE ATIVIDADES SET HORA_ATV = '17:30:00' WHERE ID_ATIVIDADE = 1;
UPDATE ATIVIDADES SET DATA_ATV = '2024-09-22' WHERE ID_ATIVIDADE = 2;

UPDATE PARTICIPANTE_ATIVIDADE SET ATIVIDADE = 4 WHERE INSCRICAO = 1 AND CPF = '123.456.789-00';
UPDATE PARTICIPANTE_ATIVIDADE SET CPF = '111.222.333-00' WHERE INSCRICAO = 2 AND ATIVIDADE = 2;

SET FOREIGN_KEY_CHECKS = 0; #USADO APENAS PARA FINS DE APRENDIZADO - LIBERA AS RESTRIÇÕES DE CHAVE ESTRANGEIRA

DELETE FROM PARTICIPANTES WHERE NUM_INSCRICAO = 3;
DELETE FROM PARTICIPANTES WHERE CPF = '777.888.999-00';

DELETE FROM LOCAIS WHERE ID_LOCAL = 3;
DELETE FROM LOCAIS WHERE CIDADE = 'Rio de Janeiro';

DELETE FROM EVENTOS WHERE ID_EVENTO = 3;
DELETE FROM EVENTOS WHERE ENTIDADE_EVENTO = 'Digital Marketing Agency';

DELETE FROM ATIVIDADES WHERE ID_ATIVIDADE = 4;
DELETE FROM ATIVIDADES WHERE DATA_ATV = '2024-09-22';

DELETE FROM PARTICIPANTE_ATIVIDADE WHERE INSCRICAO = 1 AND CPF = '111.222.333-00';
DELETE FROM PARTICIPANTE_ATIVIDADE WHERE INSCRICAO = 2 AND ATIVIDADE = 4;
