-- Atualizar o telefone do paciente com CPF '12345678901' para '987654321'
UPDATE PACIENTES
SET TELEFONE = '987654321'
WHERE CPF_PACIENTE = '12345678901';

-- Atualizar o email do paciente com CPF '44444444444' para 'amanda.new@example.com'
UPDATE PACIENTES
SET EMAIL = 'amanda.new@example.com'
WHERE CPF_PACIENTE = '44444444444';

-- Atualizar a data de nascimento do paciente com CPF '19191919191' para '1980-01-01'
UPDATE PACIENTES
SET DATA_NASC = '1980-01-01'
WHERE CPF_PACIENTE = '19191919191';

-- Atualizar o nome do paciente com CPF '55555555555' para 'Rafaela Oliveira'
UPDATE PACIENTES
SET NOME = 'Rafaela Oliveira'
WHERE CPF_PACIENTE = '55555555555';

-- Atualizar o telefone do paciente com CPF '99999999999' para '1234567890'
UPDATE PACIENTES
SET TELEFONE = '1234567890'
WHERE CPF_PACIENTE = '99999999999';

-- Atualizar o nome do departamento com COD_ESPECIALIDADE 1 para 'Cardiologia Clínica'
UPDATE DEPARTAMENTOS
SET NOME_ESPECIALIDADE = 'Cardiologia Clínica'
WHERE COD_ESPECIALIDADE = 1;

-- Atualizar o nome do departamento com COD_ESPECIALIDADE 5 para 'Ginecologia e Obstetrícia'
UPDATE DEPARTAMENTOS
SET NOME_ESPECIALIDADE = 'Ginecologia e Obstetrícia'
WHERE COD_ESPECIALIDADE = 5;

-- Atualizar o nome do departamento com COD_ESPECIALIDADE 10 para 'Psiquiatria Infantil'
UPDATE DEPARTAMENTOS
SET NOME_ESPECIALIDADE = 'Psiquiatria Infantil'
WHERE COD_ESPECIALIDADE = 10;

-- Atualizar o nome do departamento com COD_ESPECIALIDADE 15 para 'Otorrinolaringologia Pediátrica'
UPDATE DEPARTAMENTOS
SET NOME_ESPECIALIDADE = 'Otorrinolaringologia Pediátrica'
WHERE COD_ESPECIALIDADE = 15;

-- Atualizar o nome do departamento com COD_ESPECIALIDADE 19 para 'Nutrição Clínica'
UPDATE DEPARTAMENTOS
SET NOME_ESPECIALIDADE = 'Nutrição Clínica'
WHERE COD_ESPECIALIDADE = 19;

-- Atualizar o email do médico com CRM '123456' para 'carlos.new@example.com'
UPDATE MEDICOS
SET EMAIL = 'carlos.new@example.com'
WHERE CRM = 123456;

-- Atualizar o telefone do médico com CRM '567890' para '9876543210'
UPDATE MEDICOS
SET TELEFONE = '9876543210'
WHERE CRM = 567890;

-- Atualizar o UF do médico com CRM '901234' para 'SP'
UPDATE MEDICOS
SET UF = 'SP'
WHERE CRM = 901234;

-- Atualizar o nome do médico com CRM '456789' para 'Dr. Diego Oliveira'
UPDATE MEDICOS
SET NOME = 'Dr. Diego Oliveira'
WHERE CRM = 456789;

-- Atualizar o departamento do médico com CRM '123456' para 5
UPDATE MEDICOS
SET DEPTO_COD_ESPEC = 5
WHERE CRM = 123456;

-- Atualizar a anamnese da consulta com ID_CONSULTA 1 para 'Dor no peito e falta de ar'
UPDATE CONSULTAS
SET ANAMNESE = 'Dor no peito e falta de ar'
WHERE ID_CONSULTA = 1;

-- Atualizar a data da consulta com ID_CONSULTA 5 para '2024-06-01'
UPDATE CONSULTAS
SET DATA_CONS = '2024-06-01'
WHERE ID_CONSULTA = 5;

-- Atualizar o CRM do médico da consulta com ID_CONSULTA 9 para '123456'
UPDATE CONSULTAS
SET CRM = 123456
WHERE ID_CONSULTA = 9;

-- Atualizar a hora da consulta com ID_CONSULTA 13 para '09:00:00'
UPDATE CONSULTAS
SET HORA_CONS = '09:00:00'
WHERE ID_CONSULTA = 13;

-- Atualizar o CPF do paciente da consulta com ID_CONSULTA 17 para '77777777777'
UPDATE CONSULTAS
SET CPF_PACIENTE = '77777777777'
WHERE ID_CONSULTA = 17;

