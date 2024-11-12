-- TABELA EXERCICIO 2 - REDE SOCIAL
# 1. Encontre o número total de usuários cadastrados na tabela USUARIOS.
SELECT COUNT(*) FROM USUARIOS;

# 2. Exiba o número total de grupos criados na tabela GRUPOS.
SELECT COUNT(*) FROM GRUPOS;

# 3. Liste o nome e a descrição de todos os grupos cujo nome contém a palavra "Tech".
SELECT NOME_GRUPO, DESCRICAO_GRUPO
FROM GRUPOS
WHERE NOME_GRUPO LIKE '%TECH%';

# 4. Encontre todos os usuários que têm um sobrenome específico, como "Silva", exibindo o nome e o sobrenome.
SELECT NOME_USUARIO, SOBRENOME
FROM USUARIOS
WHERE SOBRENOME LIKE '%SILVA%';

# 5. Calcule a quantidade média de postagens feitas por cada usuário na tabela POSTAGENS.
SELECT CICRANO, AVG(CONTAGEM) AS MEDIA 
FROM(
	SELECT U.NOME_USUARIO AS CICRANO, COUNT(*) AS CONTAGEM 
	FROM POSTAGENS AS P
	JOIN USUARIOS AS U ON P.USUARIO = U.ID_USUARIO
	GROUP BY NOME_USUARIO
	) AS SUBQUERY
GROUP BY CICRANO;

# 6. Liste o ID e o texto de todos os comentários que foram feitos após a data '2024-01-01'.
SELECT ID_COMENTARIO,TEXTO 
FROM COMENTARIOS 
WHERE DATAHORA > '2024-01-01';

# 7. Exiba o ID do grupo e a quantidade de usuários em cada grupo na tabela USUARIOS_GRUPOS.
SELECT UG_GRUPO,COUNT(*) 
FROM USUARIOS_GRUPOS 
GROUP BY UG_GRUPO;

# 8. Encontre todos os usuários na tabela USUARIOS cujo email termina com o domínio "mail.com", exibindo o nome e o email.
SELECT * 
FROM USUARIOS
WHERE EMAIL LIKE '%MAIL.COM';

# 9. Exiba a data e a quantidade de postagens realizadas em cada data na tabela POSTAGENS.
SELECT DATA_HORA, COUNT(*)
FROM POSTAGENS
GROUP BY DATA_HORA;

# 10. Encontre o total de seguidores que cada usuário possui na tabela USUARIOS, exibindo o ID do usuário e a contagem de seguidores.
SHOW COLUMNS FROM USUARIOS_SEGUIDORES;
SELECT U.NOME_USUARIO, COUNT(*) #PUXA O NOME DO USUARIO E A QUANTIDADE DE SEGUIDORES
FROM USUARIOS_SEGUIDORES AS US #TABELA SEGUIDORES
JOIN USUARIOS AS U ON U.ID_USUARIO = US.US_USUARIO #JOIN COM A TABELA USUARIOS PARA TRAZER OS NOMES
GROUP BY U.NOME_USUARIO; #AGRUPAR POR NOME
