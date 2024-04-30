 --1
SELECT Nome, Ano FROM Filmes;
 --2
SELECT Nome, Ano FROM Filmes ORDER BY ANO ASC;
 --3
SELECT Nome, Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
 --4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;
 --5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;
 --6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;
 --7
SELECT Ano, Count(1) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
 --8
SELECT PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'
 --9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;
 --10
SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
 --11
SELECT filmes.Nome,  genero.Genero FROM Filmes filmes INNER JOIN FilmesGenero filmesGenero ON filmes.Id = filmesGenero.IdFilme INNER JOIN Generos genero ON filmesGenero.IdGenero =  genero.Id WHERE  genero.Genero= 'Mistério' 
--12
SELECT  filmes.Nome, atores.PrimeiroNome, atores.UltimoNome, elencoFilme.Papel FROM Filmes filmes INNER JOIN ElencoFilme elencoFilme ON filmes.Id = elencoFilme.IdFilme INNER JOIN Atores atores ON elencoFilme.IdAtor =  atores.Id


