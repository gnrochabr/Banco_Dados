--
```sql
-- Inserindo usuários
INSERT INTO USUARIOS (ID_USUARIO, NOME_USUARIO, SOBRENOME, EMAIL) VALUES
(1, 'Alice', 'Silva', 'alice@mail.com'),
(2, 'Bob', 'Oliveira', 'bob@mail.com'),
(3, 'Carol', 'Santos', 'carol@mail.com'),
(4, 'Dave', 'Pereira', 'dave@mail.com'),
(5, 'Eve', 'Costa', 'eve@mail.com'),
(6, 'Frank', 'Souza', 'frank@mail.com'),
(7, 'Grace', 'Almeida', 'grace@mail.com');

-- Inserindo grupos
INSERT INTO GRUPOS (ID_GRUPO, NOME_GRUPO, DESCRICAO_GRUPO) VALUES
(1, 'Tech Enthusiasts', 'Grupo para amantes de tecnologia'),
(2, 'Music Lovers', 'Grupo para fãs de música'),
(3, 'Nature Explorers', 'Grupo para exploradores da natureza'),
(4, 'Fitness Fanatics', 'Grupo para apaixonados por fitness'),
(5, 'Foodies', 'Grupo para entusiastas de gastronomia'),
(6, 'Book Club', 'Grupo para leitores ávidos'),
(7, 'Art Aficionados', 'Grupo para apreciadores de arte');

-- Inserindo postagens
INSERT INTO POSTAGENS (ID_POST, TEXTO, IMAGEM, DATA_HORA, USUARIO) VALUES
(1, 'Explorando novas tecnologias!', NULL, '2024-10-01 10:00:00', 1),
(2, 'Meu livro favorito do mês.', NULL, '2024-10-02 12:15:00', 2),
(3, 'A música é a linguagem da alma.', NULL, '2024-10-03 15:30:00', 3),
(4, 'Saúde é riqueza!', NULL, '2024-10-04 09:00:00', 4),
(5, 'Preparando um prato delicioso.', NULL, '2024-10-05 18:20:00', 5),
(6, 'Arte abstrata é fascinante.', NULL, '2024-10-06 13:45:00', 6),
(7, 'Aventuras na natureza.', NULL, '2024-10-07 11:30:00', 7);

-- Inserindo comentários
INSERT INTO COMENTARIOS (ID_COMENTARIO, TEXTO, DATAHORA, USUARIO, POST) VALUES
(1, 'Interessante!', '2024-10-01 11:00:00', 2, 1),
(2, 'Muito bom!', '2024-10-02 13:00:00', 3, 2),
(3, 'Concordo totalmente.', '2024-10-03 16:00:00', 4, 3),
(4, 'Ótima postagem!', '2024-10-04 10:00:00', 5, 4),
(5, 'Vou tentar também!', '2024-10-05 19:00:00', 6, 5),
(6, 'Adoro esse estilo.', '2024-10-06 14:00:00', 7, 6),
(7, 'Muito inspirador.', '2024-10-07 12:00:00', 1, 7);

-- Inserindo usuários em grupos
INSERT INTO USUARIOS_GRUPOS (USUARIO, GRUPO) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- Inserindo seguidores
INSERT INTO SEGUIDORES (USUARIO, SEGUIDOR) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 1);
```
