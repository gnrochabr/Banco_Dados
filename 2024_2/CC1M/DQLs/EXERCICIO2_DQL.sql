-- TABELA EXERCICIO 2 - REDE SOCIAL
# 1. Encontre o número total de usuários cadastrados na tabela USUARIOS.
# VERSÃO ROOKIE
SELECT COUNT(*) FROM USUARIOS;
#VERSÃO PRO
SELECT CONCAT(COUNT(*),' CADASTROS') AS CADASTROS FROM USUARIOS;

# 2. Exiba o número total de grupos criados na tabela GRUPOS.
# VERSÃO ROOKIE
SELECT COUNT(*) FROM GRUPOS;
#VERSÃO PRO
SELECT CONCAT(COUNT(*),' GRUPOS') AS 'TOTAL DE GRUPOS' FROM GRUPOS;

# 3. Liste o nome e a descrição de todos os grupos cujo nome contém a palavra "Tech".
-- SHOW FIELDS FROM GRUPOS;
SELECT NOME_GRUPO, DESCRICAO_GRUPO
FROM GRUPOS
WHERE NOME_GRUPO LIKE '%TECH%';

# 4. Encontre todos os usuários que têm um sobrenome específico, como "Silva", exibindo o nome e o sobrenome.
-- SHOW COLUMNS FROM USUARIOS;
SELECT * 
FROM USUARIOS
WHERE SOBRENOME LIKE '%SILVA%';

# 5. Calcule a quantidade média de postagens feitas por cada usuário na tabela POSTAGENS.
-- SHOW COLUMNS FROM POSTAGENS;
SELECT USUARIO, ROUND(AVG(CONT),0) AS 'MEDIA DE POSTAGENS' #FAZ A MEDIA POR USUARIO
FROM(
		SELECT U.NOME_USUARIO AS USUARIO, COUNT(*) AS CONT #FAZ A QUANTIDADE POR USUARIO
		FROM POSTAGENS AS P
		JOIN USUARIOS AS U ON P.USUARIO = U.ID_USUARIO
		GROUP BY USUARIO
	) AS QUANTIDADE_DE_POSTS
GROUP BY USUARIO;

# 6. Liste o ID e o texto de todos os comentários que foram feitos após a data '2024-01-01'.
-- SHOW COLUMNS FROM COMENTARIOS;
SELECT ID_COMENTARIO, TEXTO
FROM COMENTARIOS
WHERE DATE(DATAHORA) > '2024-01-01';

# 7. Exiba o ID do grupo e a quantidade de usuários em cada grupo na tabela USUARIOS_GRUPOS.
-- SHOW FIELDS FROM USUARIOS_GRUPOS;
SELECT UG_GRUPO AS 'ID DO GRUPO', COUNT(UG_USUARIO) AS 'QUANTIDADE'
FROM USUARIOS_GRUPOS
GROUP BY UG_GRUPO;

# 8. Encontre todos os usuários na tabela USUARIOS cujo email termina com o domínio "mail.com", exibindo o nome e o email.
-- SHOW COLUMNS FROM USUARIOS;
SELECT *
FROM USUARIOS
WHERE EMAIL LIKE '%MAIL.COM';

# 9. Exiba a data e a quantidade de postagens realizadas em cada data na tabela POSTAGENS.
-- SHOW COLUMNS FROM POSTAGENS;
SELECT DATE(DATA_HORA),COUNT(*)
FROM POSTAGENS
GROUP BY DATE(DATA_HORA);

# 10. Encontre o total de seguidores que cada usuário possui na tabela SEGUIDORES, exibindo o ID do usuário e a contagem de seguidores.
-- SHOW FIELDS FROM USUARIOS_SEGUIDORES;
SELECT US_USUARIO AS USUARIO, COUNT(*) AS 'TOTAL DE SEGUIDORES'
FROM USUARIOS_SEGUIDORES
GROUP BY US_USUARIO;
