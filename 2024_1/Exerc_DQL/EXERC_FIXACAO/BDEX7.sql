use BDEX7_TRANSACOESBANCARIAS;
#1. Criar uma consulta para exibir todas as informações da tabela USUARIOS.
SELECT
	*
FROM
	usuarios;
    
#2. Escrever uma consulta para mostrar os nomes e CPFs dos usuários que possuem telefone cadastrado.
SELECT
	nome_user AS Nome,
    cpf_user AS CPF
FROM
	usuarios
WHERE
	telefone IS NOT NULL
    OR 
    telefone <> ' ';

#3. Listar os nomes dos bancos e suas respectivas agências.
SHOW TABLES;
DESC CONTAS;
SELECT
	NOME_BNC AS NOME,
    AGENCIA
FROM
	CONTAS;
	

#4. Exibir os detalhes das transações: ID da transação, valor, natureza (crédito ou débito), nome do usuário.
SHOW TABLES;
DESC TRANSACOES;
DESC USUARIOS;
SELECT
	TRANS.ID_TRANS AS ID_TRANSACAO,
    TRANS.VALOR,
    TRANS.NATUREZA,
    USR.NOME_USER AS NOME_USUARIO
FROM
	TRANSACOES TRANS
JOIN
	USUARIOS USR ON USR.ID_USER = TRANS.USUARIO;

#5. Listar os nomes dos usuários e seus e-mails, ordenados pelo nome do usuário de forma alfabética.
SELECT
	nome_user AS nome,
    email
FROM
	usuarios
ORDER BY
	nome ASC;
    
#6. Mostrar as informações das contas bancárias que possuem saldo superior a 1000 reais.
DESC SALDOS;

SELECT
	CNT.*
FROM
	CONTAS CNT
JOIN
	SALDOS SL ON SL.AGENCIA = CNT.AGENCIA
    AND SL.CONTA = CNT.CONTA
    AND SL.COD_BANCO = CNT.COD_BANCO
WHERE
	SL.VALOR_SALDO > 1000;


#7. Listar os nomes dos usuários que realizaram transações com valor superior a 500 reais.
DESC USUARIOS;
DESC TRANSACOES;
SELECT
	DISTINCT usr.nome_user AS nome
FROM
	usuarios usr
JOIN
	transacoes trans ON trans.usuario = usr.id_user
WHERE
	trans.valor > 500;
    
#8. Exibir os detalhes das transações que foram realizadas em contas do banco "Banco Central".
SELECT
	TRANS.*
FROM
	transacoes trans
JOIN
	contas cnt ON cnt.AGENCIA = trans.AGENCIA
    AND cnt.COD_BANCO = trans.COD_BANCO
    AND cnt.CONTA = trans.CONTA
WHERE
	cnt.NOME_BNC = 'banco central'; # ou cnt.NOME_BNC LIKE '%banco central%'

#9. Mostrar os nomes dos usuários e seus respectivos telefones cadastrados, ordenados pelo nome do usuário de forma decrescente.
SELECT
	nome_user AS nome,
    telefone
FROM
	usuarios
ORDER BY
	nome DESC;

#10. Listar os nomes dos bancos e o total de contas cadastradas em cada um deles.
DESC CONTAS;
SELECT
	nome_bnc AS Banco,
	COUNT(conta) AS Quantidade_contas
FROM
	contas
GROUP BY
	banco;

#11. Para cada usuário, mostrar o nome do usuário e o saldo atual de sua conta bancária.
#ERRO: O ERRO ERA QUE A SESSÃO SÓ PERMITIA GROUP BY COMPLETO, NESSE CASO NÃO PRECISARIAMOS DE AGRUPAR O VALOR DE SALDO, APENAS AS INFORMAÇÕES DAS CONTAS
#PS.: CC1MC, EU ESTAVA CERTO! KKKK...

SET SESSION sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

SELECT 
	usr.nome_user as Usuario,
    sld.valor_saldo
FROM
	usuarios usr
JOIN
	transacoes trans ON trans.usuario = usr.id_user
JOIN
	contas cnt ON cnt.usuario = trans.usuario
JOIN
	saldos sld ON sld.agencia = cnt.agencia
    AND sld.cod_banco = cnt.cod_banco
    AND sld.conta = cnt.conta
GROUP BY
	sld.agencia, sld.conta,sld.cod_banco
HAVING
	MAX(sld.data_saldo);
    

#14. Exibir os detalhes das transações que foram realizadas em contas com saldo negativo.
SELECT T.*
FROM TRANSACOES T
JOIN
SALDOS S ON T.AGENCIA = S.AGENCIA
AND T.CONTA = S.CONTA
AND T.COD_BANCO = S.COD_BANCO
WHERE S.VALOR_SALDO < 0 ;


#15. Mostrar o valor total de transações de débito realizadas no último dia útil.
DESC SALDOS;
SELECT T.*
FROM TRANSACOES T
JOIN
SALDOS S ON T.AGENCIA = S.AGENCIA
AND T.CONTA = S.CONTA
AND T.COD_BANCO = S.COD_BANCO
WHERE T.NATUREZA = 'DEBITO' AND DATA_SALDO = CURDATE()-1;

