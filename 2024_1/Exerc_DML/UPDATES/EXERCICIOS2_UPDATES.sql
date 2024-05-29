-- Atualizar o nome do passageiro com COD_PASSAGEIRO 1 para 'Mariana Silva'
UPDATE PASSAGEIROS
SET NOME = 'Mariana', SOBRENOME = 'Silva'
WHERE COD_PASSAGEIRO = 1;

-- Atualizar o nome do aeroporto com ID_AEROPORTO 1 para 'Aeroporto Internacional de São Paulo'
UPDATE AEROPORTOS
SET NOME = 'Aeroporto Internacional de São Paulo'
WHERE ID_AEROPORTO = 1;

-- Atualizar o nome da companhia aérea com ID_CIA 1 para 'LATAM Airlines Brasil'
UPDATE CIA_AEREAS
SET NOME_FANTASIA = 'LATAM Airlines Brasil'
WHERE ID_CIA = 1;

-- Atualizar a data de reserva com ID_RESERVA 1 para '2024-05-10'
UPDATE RESERVAS
SET DATA_RESERVA = '2024-05-10'
WHERE ID_RESERVA = 1;

-- Atualizar o modelo da aeronave com PFX_AERO 'PR-ABC' para 'Boeing 737-800'
UPDATE AERONAVES
SET MODELO = 'Boeing 737-800'
WHERE PFX_AERO = 'PR-ABC';

-- Atualizar o assento do voo com ID_VOO 1 e ID_RESERVA 1 para 'B3'
UPDATE VOOS_RESERVAS
SET ASSENTO = 'B3'
WHERE ID_VOO = 1 AND ID_RESERVA = 1;
