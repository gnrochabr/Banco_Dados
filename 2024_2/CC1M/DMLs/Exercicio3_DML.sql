-- Inserindo espectadores
INSERT INTO ESPECTADORES (ID_ESPEC, TEL_ESPEC, EMAIL_ESPEC, NOME_ESPEC, DATA_NASC) VALUES
(1, '555-1234', 'alice@example.com', 'Alice Santos', '1990-05-15'),
(2, '555-5678', 'bob@example.com', 'Bob Oliveira', '1985-08-25'),
(3, '555-9101', 'carol@example.com', 'Carol Almeida', '1992-11-02'),
(4, '555-2345', 'dave@example.com', 'Dave Souza', '1988-07-18'),
(5, '555-3456', 'eve@example.com', 'Eve Lima', '1995-02-09'),
(6, '555-4567', 'frank@example.com', 'Frank Costa', '1991-03-10'),
(7, '555-6789', 'grace@example.com', 'Grace Silva', '1983-12-21');

-- Inserindo salas
INSERT INTO SALAS (ID_SALA, NOME, CAPACIDADE) VALUES
(1, 'Sala A', 100),
(2, 'Sala B', 80),
(3, 'Sala C', 120),
(4, 'Sala D', 60),
(5, 'Sala E', 200),
(6, 'Sala F', 90),
(7, 'Sala G', 150);

-- Inserindo filmes
INSERT INTO FILMES (ID_FILME, NOME_FILME, DISTRIBUIDOR_FILME, TEMPO_FILME, DIRETOR) VALUES
(1, 'Aventura nas Estrelas', 'Distribuidora X', 120, 'Carlos Mendes'),
(2, 'Mistério do Oceano', 'Distribuidora Y', 90, 'Ana Ribeiro'),
(3, 'O Último Guerreiro', 'Distribuidora Z', 110, 'Bruno Santos'),
(4, 'Amor Impossível', 'Distribuidora X', 130, 'Clara Lopes'),
(5, 'A Lenda do Deserto', 'Distribuidora Y', 105, 'Diego Farias'),
(6, 'Fuga para o Futuro', 'Distribuidora Z', 115, 'Elisa Castro'),
(7, 'Segredos do Passado', 'Distribuidora X', 95, 'Fernando Pereira');

-- Inserindo sessões (assumindo que as sessões ocorrerão em diferentes filmes e salas)
INSERT INTO SESSOES (ID_SESSAO, FILME_SESSAO, SALA_SESSAO) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7);

-- Inserindo ingressos (garantindo que cada ingresso esteja ligado a uma sessão e um espectador)
INSERT INTO INGRESSOS (ID_INGRESSO, DATA_INGRESSO, HORA_INGRESSO, SESSAO_INGRESSO, ESPECTADOR_INGRESSO) VALUES
(1, '2024-11-01', '18:00:00', 1, 1),
(2, '2024-11-01', '19:00:00', 2, 2),
(3, '2024-11-02', '20:00:00', 3, 3),
(4, '2024-11-02', '21:00:00', 4, 4),
(5, '2024-11-03', '18:30:00', 5, 5),
(6, '2024-11-03', '19:30:00', 6, 6),
(7, '2024-11-03', '20:30:00', 7, 7);
