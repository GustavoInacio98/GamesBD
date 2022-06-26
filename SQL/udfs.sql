
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







create function getAllGames() returns Table
 as
	return(select j.jogoID, categoria, j.nome, rating, j.especificacoesTecnicas, dataLancamento, preco, nome_plat, nome_pub, nome_dev
			from PROJETO.Jogo as j 
				join PROJETO.Plataforma as x1 on j.plataformaID = x1.plataformaID
				join PROJETO.Publicador as x2 on j.publicadorID = x2.publicadorID
				join PROJETO.Desenvolvedor as x3 on j.desenvolvedorID = x3.desenvolvedorID
			)
go

----Test
--SELECT * FROM getAllGames();


create function getListaDesejosByUser(@nomeUtilizador VARCHAR(40)) returns Table
 as
	return(select ld.jogoID, categoria, j.nome, rating, j.especificacoesTecnicas, dataLancamento, preco, ld.nomeUtilizador 
			from PROJETO.ListaDesejos as ld 
				join PROJETO.Jogo as j on ld.jogoID = j.jogoID

			where nomeUtilizador = @nomeUtilizador)
go

----Test
--SELECT * FROM getListaDesejosByUser('Henrique1234');