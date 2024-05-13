-- Atualizar o email do usuário com ID 1
UPDATE USUARIOS
SET EMAIL = 'novo_email@example.com'
WHERE ID_USUARIO = 1;

-- Atualizar o sobrenome de todos os usuários com nome "Bruno"
UPDATE USUARIOS
SET SOBRENOME = 'Silveira'
WHERE NOME_USUARIO = 'Bruno';

-- Atualizar a descrição do grupo com ID 1
UPDATE GRUPOS
SET DESCRICAO = 'Compartilhamento de músicas, eventos e discussões'
WHERE ID_GRUPO = 1;

-- Atualizar o nome do grupo com descrição "Filmes e discussões sobre cinema"
UPDATE GRUPOS
SET NOME_GRUPO = 'Cinefilia'
WHERE DESCRICAO = 'Filmes e discussões sobre cinema';

-- Atualizar o texto da postagem com ID 1
UPDATE POSTAGENS
SET TEXTO = 'Que dia maravilhoso!'
WHERE ID_POST = 1;

-- Atualizar a data e hora de todas as postagens do usuário com ID 1
UPDATE POSTAGENS
SET DATA_HORA = '2024-05-13 11:00:00'
WHERE USUARIO = 1;

-- Atualizar o texto do comentário com ID 1
UPDATE COMENTARIOS
SET TEXTO = 'Que foto incrível, Alice!'
WHERE ID_COMENTARIO = 1;

-- Atualizar a data e hora de todos os comentários feitos por usuários do grupo com ID 5
UPDATE COMENTARIOS
SET DATAHORA = '2024-05-13 14:00:00'
WHERE USUARIO IN (SELECT USUARIO FROM USUARIOS_GRUPOS WHERE GRUPO = 5);

-- Atualizar o ID do seguidor do usuário com ID 1
UPDATE SEGUIDORES_USUARIOS
SET SEGUIDOR = 10
WHERE USUARIO = 1;

-- Atualizar o ID do usuário seguido pelo usuário com ID 2
UPDATE SEGUIDORES_USUARIOS
SET USUARIO = 5
WHERE SEGUIDOR = 2;

-- Atualizar o ID do grupo para o usuário com ID 1
UPDATE USUARIOS_GRUPOS
SET GRUPO = 15
WHERE USUARIO = 1;

-- Atualizar o ID do usuário para o grupo com ID 5
UPDATE USUARIOS_GRUPOS
SET USUARIO = 4
WHERE GRUPO = 5;
