-- 1. Listar o nome e ano dos filmes
SELECT
    Nome,
    Ano
FROM Filmes;

-- 2. Listar nome, ano e duração dos filmes, ordenados pelo ano de lançamento (crescente)
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
ORDER BY Ano;

-- 3. Buscar "De Volta para o Futuro" e mostrar nome, ano e duração
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4. Listar filmes lançados em 1997
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5. Listar filmes lançados após o ano 2000
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6. Listar filmes com duração entre 100 e 150 minutos, ordenados pela duração (crescente)
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- 7. Agrupar filmes por ano, contar a quantidade de filmes lançados por ano,
-- ordenando pela quantidade (decrescente)
SELECT
    Ano,
    COUNT(1) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8. Listar atores do gênero masculino
SELECT
    *
FROM Atores
WHERE Genero = 'M';

-- 9. Listar atrizes, ordenando pelo primeiro nome
SELECT
    *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10. Mostrar o nome dos filmes e seus gêneros
SELECT
    f.Nome,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- 11. Listar nome dos filmes que pertencem ao gênero "Mistério"
SELECT
    f.Nome,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12. Listar nome dos filmes, atores (primeiro nome e último nome) e seus papéis
SELECT
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;
