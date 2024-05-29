USE BDEX6_CINEMA;
-- Inserção na tabela ESPECTADORES
INSERT INTO ESPECTADORES (ID_ESPEC, TEL_ESPEC, EMAIL_ESPEC, NOME_ESPEC, DATA_NASC) VALUES
    (1, '123456789', 'fulano@example.com', 'Fulano de Tal', '1990-05-15'),
    (2, '987654321', 'ciclano@example.com', 'Ciclano da Silva', '1985-10-20'),
    (3, '456789123', 'beltrano@example.com', 'Beltrano Pereira', '2000-03-25'),
    (4, '321654987', 'maria@example.com', 'Maria Souza', '1978-08-12'),
    (5, '789123456', 'joao@example.com', 'João Oliveira', '1995-12-30'),
    (6, '555444333', 'ana@example.com', 'Ana Silva', '1982-06-18'),
    (7, '222333444', 'pedro@example.com', 'Pedro Santos', '1998-09-22'),
    (8, '111222333', 'carla@example.com', 'Carla Lima', '1975-04-10'),
    (9, '999888777', 'mario@example.com', 'Mário Costa', '1992-11-28'),
    (10, '666777888', 'lucia@example.com', 'Lúcia Almeida', '1989-07-15'),
    (11, '777888999', 'rodrigo@example.com', 'Rodrigo Oliveira', '1970-03-07'),
    (12, '888999000', 'luisa@example.com', 'Luísa Fernandes', '1987-01-20'),
    (13, '333222111', 'amanda@example.com', 'Amanda Martins', '1997-08-04'),
    (14, '444555666', 'marcos@example.com', 'Marcos Santos', '1980-12-12'),
    (15, '555666777', 'patricia@example.com', 'Patrícia Costa', '1994-05-28'),
    (16, '666555444', 'andre@example.com', 'André Oliveira', '1973-09-17'),
    (17, '777666555', 'raquel@example.com', 'Raquel Lima', '1984-02-23'),
    (18, '888777666', 'vitor@example.com', 'Vítor Silva', '1996-10-10'),
    (19, '999000888', 'carolina@example.com', 'Carolina Sousa', '1986-06-07'),
    (20, '000999888', 'marina@example.com', 'Marina Santos', '1977-11-15'),
    (21, '112233445', 'gustavo@example.com', 'Gustavo Almeida', '1993-04-30'),
    (22, '223344556', 'leticia@example.com', 'Letícia Oliveira', '1981-08-26'),
    (23, '334455667', 'thiago@example.com', 'Thiago Costa', '1976-12-18'),
    (24, '445566778', 'sara@example.com', 'Sara Lima', '1991-02-05'),
    (25, '556677889', 'bruno@example.com', 'Bruno Martins', '1988-07-20'),
    (26, '667788990', 'camila@example.com', 'Camila Fernandes', '1979-03-14'),
    (27, '778899001', 'luiz@example.com', 'Luiz Santos', '1995-09-08'),
    (28, '889900112', 'ana@example.com', 'Ana Oliveira', '1983-05-25'),
    (29, '990011223', 'pedro@example.com', 'Pedro Costa', '1972-10-03'),
    (30, '001122334', 'sophia@example.com', 'Sophia Almeida', '1984-06-28'),
    (31, '221100334', 'gabriel@example.com', 'Gabriel Lima', '1990-12-15'),
    (32, '334455667', 'julia@example.com', 'Júlia Fernandes', '1977-08-09'),
    (33, '446677889', 'lucas@example.com', 'Lucas Santos', '1998-01-17'),
    (34, '559988776', 'mariana@example.com', 'Mariana Costa', '1985-04-22'),
    (35, '667799001', 'ana@example.com', 'Ana Pereira', '1974-11-10'),
    (36, '776655443', 'rafael@example.com', 'Rafael Almeida', '1993-07-05'),
    (37, '881122334', 'carolina@example.com', 'Carolina Oliveira', '1988-02-19'),
    (38, '993344556', 'pedro@example.com', 'Pedro Fernandes', '1971-09-14'),
    (39, '667788990', 'lara@example.com', 'Lara Sousa', '1996-05-03'),
    (40, '334455667', 'joana@example.com', 'Joana Lima', '1982-01-08');

-- Inserção na tabela SALAS
INSERT INTO SALAS (ID_SALA, NOME, CAPACIDADE) VALUES
    (1, 'Sala 1', 100),
    (2, 'Sala 2', 80),
    (3, 'Sala 3', 120),
    (4, 'Sala 4', 90),
    (5, 'Sala 5', 110);

-- Inserção na tabela FILMES
INSERT INTO FILMES (ID_FILME, NOME_FILME, DISTRIBUIDOR_FILME, TEMPO_FILME, DIRETOR) VALUES
    (1, 'Aventuras no Espaço', 'Distribuidora Galáctica', 120, 'Astronauta X'),
    (2, 'O Tesouro Perdido', 'Distribuidora Pirata', 110, 'Capitão Jack'),
    (3, 'O Segredo do Templo', 'Distribuidora Antiga', 95, 'Arqueólogo Z'),
    (4, 'Amor à Primeira Vista', 'Distribuidora Romântica', 130, 'Diretora Romântica Y'),
    (5, 'A Grande Fuga', 'Distribuidora Ação', 115, 'Diretor de Ação Z'),
    (6, 'O Mistério da Mansão', 'Distribuidora Misteriosa', 100, 'Detetive X'),
    (7, 'Cidade dos Sonhos', 'Distribuidora Fantasia', 105, 'Diretor de Fantasia Y');

-- Inserção na tabela SESSOES
INSERT INTO SESSOES (ID_SESSAO, FILME, SALA) VALUES
    (1, 1, 1),  -- Aventuras no Espaço na Sala 1
    (2, 2, 2),  -- O Tesouro Perdido na Sala 2
    (3, 3, 3),  -- O Segredo do Templo na Sala 3
    (4, 4, 4),  -- Amor à Primeira Vista na Sala 4
    (5, 5, 5),  -- A Grande Fuga na Sala 5
    (6, 6, 1),  -- O Mistério da Mansão na Sala 1
    (7, 6, 2);  -- O Mistério da Mansão na Sala 2

-- Inserção na tabela INGRESSOS
INSERT INTO INGRESSOS (ID_INGRESSO, DATA_ING, HORA_ING, SESSAO, ESPECTADOR) VALUES
    (1, '2024-08-15', '10:00:00', 1, 1),  -- Espectador 1 na sessão 1
    (2, '2024-08-15', '10:00:00', 1, 2),  -- Espectador 2 na sessão 1
    (3, '2024-08-15', '10:00:00', 1, 3),  -- Espectador 3 na sessão 1
    (4, '2024-08-15', '14:00:00', 2, 1),  -- Espectador 1 na sessão 2
    (5, '2024-08-15', '14:00:00', 2, 4),  -- Espectador 4 na sessão 2
    (6, '2024-08-15', '18:00:00', 3, 5),  -- Espectador 5 na sessão 3
    (7, '2024-08-16', '10:00:00', 1, 6),  -- Espectador 6 na sessão 1
    (8, '2024-08-16', '14:00:00', 2, 7),  -- Espectador 7 na sessão 2
    (9, '2024-08-16', '18:00:00', 3, 8),  -- Espectador 8 na sessão 3
    (10, '2024-08-17', '10:00:00', 4, 9), -- Espectador 9 na sessão 4
    (11, '2024-08-17', '14:00:00', 5, 10),-- Espectador 10 na sessão 5
    (12, '2024-08-17', '18:00:00', 6, 11),-- Espectador 11 na sessão 6
    (13, '2024-08-18', '10:00:00', 4, 12),-- Espectador 12 na sessão 4
    (14, '2024-08-18', '14:00:00', 5, 13),-- Espectador 13 na sessão 5
    (15, '2024-08-18', '18:00:00', 6, 14),-- Espectador 14 na sessão 6
    (16, '2024-08-19', '10:00:00', 7, 15),-- Espectador 15 na sessão 7
    (17, '2024-08-19', '14:00:00', 1, 16),-- Espectador 16 na sessão 1
    (18, '2024-08-19', '18:00:00', 2, 17),-- Espectador 17 na sessão 2
    (19, '2024-08-20', '10:00:00', 3, 18),-- Espectador 18 na sessão 3
    (20, '2024-08-20', '14:00:00', 4, 19),-- Espectador 19 na sessão 4
    (21, '2024-08-20', '18:00:00', 5, 20),-- Espectador 20 na sessão 5
    (22, '2024-08-21', '10:00:00', 6, 21),-- Espectador 21 na sessão 6
    (23, '2024-08-21', '14:00:00', 7, 22),-- Espectador 22 na sessão 7
    (24, '2024-08-21', '18:00:00', 1, 23),-- Espectador 23 na sessão 1
    (25, '2024-08-22', '10:00:00', 2, 24),-- Espectador 24 na sessão 2
    (26, '2024-08-22', '14:00:00', 3, 25),-- Espectador 25 na sessão 3
    (27, '2024-08-22', '18:00:00', 4, 26),-- Espectador 26 na sessão 4
    (28, '2024-08-23', '10:00:00', 5, 27),-- Espectador 27 na sessão 5
    (29, '2024-08-23', '14:00:00', 6, 28),-- Espectador 28 na sessão 6
    (30, '2024-08-23', '18:00:00', 7, 29),-- Espectador 29 na sessão 7
    (31, '2024-08-24', '10:00:00', 1, 30),-- Espectador 30 na sessão 1
    (32, '2024-08-24', '14:00:00', 2, 1), -- Espectador 1 na sessão 2
    (33, '2024-08-24', '18:00:00', 3, 2), -- Espectador 2 na sessão 3
    (34, '2024-08-25', '10:00:00', 4, 3), -- Espectador 3 na sessão 4
    (35, '2024-08-25', '14:00:00', 5, 4), -- Espectador 4 na sessão 5
    (36, '2024-08-25', '18:00:00', 6, 5), -- Espectador 5 na sessão 6
    (37, '2024-08-26', '10:00:00', 7, 6), -- Espectador 6 na sessão 7
    (38, '2024-08-26', '14:00:00', 1, 7), -- Espectador 7 na sessão 1
    (39, '2024-08-26', '18:00:00', 2, 8), -- Espectador 8 na sessão 2
    (40, '2024-08-27', '10:00:00', 3, 9), -- Espectador 9 na sessão 3
    (41, '2024-08-27', '14:00:00', 4, 10),-- Espectador 10 na sessão 4
    (42, '2024-08-27', '18:00:00', 5, 11),-- Espectador 11 na sessão 5
    (43, '2024-08-28', '10:00:00', 6, 12),-- Espectador 12 na sessão 6
    (44, '2024-08-28', '14:00:00', 7, 13),-- Espectador 13 na sessão 7
    (45, '2024-08-28', '18:00:00', 1, 14),-- Espectador 14 na sessão 1
    (46, '2024-08-29', '10:00:00', 2, 15),-- Espectador 15 na sessão 2
    (47, '2024-08-29', '14:00:00', 3, 16),-- Espectador 16 na sessão 3
    (48, '2024-08-29', '18:00:00', 4, 17),-- Espectador 17 na sessão 4
    (49, '2024-08-30', '10:00:00', 5, 18),-- Espectador 18 na sessão 5
    (50, '2024-08-30', '14:00:00', 6, 19),-- Espectador 19 na sessão 6
    (51, '2024-08-30', '18:00:00', 7, 20),-- Espectador 20 na sessão 7
    (52, '2024-08-31', '10:00:00', 1, 21),-- Espectador 21 na sessão 1
    (53, '2024-08-31', '14:00:00', 2, 22),-- Espectador 22 na sessão 2
    (54, '2024-08-31', '18:00:00', 3, 23),-- Espectador 23 na sessão 3
    (55, '2024-09-01', '10:00:00', 4, 24),-- Espectador 24 na sessão 4
    (56, '2024-09-01', '14:00:00', 5, 25),-- Espectador 25 na sessão 5
    (57, '2024-09-01', '18:00:00', 6, 26),-- Espectador 26 na sessão 6
    (58, '2024-09-02', '10:00:00', 7, 27),-- Espectador 27 na sessão 7
    (59, '2024-09-02', '14:00:00', 1, 28),-- Espectador 28 na sessão 1
    (60, '2024-09-02', '18:00:00', 2, 29),-- Espectador 29 na sessão 2
    (61, '2024-09-03', '10:00:00', 3, 30),-- Espectador 30 na sessão 3
    (62, '2024-09-03', '14:00:00', 4, 1), -- Espectador 1 na sessão 4
    (63, '2024-09-03', '18:00:00', 5, 2), -- Espectador 2 na sessão 5
    (64, '2024-09-04', '10:00:00', 6, 3), -- Espectador 3 na sessão 6
    (65, '2024-09-04', '14:00:00', 7, 4), -- Espectador 4 na sessão 7
    (66, '2024-09-04', '18:00:00', 1, 5), -- Espectador 5 na sessão 1
    (67, '2024-09-05', '10:00:00', 2, 6), -- Espectador 6 na sessão 2
    (68, '2024-09-05', '14:00:00', 3, 7), -- Espectador 7 na sessão 3
    (69, '2024-09-05', '18:00:00', 4, 8), -- Espectador 8 na sessão 4
    (70, '2024-09-06', '10:00:00', 5, 9), -- Espectador 9 na sessão 5
    (71, '2024-09-06', '14:00:00', 6, 10),-- Espectador 10 na sessão 6
    (72, '2024-09-06', '18:00:00', 7, 11),-- Espectador 11 na sessão 7
    (73, '2024-09-07', '10:00:00', 1, 12),-- Espectador 12 na sessão 1
    (74, '2024-09-07', '14:00:00', 2, 13),-- Espectador 13 na sessão 2
    (75, '2024-09-07', '18:00:00', 3, 14),-- Espectador 14 na sessão 3
    (76, '2024-09-08', '10:00:00', 4, 15),-- Espectador 15 na sessão 4
    (77, '2024-09-08', '14:00:00', 5, 16),-- Espectador 16 na sessão 5
    (78, '2024-09-08', '18:00:00', 6, 17),-- Espectador 17 na sessão 6
    (79, '2024-09-09', '10:00:00', 7, 18),-- Espectador 18 na sessão 7
    (80, '2024-09-09', '14:00:00', 1, 19),-- Espectador 19 na sessão 1
    (81, '2024-09-09', '18:00:00', 2, 20),-- Espectador 20 na sessão 2
    (82, '2024-09-10', '10:00:00', 3, 21),-- Espectador 21 na sessão 3
    (83, '2024-09-10', '14:00:00', 4, 22),-- Espectador 22 na sessão 4
    (84, '2024-09-10', '18:00:00', 5, 23),-- Espectador 23 na sessão 5
    (85, '2024-09-11', '10:00:00', 6, 24),-- Espectador 24 na sessão 6
    (86, '2024-09-11', '14:00:00', 7, 25),-- Espectador 25 na sessão 7
    (87, '2024-09-11', '18:00:00', 1, 26),-- Espectador 26 na sessão 1
    (88, '2024-09-12', '10:00:00', 2, 27),-- Espectador 27 na sessão 2
    (89, '2024-09-12', '14:00:00', 3, 28),-- Espectador 28 na sessão 3
    (90, '2024-09-12', '18:00:00', 4, 29),-- Espectador 29 na sessão 4
    (91, '2024-09-13', '10:00:00', 5, 30),-- Espectador 30 na sessão 5
    (92, '2024-09-13', '14:00:00', 6, 1), -- Espectador 1 na sessão 6
    (93, '2024-09-13', '18:00:00', 7, 2), -- Espectador 2 na sessão 7
    (94, '2024-09-14', '10:00:00', 1, 3), -- Espectador 3 na sessão 1
    (95, '2024-09-14', '14:00:00', 2, 4), -- Espectador 4 na sessão 2
    (96, '2024-09-14', '18:00:00', 3, 5), -- Espectador 5 na sessão 3
    (97, '2024-09-15', '10:00:00', 4, 6), -- Espectador 6 na sessão 4
    (98, '2024-09-15', '14:00:00', 5, 7), -- Espectador 7 na sessão 5
    (99, '2024-09-15', '18:00:00', 6, 8), -- Espectador 8 na sessão 6
    (100, '2024-09-16', '10:00:00', 7, 9);-- Espectador 9 na sessão 7
