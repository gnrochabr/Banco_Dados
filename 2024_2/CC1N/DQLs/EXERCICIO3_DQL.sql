-- TABELA EXERCICIO 3 - CINEMA
# 1. Encontre o número total de espectadores cadastrados na tabela ESPECTADORES.
SELECT COUNT(*) FROM ESPECTADORES;

# 2. Exiba o número total de filmes disponíveis na tabela FILMES.
SELECT COUNT(*) FROM FILMES;

# 3. Liste o nome e a capacidade de todas as salas da tabela SALAS que têm capacidade maior que 100 lugares.
SELECT NOME, CAPACIDADE
FROM SALAS
WHERE CAPACIDADE > 100;

# 4. Encontre todos os espectadores que têm mais de 30 anos de idade, exibindo o nome e a data de nascimento. Considere a data atual como '2024-11-07'.
SELECT NOME_ESPEC, DATA_NASC
FROM ESPECTADORES
WHERE TIMESTAMPDIFF(YEAR,DATA_NASC,CURDATE()) > 30;

# 5. Calcule a duração média, em minutos, dos filmes cadastrados na tabela FILMES.
SHOW COLUMNS FROM FILMES;
SELECT CONCAT(ROUND(AVG(TEMPO_FILME),0),' MINUTOS') AS 'TEMPO MÉDIO' FROM FILMES;

# 6. Liste o nome e a duração de todos os filmes da tabela FILMES que têm mais de 100 minutos de duração.
SELECT NOME_FILME, TEMPO_FILME
FROM FILMES
WHERE TEMPO_FILME > 100;

# 7. Exiba o ID da sala e a quantidade de sessões agendadas para cada sala na tabela SESSOES.
SELECT S.ID_SALA, COUNT(*)
FROM SESSOES AS SS
JOIN SALAS AS S ON S.ID_SALA = SS.SALA_SESSAO
GROUP BY S.ID_SALA;

# 8. Encontre todos os espectadores na tabela ESPECTADORES cujo email termina com o domínio "example.com", exibindo o nome e o email.
SELECT * FROM ESPECTADORES
WHERE EMAIL_ESPEC LIKE '%EXAMPLE.COM';

# 9. Encontre o primeiro horário registrado para um ingresso na tabela INGRESSOS na data de '2024-11-03'.
SHOW COLUMNS FROM INGRESSOS;
SELECT HORA_INGRESSO
FROM INGRESSOS 
WHERE DATA_INGRESSO = '2024-11-03'
ORDER BY HORA_INGRESSO
LIMIT 1;

SELECT MIN(HORA_INGRESSO)
FROM INGRESSOS 
WHERE DATA_INGRESSO = '2024-11-03';

# 10. Exiba a data e o número total de ingressos vendidos em cada data disponível na tabela INGRESSOS.
SELECT DATA_INGRESSO, COUNT(*)
FROM INGRESSOS
GROUP BY DATA_INGRESSO;
