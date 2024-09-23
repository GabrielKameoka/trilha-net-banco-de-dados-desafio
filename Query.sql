--Objetivo 1 - Buscar o nome e ano dos filmes
SELECT * FROM Filmes

--Objetivo 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes 
ORDER BY Ano

--Objetivo 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Objetivo 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997

--Objetivo 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano > 2000
ORDER BY Ano

--Objetivo 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--Objetivo 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Objetivo 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'

--Objetivo 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--Objetivo 10 - Buscar o nome do filme e o gênero
SELECT Nome, Genero FROM FIlmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--Objetivo 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero FROM FIlmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--Objetivo 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id