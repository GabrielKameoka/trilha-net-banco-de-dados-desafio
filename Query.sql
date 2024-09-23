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
