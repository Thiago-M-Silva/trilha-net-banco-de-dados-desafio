-- Exercicio 1
SELECT Nome, Ano FROM Filmes;

-- Exercicio 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- Exercicio 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- Exercicio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- Exercicio 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- Exercicio 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Exercicio 7
SELECT Ano, COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;


-- Exercicio 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- Exercicio 9
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Exercicio 10
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg ON (f.Id = fg.IdFilme) 
	INNER JOIN Generos g ON (fg.IdGenero = g.ID) 

-- Exercicio 11
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg ON (f.Id = fg.IdFilme) 
	INNER JOIN Generos g ON (fg.IdGenero = g.ID) 
WHERE g.Genero = 'Mistério';

-- Exercicio 12
SELECT f.nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
	INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
	INNER JOIN Atores a ON e.IdAtor = a.Id
