-- Excluir a associação do usuário 2 ao grupo 3
DELETE FROM USUARIOS_GRUPOS
WHERE USUARIO = 2 AND GRUPO = 3;

-- Excluir todas as associações de usuários ao grupo 7
DELETE FROM USUARIOS_GRUPOS
WHERE GRUPO = 7;

-- Excluir a relação de seguidor entre os usuários 3 e 9
DELETE FROM SEGUIDORES_USUARIOS
WHERE USUARIO = 3 AND SEGUIDOR = 9;

-- Excluir todas as relações de seguidor do usuário com ID 6
DELETE FROM SEGUIDORES_USUARIOS
WHERE USUARIO = 6 OR SEGUIDOR = 6;

-- Excluir o comentário com ID 2
DELETE FROM COMENTARIOS
WHERE ID_COMENTARIO = 2;

-- Excluir todos os comentários feitos pelo usuário com ID 4
DELETE FROM COMENTARIOS
WHERE USUARIO = 4;

-- Excluir a postagem com ID 2
DELETE FROM POSTAGENS
WHERE ID_POST = 2;

-- Excluir todas as postagens do usuário com ID 3
DELETE FROM POSTAGENS
WHERE USUARIO = 3;

-- Excluir o grupo com ID 2
DELETE FROM GRUPOS
WHERE ID_GRUPO = 2;

-- Excluir todos os grupos com descrição contendo "Discussões"
DELETE FROM GRUPOS
WHERE DESCRICAO LIKE '%Discussões%';

-- Excluir usuário com ID 2
DELETE FROM USUARIOS
WHERE ID_USUARIO = 2;

-- Excluir todos os usuários com sobrenome "Pereira"
DELETE FROM USUARIOS
WHERE SOBRENOME = 'Pereira';
