

GO
CREATE FUNCTION checkLogins (@id VARCHAR(40),@senha VARCHAR(40)) RETURNS TABLE AS
	
	
	RETURN(SELECT * FROM PROJETO.SistemaAutenticacao
		   WHERE nomeUtilizador=@id AND senha=@senha)
GO

--Test logins
SELECT * FROM checkLogins('Henrique1234','palavrapasse');
