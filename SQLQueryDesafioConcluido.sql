
	--1
SELECT Nome, Ano FROM Filmes

	--2

SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano ASC;

	--3

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro';

	--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'; 

	--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > '2000'; 

	--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

	--7
SELECT Ano, COUNT(*) AS Quantidade, 
SUM(duracao) AS duracaototal
FROM Filmes
GROUP BY Ano
ORDER BY duracaototal DESC;

	--8
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M';

	--9
SELECT Id,PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

	--10
SELECT f.Nome AS Filme, g.Genero AS genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN generos g ON fg.IdGenero= g.id;

	--11
SELECT f.Nome AS Filme, g.Genero AS genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN generos g ON fg.IdGenero= g.id
WHERE g.Genero = 'Mistério';

	--12
SELECT f.nome AS filme, 
       a.PrimeiroNome, 
       a.UltimoNome, 
       ef.Papel
FROM filmes f
JOIN ElencoFilme ef ON f.id = ef.IdFilme
JOIN atores a ON ef.IdAtor = a.id;

