
--Validar o login
GO
CREATE FUNCTION checkLogins (@id VARCHAR(40),@senha VARCHAR(40)) RETURNS TABLE AS
	
	
	RETURN(SELECT * FROM PROJETO.SistemaAutenticacao
		   WHERE nomeUtilizador=@id AND senha=@senha)
GO

--Test
--SELECT * FROM checkLogins('Henrique1234','palavrapasse');




--Ver info de utilizador (check profile)
GO
CREATE FUNCTION checkProfile (@nomeUtilizador VARCHAR(40)) RETURNS TABLE AS
	
	RETURN(SELECT * FROM PROJETO.Utilizador
		   WHERE nomeUtilizador=@nomeUtilizador)
GO

--Test 
--SELECT * FROM checkProfile('Henrique1234');






--Ver rankings
GO
CREATE FUNCTION checkEstatisticas (@jogoID VARCHAR(20)) RETURNS TABLE AS
	
	RETURN(SELECT * FROM PROJETO.Estatisticas
		   WHERE jogoID=@jogoID)
GO

--Test
--SELECT * FROM checkEstatisticas('JOGO5');



----Ver todos jogos
--GO
--CREATE FUNCTION getAllGames () RETURNS TABLE AS
	
--	RETURN( SELECT Jogo.nome, Plataforma.nome
--			FROM PROJETO.Jogo
--			JOIN PROJETO.Plataforma ON Jogo.jogoID=Plataforma.plataformaID)
--GO

----Test
--SELECT * FROM getAllGames();
