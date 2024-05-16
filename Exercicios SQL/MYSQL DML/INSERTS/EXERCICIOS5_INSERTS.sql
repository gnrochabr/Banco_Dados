use `bdex5_eventos`;
-- Inserção na tabela PARTICIPANTES
INSERT INTO PARTICIPANTES (NUM_INSCRICAO, CPF, NOME, DATA_NASC, EMPRESA) VALUES
    (1, '123.456.789-01', 'João Silva', '1990-05-15', 'Tech Solutions'),
    (2, '234.567.890-12', 'Maria Souza', '1985-09-20', 'Fashion Style'),
    (3, '345.678.901-23', 'Pedro Santos', '1992-07-10', 'Food King'),
    (4, '456.789.012-34', 'Ana Oliveira', '1988-03-25', 'ElectroParts'),
    (5, '567.890.123-45', 'Carla Lima', '1995-11-08', 'Aqua Supplies'),
    (6, '678.901.234-56', 'Marcos Oliveira', '1987-02-28', 'Tech Solutions'),
    (7, '789.012.345-67', 'Juliana Ferreira', '1993-04-12', 'Fashion Style'),
    (8, '890.123.456-78', 'Lucas Santos', '1990-09-05', 'Food King'),
    (9, '901.234.567-89', 'Aline Pereira', '1985-12-18', 'ElectroParts'),
    (10, '012.345.678-90', 'Mariana Costa', '1991-06-30', 'Aqua Supplies'),
    (11, '098.765.432-10', 'Gustavo Souza', '1989-08-25', 'Tech Solutions'),
    (12, '987.654.321-09', 'Fernanda Lima', '1994-03-17', 'Fashion Style'),
    (13, '876.543.210-98', 'Paulo Ferreira', '1986-11-22', 'Food King'),
    (14, '765.432.109-87', 'Amanda Santos', '1990-07-04', 'ElectroParts'),
    (15, '654.321.098-76', 'Roberto Oliveira', '1988-09-15', 'Aqua Supplies'),
    (16, '543.210.987-65', 'Tatiane Costa', '1993-05-20', 'Tech Solutions'),
    (17, '432.109.876-54', 'Rafaela Ferreira', '1987-12-02', 'Fashion Style'),
    (18, '321.098.765-43', 'Daniel Souza', '1995-04-28', 'Food King'),
    (19, '210.987.654-32', 'Camila Lima', '1989-10-10', 'ElectroParts'),
    (20, '109.876.543-21', 'Felipe Pereira', '1992-08-08', 'Aqua Supplies');

-- Inserção na tabela LOCAIS
INSERT INTO LOCAIS (ID_LOCAL, NOME, LOG_LOCAL, NUMLOG_LOCAL, BAIRRO_LOCAL, CIDADE, UF, CEP, CAPACIDADE) VALUES
    (1, 'Centro de Convenções', 'Rua Principal', 100, 'Centro', 'São Paulo', 'SP', '12345-678', 1000),
    (2, 'Hotel da Praia', 'Avenida Beira Mar', 500, 'Beach', 'Rio de Janeiro', 'RJ', '54321-098', 500),
    (3, 'Centro de Eventos', 'Avenida Central', 300, 'Downtown', 'Belo Horizonte', 'MG', '98765-432', 800),
    (4, 'Parque de Exposições', 'Rua Industrial', 200, 'Industrial', 'Curitiba', 'PR', '87654-321', 1200),
    (5, 'Auditório Municipal', 'Rua das Artes', 150, 'Art District', 'Porto Alegre', 'RS', '23456-789', 600),
    (6, 'Centro de Convenções Sul', 'Rua Sul', 200, 'Sul', 'Florianópolis', 'SC', '98765-432', 800),
    (7, 'Centro de Eventos Norte', 'Avenida Norte', 300, 'Norte', 'Goiânia', 'GO', '87654-321', 1200),
    (8, 'Hotel Central', 'Avenida Central', 400, 'Central', 'Salvador', 'BA', '76543-210', 700),
    (9, 'Centro Cultural', 'Rua Cultural', 250, 'Cultural', 'Manaus', 'AM', '65432-109', 500),
    (10, 'Centro de Exposições Leste', 'Avenida Leste', 180, 'Leste', 'Recife', 'PE', '54321-987', 1000),
    (11, 'Centro de Convenções Oeste', 'Rua Oeste', 300, 'Oeste', 'Fortaleza', 'CE', '43210-987', 900),
    (12, 'Hotel Sul', 'Avenida Sul', 400, 'Sul', 'Belém', 'PA', '32109-876', 800),
    (13, 'Centro de Eventos Litoral', 'Avenida Litoral', 200, 'Litoral', 'João Pessoa', 'PB', '21098-765', 1200),
    (14, 'Centro de Convenções Sudeste', 'Rua Sudeste', 150, 'Sudeste', 'Maceió', 'AL', '10987-654', 700),
    (15, 'Hotel Norte', 'Avenida Norte', 100, 'Norte', 'Teresina', 'PI', '09876-543', 500),
    (16, 'Centro de Exposições Centro', 'Rua Centro', 200, 'Centro', 'Vitória', 'ES', '98765-432', 1000),
    (17, 'Centro de Convenções Noroeste', 'Avenida Noroeste', 300, 'Noroeste', 'Campo Grande', 'MS', '87654-321', 1200),
    (18, 'Hotel Leste', 'Avenida Leste', 150, 'Leste', 'Porto Velho', 'RO', '76543-210', 700),
    (19, 'Centro Cultural Oeste', 'Rua Oeste', 250, 'Oeste', 'Cuiabá', 'MT', '65432-109', 500),
    (20, 'Centro de Exposições Sul', 'Avenida Sul', 180, 'Sul', 'Natal', 'RN', '54321-987', 1000);

-- Inserção na tabela EVENTOS
INSERT INTO EVENTOS (ID_EVENTO, NOME_EVENTO, DATA_EVENTO, ENTIDADE_EVENTO, LOCAL_EVENTO) VALUES
    (1, 'Congresso de Tecnologia', '2024-08-15', 'Tech World', 1),
    (2, 'Desfile de Moda', '2024-10-25', 'Fashion Association', 1),
    (3, 'Feira Gastronômica', '2024-07-05', 'Food Expo', 3),
    (4, 'Expo Eletrônica', '2024-09-10', 'ElectroTech', 4),
    (5, 'Exposição de Aquários', '2024-11-20', 'AquaWorld',NULL),
    (6, 'Congresso de TI', '2024-12-10', 'Tech World', 7),
    (7, 'Desfile de Verão', '2025-02-28', 'Fashion Association', 7),
    (8, 'Feira de Orgânicos', '2025-05-15', 'Food Expo', 16),
    (9, 'Expo de Dispositivos', '2025-07-20', 'ElectroTech', 9),
    (10, 'Exposição Marinha', '2025-09-30', 'AquaWorld', 10);

-- Inserção na tabela ATIVIDADES
INSERT INTO ATIVIDADES (ID_ATIVIDADE, NOME_ATV, DATA_ATV, HORA_ATV, EVENTO_ATV) VALUES
    (1, 'Palestra de Inovação', '2024-08-15', '10:00:00', 1),
    (2, 'Desfile Primavera/Verão', '2024-10-25', '15:00:00', 2),
    (3, 'Workshop de Culinária', '2024-07-05', '14:00:00', 3),
    (4, 'Demonstração de Novos Produtos', '2024-09-10', '11:00:00', 4),
    (5, 'Apresentação de Espécies Marinhas', '2024-11-20', '13:00:00', 5),
    (6, 'Oficina de Programação', '2024-12-10', '09:30:00', 6),
    (7, 'Desfile Outono/Inverno', '2024-10-25', '16:00:00', 2),
    (8, 'Degustação de Orgânicos', '2025-03-05', '10:30:00', 8),
    (9, 'Exibição de Dispositivos Inteligentes', '2024-08-15', '08:30:00', 1),
    (10, 'Palestra sobre Conservação Marinha', '2025-09-30', '11:30:00', 10),
    (11, 'Workshop de Robótica', '2024-08-15', '14:00:00', 1),
    (12, 'Desfile de Moda Inverno', '2024-10-25', '17:00:00', 2),
    (13, 'Degustação de Vinhos Premiados', '2025-03-05', '10:00:00', 8),
    (14, 'Apresentação de Tecnologias Emergentes', '2024-12-10', '14:00:00', 6),
    (15, 'Palestra sobre Preservação de Tubarões', '2025-09-30', '11:00:00', 10),
    (16, 'Oficina de Robótica para Iniciantes', '2024-09-10', '15:00:00', 4),
    (17, 'Desfile de Moda Outono', '2026-11-10', '16:30:00', 7),
    (18, 'Workshop de Confeitaria', '2024-07-05', '09:00:00', 3),
    (19, 'Apresentação de Novos Gadgets', '2024-09-10', '13:00:00', 4),
    (20, 'Palestra sobre Ecossistemas Marinhos', '2025-09-30', '10:30:00', 10),
    (21, 'Palestra sobre Inteligência Artificial', '2024-12-10', '15:30:00', 6),
    (22, 'Oficina de Desenvolvimento Web', '2024-12-10', '11:00:00', 6),
    (23, 'Desfile de Moda Primavera', '2024-10-25', '14:30:00', 2),
    (24, 'Workshop de Fotografia','2025-09-30', '10:00:00', 10),
    (25, 'Apresentação de Novas Tendências em Alimentação', '2025-03-05', '12:00:00', 8),
    (26, 'Palestra sobre Sustentabilidade', '2025-03-05', '09:30:00', 8),
    (27, 'Oficina de Design de Interiores', '2024-11-20', '16:00:00', 5),
    (28, 'Desfile de Moda Verão', '2024-10-25', '13:30:00', 2),
    (29, 'Workshop de Marketing Digital', '2024-08-15', '08:00:00', 1),
    (30, 'Palestra sobre Inovação em Tecnologia', '2024-08-15', '16:00:00', 1);
    
    -- Inserção na tabela PARTICIPANTE_EVENTO
INSERT INTO PARTICIPANTE_EVENTO (INSCRICAO, CPF, EVENTO) VALUES
    (1, '123.456.789-01', 1),
    (2, '234.567.890-12', 2),
    (3, '345.678.901-23', 3),
    (4, '456.789.012-34', 4),
    (5, '567.890.123-45', 5),
    (6, '678.901.234-56', 6),
    (7, '789.012.345-67', 7),
    (8, '890.123.456-78', 8),
    (9, '901.234.567-89', 9),
    (10, '012.345.678-90', 10),
    (11, '098.765.432-10', 1),
    (12, '987.654.321-09', 2),
    (13, '876.543.210-98', 3),
    (14, '765.432.109-87', 4),
    (15, '654.321.098-76', 5),
    (16, '543.210.987-65', 6),
    (17, '432.109.876-54', 7),
    (18, '321.098.765-43', 8),
    (19, '210.987.654-32', 9),
    (20, '109.876.543-21', 10),
	(1, '123.456.789-01', 10),
    (2, '234.567.890-12', 9),
    (3, '345.678.901-23', 8),
    (4, '456.789.012-34', 7),
    (5, '567.890.123-45', 6),
    (6, '678.901.234-56', 5),
    (7, '789.012.345-67', 4),
    (8, '890.123.456-78', 4),
    (9, '901.234.567-89', 2),
    (10, '012.345.678-90',1),
    (11, '098.765.432-10',9),
    (12, '987.654.321-09',10),
    (13, '876.543.210-98',9),
    (14, '765.432.109-87',8),
    (15, '654.321.098-76',7),
    (16, '543.210.987-65',5),
    (17, '432.109.876-54',8),
    (18, '321.098.765-43',2),
    (19, '210.987.654-32',3),
    (20, '109.876.543-21',1);

-- Inserção na tabela PARTICIPANTE_ATIVIDADE
INSERT INTO PARTICIPANTE_ATIVIDADE (INSCRICAO, CPF, ATIVIDADE)
VALUES
    (1, '123.456.789-01', 1),    -- Congresso de Tecnologia: Palestra de Inovação
    (1, '123.456.789-01', 11),   -- Congresso de Tecnologia: Workshop de Robótica
    (2, '234.567.890-12', 2),    -- Desfile de Moda: Desfile Primavera/Verão
    (2, '234.567.890-12', 12),   -- Desfile de Moda: Desfile de Moda Inverno
    (3, '345.678.901-23', 3),    -- Feira Gastronômica: Workshop de Culinária
    (3, '345.678.901-23', 13),   -- Feira Gastronômica: Degustação de Vinhos Premiados
    (4, '456.789.012-34', 4),    -- Expo Eletrônica: Demonstração de Novos Produtos
    (4, '456.789.012-34', 14),   -- Expo Eletrônica: Apresentação de Tecnologias Emergentes
    (5, '567.890.123-45', 5),    -- Exposição de Aquários: Apresentação de Espécies Marinhas
    (5, '567.890.123-45', 15),   -- Exposição de Aquários: Palestra sobre Preservação de Tubarões
    (6, '678.901.234-56', 6),    -- Congresso de TI: Oficina de Programação
    (6, '678.901.234-56', 16),   -- Congresso de TI: Oficina de Robótica para Iniciantes
    (7, '789.012.345-67', 7),    -- Desfile de Verão: Desfile Outono/Inverno
    (7, '789.012.345-67', 17),   -- Desfile de Verão: Desfile de Moda Outono
    (8, '890.123.456-78', 8),    -- Feira de Orgânicos: Degustação de Orgânicos
    (8, '890.123.456-78', 18),   -- Feira de Orgânicos: Workshop de Confeitaria
    (9, '901.234.567-89', 9),    -- Expo de Dispositivos: Exibição de Dispositivos Inteligentes
    (9, '901.234.567-89', 19),   -- Expo de Dispositivos: Apresentação de Novos Gadgets
    (10, '012.345.678-90', 10),  -- Exposição Marinha: Palestra sobre Conservação Marinha
    (10, '012.345.678-90', 20),  -- Exposição Marinha: Palestra sobre Ecossistemas Marinhos
    (11, '098.765.432-10', 21),  -- Congresso de Tecnologia: Palestra sobre Inteligência Artificial
    (11, '098.765.432-10', 30),  -- Congresso de Tecnologia: Palestra sobre Inovação em Tecnologia
    (12, '987.654.321-09', 22),  -- Desfile de Moda: Oficina de Desenvolvimento Web
    (12, '987.654.321-09', 28),  -- Desfile de Moda: Desfile de Moda Verão
    (13, '876.543.210-98', 23),  -- Feira Gastronômica: Desfile de Moda Primavera
    (13, '876.543.210-98', 24),  -- Feira Gastronômica: Workshop de Fotografia
    (14, '765.432.109-87', 25),  -- Expo Eletrônica: Apresentação de Novas Tendências em Alimentação
    (14, '765.432.109-87', 26),  -- Expo Eletrônica: Palestra sobre Sustentabilidade
    (15, '654.321.098-76', 27),  -- Exposição de Aquários: Oficina de Design de Interiores
    (16, '543.210.987-65', 29);  -- Congresso de TI: Workshop de Marketing Digital
