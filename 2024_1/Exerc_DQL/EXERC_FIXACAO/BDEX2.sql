#Usando a base de dados BDEX2_PASSAGENS_AEREAS, responda:
USE BDEX2_PASSAGENS_AEREAS;
# 1 - Exibir todas as informações da tabela PASSAGEIROS.
SELECT *
FROM PASSAGEIROS;

# 2 - Mostrar os nomes e sobrenomes dos passageiros que nasceram depois do ano 1990.
SELECT NOME, SOBRENOME
FROM PASSAGEIROS
WHERE YEAR(DATA_NASC) > 1990;

# 3 - Listar os nomes dos aeroportos e as cidades onde estão localizados.
SELECT NOME,CIDADE
FROM AEROPORTOS;

# 4 - Exibir os detalhes das reservas: ID da reserva, data da reserva, forma de pagamento e valor da reserva.
SELECT * 
FROM RESERVAS;
# 5 - Listar o nome das companhias aéreas e quantas aeronaves cada uma possui.
SELECT CIA.NOME_FANTASIA AS COMPANHIA, COUNT(*) AS QUANTIDADE
FROM AERONAVES AS AERO
LEFT JOIN CIA_AEREAS AS CIA
ON CIA.ID_CIA = AERO.CIA_AEREA
GROUP BY COMPANHIA;

# 6 - Mostrar os nomes dos passageiros que fizeram reservas em 2024.
SELECT DISTINCT PASS.NOME
FROM PASSAGEIROS AS PASS
JOIN PASSAGEIROS_RESERVAS AS PR
ON PASS.COD_PASSAGEIRO = PR.PASSAGEIRO
JOIN RESERVAS AS RSV
ON RSV.ID_RESERVA = PR.ID_RESERVA
WHERE YEAR(RSV.DATA_RESERVA) = 2024;

# 7 - Listar todas as companhias aéreas, ordenadas pelo nome fantasia de A a Z.
SELECT NOME_FANTASIA
FROM CIA_AEREAS
ORDER BY NOME_FANTASIA;

# 8 - Mostrar os nomes dos aeroportos que têm pista com tamanho maior que 3000 metros.
SELECT NOME
FROM AEROPORTOS
WHERE TAMANHO_PISTA > 3000;

# 9 - Exibir os detalhes dos voos: ID do voo, assento, aeroporto de partida, data e hora de partida, aeroporto de chegada, data e hora de chegada, modelo da aeronave e nome da companhia aérea.
SELECT
VOOS.ID_VOO,
VOOS.ASSENTO,
AEROP.NOME AS PARTIDA,
CONCAT_WS(" | ",VOOS.DATA_PART,VOOS.HORA_PART) AS DADOS_PARTIDA,
AEROC.NOME AS CHEGADA,
CONCAT_WS(" | ",VOOS.DATA_CHEG,VOOS.HORA_CHEG) AS DADOS_CHEGADA,
AERONV.MODELO,
CIA.NOME_FANTASIA AS COMPANHIA
FROM VOOS
JOIN AEROPORTOS AS AEROP
ON VOOS.AERO_PART = AEROP.ID_AEROPORTO
JOIN AEROPORTOS AS AEROC
ON VOOS.AERO_PART = AEROC.ID_AEROPORTO
JOIN AERONAVES AS AERONV
ON VOOS.AERONAVE = AERONV.PFX_AERO
JOIN CIA_AEREAS AS CIA
ON CIA.ID_CIA = VOOS.CIA_AEREA;

# 10 - Para cada voo, mostrar o ID do voo e a quantidade de assentos reservados.
SELECT ID_VOO,COUNT(ASSENTO) AS ASSENTOS
FROM VOOS_RESERVAS
GROUP BY ID_VOO;

# 11 - Contar quantos passageiros têm nacionalidade brasileira.
SELECT COUNT(*) AS BRASILEIROS
FROM PASSAGEIROS
WHERE NACIONALIDADE LIKE 'BRASIL%';

# 12 - Listar os nomes das aeronaves e o ano de fabricação que possuem mais de 150 poltronas.
SELECT PFX_AERO, ANO_FABR
FROM AERONAVES
WHERE POLTRONAS > 150;

# 13 - Mostrar o nome dos passageiros e a data da última reserva que eles fizeram.
SELECT
CONCAT_WS(' ',PASS.NOME,PASS.SOBRENOME) AS PASSAGEIRO,
MAX(RSV.DATA_RESERVA) AS ULTIMA_RESERVA
FROM RESERVAS AS RSV
JOIN PASSAGEIROS_RESERVAS AS PR
ON PR.ID_RESERVA = RSV.ID_RESERVA
JOIN PASSAGEIROS AS PASS
ON PASS.COD_PASSAGEIRO = PR.PASSAGEIRO
GROUP BY PASSAGEIRO;

# 14 - Contar quantas reservas foram feitas por cada passageiro.
SELECT
CONCAT_WS(' ',PASS.NOME,PASS.SOBRENOME) AS PASSAGEIRO,
COUNT(*) AS QTDE_RESERVAS
FROM PASSAGEIROS_RESERVAS AS PR
RIGHT JOIN PASSAGEIROS AS PASS
ON PASS.COD_PASSAGEIRO = PR.PASSAGEIRO
GROUP BY PASSAGEIRO;

# 15 - Para cada reserva feita em 2024, mostrar o ID da reserva, o valor da reserva e a porcentagem desse valor em relação ao valor total de reservas feitas em 2024.
SELECT ID_RESERVA, VALOR_RESERVA
FROM RESERVAS;

SELECT SUM(VALOR_RESERVA)
FROM RESERVAS;
         

SELECT ID_RESERVA, VALOR_RESERVA, 
CONCAT(ROUND(((VALOR_RESERVA/VALOR_TOTAL)*100),1),'%') AS PORCENTAGEM
FROM
	(SELECT ID_RESERVA, VALOR_RESERVA
	 FROM RESERVAS) AS VALOR_BASE,
	(SELECT SUM(VALOR_RESERVA) AS VALOR_TOTAL
	 FROM RESERVAS) AS VALOR_CHEIO
     
GROUP BY ID_RESERVA;
