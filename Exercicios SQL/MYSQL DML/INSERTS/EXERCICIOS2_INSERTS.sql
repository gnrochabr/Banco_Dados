USE BDEX2_PASSAGENS_AEREAS;

-- Inserções para a tabela de passageiros
INSERT INTO PASSAGEIROS (COD_PASSAGEIRO, NOME, SOBRENOME, DATA_NASC, NACIONALIDADE) VALUES 
(1, 'Maria', 'Silva', '1980-03-15', 'Brasileira'),
(2, 'João', 'Santos', '1995-08-20', 'Brasileira'),
(3, 'Ana', 'Oliveira', '1976-05-10', 'Brasileira'),
(4, 'Pedro', 'Souza', '1990-11-25', 'Brasileira'),
(5, 'Carla', 'Ferreira', '1982-07-03', 'Brasileira'),
(6, 'Lucas', 'Almeida', '1993-01-18', 'Brasileira'),
(7, 'Juliana', 'Ribeiro', '1988-09-30', 'Brasileira'),
(8, 'Rafael', 'Martins', '1974-06-27', 'Brasileira'),
(9, 'Fernanda', 'Costa', '1998-02-14', 'Brasileira'),
(10, 'Gabriel', 'Pereira', '1985-12-08', 'Brasileira'),
(11, 'Bruna', 'Gomes', '1979-04-20', 'Brasileira'),
(12, 'Marcos', 'Nascimento', '1991-10-05', 'Brasileira'),
(13, 'Carolina', 'Lima', '1983-07-12', 'Brasileira'),
(14, 'Rodrigo', 'Araújo', '1977-11-30', 'Brasileira'),
(15, 'Vanessa', 'Barbosa', '1992-06-15', 'Brasileira'),
(16, 'Thiago', 'Fernandes', '1981-09-25', 'Brasileira'),
(17, 'Mariana', 'Carvalho', '1996-03-05', 'Brasileira'),
(18, 'Diego', 'Mendes', '1978-08-18', 'Brasileira'),
(19, 'Juliana', 'Gonçalves', '1989-01-22', 'Brasileira'),
(20, 'Felipe', 'Rocha', '1973-04-10', 'Brasileira');

INSERT INTO AEROPORTOS (ID_AEROPORTO, NOME, CIDADE, ESTADO, PAIS, LATITUDE, LONGITUDE, TAMANHO_PISTA) VALUES 
(1, 'Aeroporto Internacional de Guarulhos', 'Guarulhos', 'SP', 'Brasil', '-23.4323', '-46.4691', 3750.5),
(2, 'Aeroporto de Congonhas', 'São Paulo', 'SP', 'Brasil', '-23.6277', '-46.6566', 1949.9),
(3, 'Aeroporto Internacional de Galeão', 'Rio de Janeiro', 'RJ', 'Brasil', '-22.8120', '-43.2486', 4100.3),
(4, 'Aeroporto Santos Dumont', 'Rio de Janeiro', 'RJ', 'Brasil', '-22.9110', '-43.1665', 1322.2),
(5, 'Aeroporto Internacional de Brasília', 'Brasília', 'DF', 'Brasil', '-15.8697', '-47.9207', 3455.8),
(6, 'Aeroporto Internacional de Confins', 'Belo Horizonte', 'MG', 'Brasil', '-19.6341', '-43.9691', 3000.0),
(7, 'Aeroporto Internacional de Salvador', 'Salvador', 'BA', 'Brasil', '-12.9118', '-38.3317', 2999.4),
(8, 'Aeroporto Internacional de Recife', 'Recife', 'PE', 'Brasil', '-8.1264', '-34.9240', 2560.7),
(9, 'Aeroporto Internacional de Fortaleza', 'Fortaleza', 'CE', 'Brasil', '-3.7768', '-38.5324', 3350.6),
(10, 'Aeroporto Internacional de Porto Alegre', 'Porto Alegre', 'RS', 'Brasil', '-29.9930', '-51.1711', 2345.9),
(11, 'Aeroporto Internacional de Curitiba', 'Curitiba', 'PR', 'Brasil', '-25.5317', '-49.1738', 1890.1),
(12, 'Aeroporto Internacional de Manaus', 'Manaus', 'AM', 'Brasil', '-3.0384', '-60.0498', 3500.0),
(13, 'Aeroporto Internacional de Belém', 'Belém', 'PA', 'Brasil', '-1.3899', '-48.4766', 2800.4),
(14, 'Aeroporto Internacional de Goiânia', 'Goiânia', 'GO', 'Brasil', '-16.6335', '-49.2206', 2580.2),
(15, 'Aeroporto Internacional de Natal', 'Natal', 'RN', 'Brasil', '-5.7671', '-35.3619', 2850.0),
(16, 'Aeroporto Internacional de Florianópolis', 'Florianópolis', 'SC', 'Brasil', '-27.6706', '-48.5507', 2480.5),
(17, 'Aeroporto Internacional de Campo Grande', 'Campo Grande', 'MS', 'Brasil', '-20.4686', '-54.6723', 3100.0),
(18, 'Aeroporto Internacional de Cuiabá', 'Cuiabá', 'MT', 'Brasil', '-15.6510', '-56.1238', 3250.0),
(19, 'Aeroporto Internacional de Vitória', 'Vitória', 'ES', 'Brasil', '-20.2558', '-40.2842', 2800.0),
(20, 'Aeroporto Internacional de Teresina', 'Teresina', 'PI', 'Brasil', '-5.0600', '-42.8216', 2750.0);

INSERT INTO CIA_AEREAS (ID_CIA, CNPJ, NOME_FANTASIA) VALUES 
(1, '00.000.000/0001-01', 'Latam Airlines'),
(2, '11.111.111/1111-11', 'Gol Linhas Aéreas'),
(3, '22.222.222/2222-22', 'Azul Linhas Aéreas'),
(4, '33.333.333/3333-33', 'Avianca Brasil'),
(5, '44.444.444/4444-44', 'TAP Air Portugal'),
(6, '55.555.555/5555-55', 'American Airlines'),
(7, '66.666.666/6666-66', 'British Airways'),
(8, '77.777.777/7777-77', 'Emirates'),
(9, '88.888.888/8888-88', 'Qatar Airways'),
(10, '99.999.999/9999-99', 'Singapore Airlines'),
(11, '10.101.010/1010-10', 'Lufthansa'),
(12, '11.110.111/1110-11', 'Air France'),
(13, '12.121.212/1212-12', 'Cathay Pacific'),
(14, '13.131.313/1313-13', 'KLM Royal Dutch Airlines'),
(15, '14.141.414/1414-14', 'Turkish Airlines'),
(16, '15.151.515/1515-15', 'Delta Air Lines'),
(17, '16.161.616/1616-16', 'United Airlines'),
(18, '17.171.717/1717-17', 'Qantas Airways'),
(19, '18.181.818/1818-18', 'South African Airways'),
(20, '19.191.919/1919-19', 'All Nippon Airways');

INSERT INTO RESERVAS (ID_RESERVA, DATA_RESERVA, FORMA_PGTO, VALOR_RESERVA) VALUES 
(1, '2024-05-01', 'DINHEIRO', 500.00),
(2, '2024-05-02', 'PIX', 450.00),
(3, '2024-05-03', 'DEBITO', 600.00),
(4, '2024-05-04', 'CREDITO', 700.00),
(5, '2024-05-05', 'PIX', 550.00),
(6, '2024-05-06', 'DINHEIRO', 800.00),
(7, '2024-05-07', 'CREDITO', 650.00),
(8, '2024-05-08', 'DEBITO', 750.00),
(9, '2024-05-09', 'PIX', 600.00),
(10, '2024-05-10', 'DINHEIRO', 700.00),
(11, '2024-05-11', 'DEBITO', 850.00),
(12, '2024-05-12', 'CREDITO', 900.00),
(13, '2024-05-13', 'PIX', 950.00),
(14, '2024-05-14', 'DINHEIRO', 1000.00),
(15, '2024-05-15', 'DEBITO', 1100.00),
(16, '2024-05-16', 'CREDITO', 1200.00),
(17, '2024-05-17', 'PIX', 1300.00),
(18, '2024-05-18', 'DINHEIRO', 1400.00),
(19, '2024-05-19', 'DEBITO', 1500.00),
(20, '2024-05-20', 'CREDITO', 1600.00);

INSERT INTO AERONAVES (PFX_AERO, MODELO, ANO_FABR, FABRICANTE, POLTRONAS, CIA_AEREA) VALUES 
('PR-ABC', 'Boeing 737', 2015, 'Boeing', 150, 1),
('PP-XYZ', 'Airbus A320', 2018, 'Airbus', 180, 2),
('PT-DEF', 'Embraer E190', 2017, 'Embraer', 100, 3),
('PP-QRS', 'Bombardier CRJ900', 2016, 'Bombardier', 90, 4),
('PR-MNO', 'Boeing 777', 2019, 'Boeing', 350, 5),
('PT-GHI', 'Airbus A330', 2014, 'Airbus', 250, 6),
('PR-JKL', 'Embraer E175', 2016, 'Embraer', 80, 7),
('PP-TUV', 'Boeing 787', 2018, 'Boeing', 300, 8),
('PT-WXY', 'Airbus A350', 2017, 'Airbus', 270, 9),
('PR-ZAB', 'Embraer E195', 2015, 'Embraer', 110, 10),
('PP-CDE', 'Boeing 737', 2016, 'Boeing', 160, 11),
('PR-FGH', 'Airbus A320', 2019, 'Airbus', 190, 12),
('PT-IJK', 'Embraer E190', 2018, 'Embraer', 105, 13),
('PP-LMN', 'Bombardier CRJ900', 2017, 'Bombardier', 95, 14),
('PR-OPQ', 'Boeing 777', 2020, 'Boeing', 360, 15),
('PT-RST', 'Airbus A330', 2015, 'Airbus', 260, 16),
('PP-UVW', 'Embraer E175', 2017, 'Embraer', 85, 17),
('PR-XYZ', 'Boeing 787', 2019, 'Boeing', 310, 18),
('PT-ABC', 'Airbus A350', 2016, 'Airbus', 280, 19),
('PR-DEF', 'Embraer E195', 2014, 'Embraer', 115, 20);

-- Exemplos de inserção para a tabela VOOS
INSERT INTO VOOS (ID_VOO, ASSENTO, AERO_PART, DATA_PART, HORA_PART, AERO_CHEG, DATA_CHEG, HORA_CHEG, AERONAVE, CIA_AEREA) VALUES 
(1, 'A1', 1, '2024-06-01', '08:00:00', 3, '2024-06-01', '09:00:00', 'PR-ABC', 1), -- Guarulhos -> Galeão (1h)
(2, 'B2', 3, '2024-06-02', '09:00:00', 5, '2024-06-02', '11:30:00', 'PP-XYZ',2), -- Galeão -> Brasília (2h30)
(3, 'C3', 5, '2024-06-03', '10:00:00', 8, '2024-06-03', '12:30:00', 'PT-DEF',3), -- Brasília -> Recife (2h30)
(4, 'D4', 8, '2024-06-04', '11:00:00', 11, '2024-06-04', '13:30:00', 'PR-ABC',1), -- Recife -> Curitiba (2h30)
(5, 'E5', 11, '2024-06-05', '12:00:00', 10, '2024-06-05', '13:15:00', 'PT-DEF',3), -- Curitiba -> Porto Alegre (1h15)
(6, 'F6', 10, '2024-06-06', '13:00:00', 15, '2024-06-06', '17:30:00', 'PP-XYZ',2), -- Porto Alegre -> Natal (4h30)
(7, 'G7', 15, '2024-06-07', '14:00:00', 9, '2024-06-07', '15:40:00', 'PR-ABC',1), -- Natal -> Fortaleza (1h40)
(8, 'H8', 9, '2024-06-08', '15:00:00', 6, '2024-06-08', '18:30:00', 'PP-XYZ',2), -- Fortaleza -> Confins (3h30)
(9, 'I9', 6, '2024-06-09', '16:00:00', 14, '2024-06-09', '17:30:00', 'PT-DEF',3), -- Confins -> Goiânia (1h30)
(10, 'J10', 14, '2024-06-10', '17:00:00', 2, '2024-06-10', '19:10:00', 'PR-ABC',1), -- Goiânia -> Congonhas (2h10)
(11, 'A2', 2, '2024-06-11', '08:30:00', 12, '2024-06-11', '12:00:00', 'PP-XYZ',2), -- Congonhas -> Manaus (3h30)
(12, 'B3', 12, '2024-06-12', '09:30:00', 13, '2024-06-12', '12:50:00', 'PT-DEF',3), -- Manaus -> Belém (3h20)
(13, 'C4', 13, '2024-06-13', '10:30:00', 16, '2024-06-13', '14:00:00', 'PR-ABC',1), -- Belém -> Florianópolis (3h30)
(14, 'D5', 16, '2024-06-14', '11:30:00', 7, '2024-06-14', '14:00:00', 'PP-XYZ',2), -- Florianópolis -> Salvador (2h30)
(15, 'E6', 7, '2024-06-15', '12:30:00', 18, '2024-06-15', '14:45:00', 'PT-DEF',3), -- Salvador -> Cuiabá (2h15)
(16, 'F7', 18, '2024-06-16', '13:30:00', 20, '2024-06-16', '16:00:00', 'PT-DEF',3), -- Cuiabá -> Teresina (2h30)
(17, 'G8', 20, '2024-06-17', '14:30:00', 17, '2024-06-17', '18:00:00', 'PP-XYZ',2), -- Teresina -> Campo Grande (3h30)
(18, 'H9', 17, '2024-06-18', '15:30:00', 4, '2024-06-18', '18:00:00', 'PR-ABC',1), -- Campo Grande -> Santos Dumont (2h30)
(19, 'I10', 4, '2024-06-19', '16:30:00', 19, '2024-06-19', '17:30:00', 'PP-XYZ',2), -- Santos Dumont -> Vitória (1h)
(20, 'J11', 19, '2024-06-20', '17:30:00', 1, '2024-06-20', '19:00:00', 'PR-ABC',1), -- Vitória -> Guarulhos (1h30)
(21, 'A3', 1, '2024-06-21', '08:45:00', 3, '2024-06-21', '09:45:00', 'PP-XYZ',2), -- Guarulhos -> Galeão (1h)
(22, 'B4', 3, '2024-06-22', '09:45:00', 5, '2024-06-22', '11:15:00', 'PR-ABC',1), -- Galeão -> Brasília (1h30)
(23, 'C5', 5, '2024-06-23', '10:45:00', 8, '2024-06-23', '13:15:00', 'PT-DEF',3), -- Brasília -> Recife (2h30)
(24,'D6', 8, '2024-06-24', '11:45:00', 11, '2024-06-24', '15:15:00', 'PP-XYZ',2), -- Recife -> Curitiba (3h30)
(25, 'E7', 11, '2024-06-25', '12:45:00', 10, '2024-06-25', '13:45:00', 'PT-DEF',3), -- Curitiba -> Porto Alegre (1h)
(26, 'F8', 10, '2024-06-26', '13:45:00', 15, '2024-06-26', '17:15:00', 'PR-ABC',1), -- Porto Alegre -> Natal (3h30)
(27, 'G9', 15, '2024-06-27', '14:45:00', 9, '2024-06-27', '16:45:00', 'PT-DEF',3), -- Natal -> Fortaleza (2h)
(28, 'H10', 9, '2024-06-28', '15:45:00', 6, '2024-06-28', '19:15:00', 'PR-ABC',1), -- Fortaleza -> Confins (3h30)
(29, 'I11', 6, '2024-06-29', '16:45:00', 14, '2024-06-29', '18:15:00', 'PP-XYZ',2), -- Confins -> Goiânia (1h30)
(30, 'J12', 14, '2024-06-30', '17:45:00', 2, '2024-06-30', '19:45:00', 'PT-DEF',3), -- Goiânia -> Congonhas (2h)
(31, 'A2', 2, '2024-07-01', '08:00:00', 3, '2024-07-01', '09:30:00', 'PR-ABC',1), -- Guarulhos -> Galeão (1h30)
(32, 'B3', 3, '2024-07-02', '09:00:00', 5, '2024-07-02', '11:45:00', 'PP-XYZ',2), -- Galeão -> Brasília (2h45)
(33, 'C4', 4, '2024-07-03', '10:00:00', 8, '2024-07-03', '12:15:00', 'PT-DEF',3), -- Brasília -> Recife (2h15)
(34, 'D5', 5, '2024-07-04', '11:00:00', 11, '2024-07-04', '14:00:00', 'PR-ABC',1), -- Recife -> Curitiba (3h)
(35, 'E6', 6, '2024-07-05', '12:00:00', 10, '2024-07-05', '14:00:00', 'PP-XYZ',2), -- Curitiba -> Porto Alegre (2h)
(36, 'F7', 7, '2024-07-06', '13:00:00', 15, '2024-07-06', '16:45:00', 'PR-ABC',1), -- Porto Alegre -> Natal (3h45)
(37, 'G8', 8, '2024-07-07', '14:00:00', 9, '2024-07-07', '17:30:00', 'PT-DEF',3), -- Natal -> Fortaleza (3h30)
(38, 'H9', 9, '2024-07-08', '15:00:00', 6, '2024-07-08', '18:30:00', 'PR-ABC',1), -- Fortaleza -> Confins (3h30)
(39, 'I10', 10, '2024-07-09', '16:00:00', 14, '2024-07-09', '18:00:00','PT-DEF',3), -- Confins -> Goiânia (2h)
(40, 'J11', 11, '2024-07-10', '17:00:00', 2, '2024-07-10', '19:30:00', 'PR-ABC',1), -- Goiânia -> Congonhas (2h30)
(41, 'A2', 2, '2024-07-11', '08:30:00', 12, '2024-07-11', '12:00:00', 'PP-XYZ',2), -- Congonhas -> Manaus (3h30)
(42, 'B3', 3, '2024-07-12', '09:30:00', 13, '2024-07-12', '13:00:00', 'PT-DEF',3), -- Manaus -> Belém (3h30)
(43, 'C4', 4, '2024-07-13', '10:30:00', 16, '2024-07-13', '14:00:00', 'PP-XYZ',2), -- Belém -> Florianópolis (3h30)
(44, 'D5', 5, '2024-07-14', '11:30:00', 7, '2024-07-14', '14:30:00', 'PR-ABC',1), -- Florianópolis -> Salvador (3h)
(45, 'E6', 6, '2024-07-15', '12:30:00', 18, '2024-07-15', '15:45:00', 'PT-DEF',3), -- Salvador -> Cuiabá (3h15)
(46, 'F7', 7, '2024-07-16', '13:30:00', 20, '2024-07-16', '17:00:00', 'PT-DEF',3), -- Cuiabá -> Teresina (3h30)
(47, 'G8', 8, '2024-07-17', '14:30:00', 17, '2024-07-17', '18:30:00', 'PT-DEF',3), -- Teresina -> Campo Grande (4h)
(48, 'H9', 9, '2024-07-18', '15:30:00', 4, '2024-07-18', '18:30:00', 'PR-ABC',1), -- Campo Grande -> Santos Dumont (3h)
(49, 'I10', 10, '2024-07-19', '16:30:00', 19, '2024-07-19', '17:30:00','PP-XYZ',2), -- Santos Dumont -> Vitória (1h)
(50, 'J11', 11, '2024-07-20', '17:30:00', 1, '2024-07-20', '19:00:00', 'PR-ABC',1); -- Vitória -> Guarulhos (1h30)
 


INSERT INTO PASSAGEIROS_RESERVAS (PASSAGEIRO, ID_RESERVA) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 11),
(2, 12),
(3, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

INSERT INTO VOOS_RESERVAS (ID_VOO, ASSENTO, ID_RESERVA) VALUES 
(1, 'A1', 1),
(2, 'B2', 2),
(3, 'C3', 3),
(4, 'D4', 4),
(5, 'E5', 5),
(6, 'F6', 6),
(7, 'G7', 7),
(8, 'H8', 8),
(9, 'I9', 9),
(10, 'J10',10),
(11, 'A2', 10),
(12, 'B3', 3),
(13, 'C4', 5),
(14, 'D5', 7),
(15, 'E6', 2),
(16, 'F7', 11),
(17, 'G8', 13), 
(18, 'H9', 15), 
(19, 'I10', 17), 
(20, 'J11', 19),
(21, 'A3', 2),
(22, 'B4', 4), 
(23, 'C5', 6),
(24, 'D6', 8),
(25, 'E7', 10),
(26, 'F8', 12),
(27, 'G9', 14), 
(28, 'H10', 16),
(29, 'I11', 18), 
(30, 'J12', 20);
