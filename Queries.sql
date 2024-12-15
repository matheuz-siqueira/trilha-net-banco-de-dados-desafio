-- 01 Buscar nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 02 Buscar nome e ano dos filmes, ordenados por ordem crescente pelo nomes
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

-- 03 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 04 Buscar os filmes lançados em 1997
SELECT  Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 05 Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 06 Buscar os filmes com a duração maior que 100 e menor que 150, ordenados pela duração em
-- ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
    WHERE Duracao > 100 AND Duracao < 150
    ORDER BY Duracao

-- 07 Buscar a quantidade de filmes lançados no ano, agrupando por ano ordenando pela duração
-- em ordem decrescente
SELECT Ano, COUNT(Duracao) Quantidade FROM Filmes
    GROUP BY Ano
    ORDER BY Quantidade DESC

-- 08 Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

-- 09 Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo
-- PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F'
    ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o gênero
SELECT Nome, Genero FROM Filmes
    INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11 Buscar o nome do filme e o gênero do tipo mistério
SELECT Nome, Genero FROM Filmes
    INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
    WHERE Generos.Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores trazendo o PrimeiroNome, UltimoNome e o Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel From Filmes
    INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
    INNER JOIN Atores  ON Atores.Id = ElencoFilme.IdAtor
