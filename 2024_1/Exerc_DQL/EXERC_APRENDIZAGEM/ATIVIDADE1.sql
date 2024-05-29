#BDEX1
use bdex1_hospital;
#Exercicio 1 - Quais são os nomes e datas de nascimento de todos os pacientes cadastrados?
select nome, data_nasc from pacientes;

#Exercicio 2 - Qual é o número total de médicos cadastrados?
select count(*) Qtd_Medicos from medicos;

#Exercicio 3 - Qual é a idade média dos pacientes cadastrados?
select round(avg(timestampdiff(year,data_nasc,curdate())),0) as media_idade
from pacientes;

#BDEX2
use bdex2_passagens_aereas;
#Exercicio 1 - Quais são os nomes e cidades de todos os aeroportos cadastrados?
SELECT NOME, CIDADE FROM AEROPORTOS;

#Exercicio 2 - Quantos voos estão cadastrados para cada companhia aérea?
SELECT CIA_AEREA, COUNT(*) FROM VOOS
GROUP BY CIA_AEREA;
#OU
SELECT CA.NOME_FANTASIA, COUNT(V.CIA_AEREA) QTD_VOOS FROM VOOS V
JOIN CIA_AEREAS CA ON CA.ID_CIA = V.CIA_AEREA
GROUP BY CA.NOME_FANTASIA;

#Exercicio 3 - Qual é a capacidade média das aeronaves cadastradas?
SELECT ROUND(AVG(POLTRONAS),1) Media_Vagas FROM AERONAVES;

#BDEX3
USE BDEX3_REDESOCIAL;
#1 - Quais são os nomes e sobrenomes de todos os usuários cadastrados?
SELECT NOME_USUARIO,SOBRENOME FROM USUARIOS;

#2 - Quantos grupos existem na rede social?
SELECT COUNT(*) FROM GRUPOS;

#3 - Qual é o número médio de comentários por postagem?
SELECT ROUND(AVG(Comentarios_por_postagem),1) AS MEDIA
FROM (
	#Recuperando a contagem de postagens por comentário
    SELECT COUNT(*) AS Comentarios_por_postagem
    FROM COMENTARIOS
    GROUP BY POST
) AS BASE_CONTAGEM; #nome da minha base consultada

#BDEX4
USE BDEX4_ESTOQUE;
#1 - Quais são os nomes e preços de todos os produtos cadastrados?
SELECT NOME, PRECO AS VALOR FROM PRODUTOS;

#2 - Quantos produtos diferentes cada fornecedor fornece?
SELECT FORNECEDOR,COUNT(*) FROM PRODUTOS_FORNECEDORES 
GROUP BY FORNECEDOR;

SELECT F.NOME, COUNT(PF.PRODUTO) QUANTIDADE
FROM PRODUTOS_FORNECEDORES PF
JOIN FORNECEDORES F ON F.ID_FORNECEDOR = PF.FORNECEDOR
GROUP BY F.NOME;

#3 - Qual é o número total de produtos em estoque?
SELECT * FROM PRODUTOS_ARMAZENS;

#EM TODOS OS ARMAZENS SOMADOS
SELECT SUM(QUANTIDADE) AS TOTAL_ESTOQUE 
FROM PRODUTOS_ARMAZENS;

#POR ARMAZEM
SELECT A.NOME_ARMAZEM, SUM(PA.QUANTIDADE) AS QTDE_ARMAZEM FROM PRODUTOS_ARMAZENS PA
JOIN ARMAZENS A ON A.ID_ARMAZEM = PA.ARMAZEM
GROUP BY A.NOME_ARMAZEM;

#BDEX5
USE BDEX5_EVENTOS;

#1 - Quais são os nomes e datas dos eventos cadastrados?
SELECT NOME_EVENTO,DATA_EVENTO FROM EVENTOS;

#2 - Quantas atividades estão planejadas para cada evento?
SELECT EVENTO_ATV,COUNT(*) FROM ATIVIDADES GROUP BY EVENTO_ATV;

#3 - Qual é o número médio de participantes por evento?
SELECT EVENTO,COUNT(*) FROM PARTICIPANTE_EVENTO GROUP BY EVENTO;

#BDEX6
USE BDEX6_CINEMA;
#1 - Quais são os nomes e capacidades de todas as salas de cinema cadastradas?
SELECT NOME,CAPACIDADE FROM SALAS;

#2 - Quantos espectadores frequentaram cada sessão de cinema?
SELECT SESSAO,COUNT(ESPECTADOR) FROM INGRESSOS GROUP BY SESSAO;

#3 - Qual é o horário médio de início das sessões de cinema?
SELECT TIME_FORMAT(AVG(HOUR(HORA_ING)), '%h:%i:%s') AS HORARIO_MEDIO_INICIO
FROM INGRESSOS;

#BDEX7
USE BDEX7_TRANSACOESBANCARIAS;
#1 - Quais são os nomes e CPFs de todos os usuários cadastrados?
#2 - Qual é o total de transações realizadas por cada usuário?
#3 - Qual é o valor médio das transações bancárias?
	