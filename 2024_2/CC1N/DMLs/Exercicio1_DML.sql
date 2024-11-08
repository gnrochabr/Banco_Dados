INSERT INTO PARTICIPANTES (NUM_INSCRICAO, CPF, NOME, DATA_NASC, EMPRESA) VALUES 
(1, '123.456.789-00', 'Alice Silva', '1985-06-15', 'Empresa A'),
(2, '987.654.321-00', 'Carlos Souza', '1990-08-22', 'Empresa B'),
(3, '456.123.789-00', 'Maria Oliveira', '1978-03-05', 'Empresa C'),
(4, '321.654.987-00', 'João Pereira', '1995-12-30', 'Empresa D'),
(5, '789.456.123-00', 'Ana Lima', '1982-10-10', 'Empresa E');

INSERT INTO LOCAIS (ID_LOCAL, NOME, LOG_LOCAL, NUMLOG_LOCAL, BAIRRO_LOCAL, CIDADE, CEP, CAPACIDADE) VALUES 
(1, 'Centro de Convenções', 'Av. Central', 100, 'Centro', 'Cidade A', '11111-000', 200),
(2, 'Auditório Principal', 'Rua 1', 50, 'Centro', 'Cidade B', '22222-000', 150),
(3, 'Espaço Cultural', 'Av. das Artes', 75, 'Bairro X', 'Cidade C', '33333-000', 300),
(4, 'Salão de Eventos', 'Av. Brasil', 200, 'Bairro Y', 'Cidade D', '44444-000', 250),
(5, 'Sala de Conferências', 'Rua 2', 10, 'Bairro Z', 'Cidade E', '55555-000', 100);

INSERT INTO EVENTOS (ID_EVENTO, NOME_EVENTO, DATA_EVENTO, ENTIDADE_EVENTO, LOCAL_EVENTO) VALUES 
(1, 'Congresso de Tecnologia', '2024-11-10', 'Associação de TI', 1),
(2, 'Workshop de Inovação', '2024-11-15', 'Fundação de Inovação', 2),
(3, 'Seminário de Engenharia', '2024-11-20', 'Instituto de Engenharia', 3),
(4, 'Conferência de Sustentabilidade', '2024-11-25', 'Organização Verde', 4),
(5, 'Feira de Empreendedorismo', '2024-11-30', 'Agência de Desenvolvimento', 5);

INSERT INTO ATIVIDADES (ID_ATIVIDADE, NOME_ATV, DATA_ATV, HORA_ATV, EVENTO_ATV) VALUES 
(1, 'Palestra de Abertura', '2024-11-10', '09:00:00', 1),
(2, 'Mesa Redonda', '2024-11-15', '14:00:00', 2),
(3, 'Oficina Prática', '2024-11-20', '10:00:00', 3),
(4, 'Painel de Discussões', '2024-11-25', '16:00:00', 4),
(5, 'Encerramento', '2024-11-30', '18:00:00', 5);

INSERT INTO PARTICIPANTES_ATIVIDADES (INSCRICAO, CPF, ATIVIDADE) VALUES 
(1, '123.456.789-00', 1),
(2, '987.654.321-00', 2),
(3, '456.123.789-00', 3),
(4, '321.654.987-00', 4),
(5, '789.456.123-00', 5);

INSERT INTO PARTICIPANTES_EVENTOS (INSCRICAO, CPF, EVENTO) VALUES 
(1, '123.456.789-00', 1),
(2, '987.654.321-00', 2),
(3, '456.123.789-00', 3),
(4, '321.654.987-00', 4),
(5, '789.456.123-00', 5);
