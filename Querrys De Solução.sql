-- Consulta 1
SELECT Nome,Ano FROM Filmes

-- Consulta 2

SELECT Nome,Ano, Duracao FROM Filmes ORDER BY Ano

-- Consulta 3

SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome='De Volta para o Futuro'

-- Consulta 4

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano=1997

-- Consulta 5

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > 2000

-- Consulta 6

SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 AND Duracao< 150 ORDER BY Duracao

-- Consulta 7

SELECT Ano, Count(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Count(Duracao) DESC

-- Consulta 8

SELECT * FROM Atores WHERE Genero='M'

-- Consulta 9

SELECT * FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome

-- Consulta 10

SELECT Nome,Genero FROM FilmesGenero INNER JOIN Filmes ON Filmes.Id=FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id=FilmesGenero.IdGenero

-- Consulta 11

SELECT Nome,Genero FROM FilmesGenero INNER JOIN Filmes ON Filmes.Id=FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id=FilmesGenero.IdGenero WHERE Genero='Mistério'

-- Consulta 12

SELECT Nome,PrimeiroNome,UltimoNome,Papel FROM ElencoFilme INNER JOIN Filmes ON Filmes.Id = ElencoFilme.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

