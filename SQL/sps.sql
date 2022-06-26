
--new jogo fisico
GO
CREATE PROCEDURE newJogoFisico( @jogoID VARCHAR(20), @categoria VARCHAR(40), @nome VARCHAR(40), @rating INT, @especificacoesTecnicas VARCHAR(120), @dataLancamento DATE, @preco MONEY, @plataformaID VARCHAR(20), @publicadorID VARCHAR(20), @desenvolvedorID VARCHAR(20), @tipoFormato VARCHAR(20))
AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.Jogo VALUES(@jogoID, @categoria, @nome, @rating, @especificacoesTecnicas, @dataLancamento, @preco, @plataformaID, @publicadorID, @desenvolvedorID);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
	
END

BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.FormatoFisico VALUES(@jogoID, @tipoFormato);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END
go

/* Teste */
--EXEC newJogoFisico 'JOGO6', 'MMO', 'league of legends', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'CD';
--SELECT * FROM PROJETO.Jogo;
--SELECT * FROM PROJETO.FormatoFisico;


--new jogo Digital
GO
CREATE PROCEDURE newJogoDigital( @jogoID VARCHAR(20), @categoria VARCHAR(40), @nome VARCHAR(40), @rating INT, @especificacoesTecnicas VARCHAR(120), @dataLancamento DATE, @preco MONEY, @plataformaID VARCHAR(20), @publicadorID VARCHAR(20), @desenvolvedorID VARCHAR(20), @codigoAcesso VARCHAR(60))
AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.Jogo VALUES(@jogoID, @categoria, @nome, @rating, @especificacoesTecnicas, @dataLancamento, @preco, @plataformaID, @publicadorID, @desenvolvedorID);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END

BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.FormatoDigital VALUES(@jogoID, @codigoAcesso);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END
go

/* Teste */
--EXEC newJogoDigital'JOGO7', 'ação', 'BATMAN', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'AJHD-SDCH-SDHB-1273';
--SELECT * FROM PROJETO.Jogo;
--SELECT * FROM PROJETO.FormatoDigital;

--new plataforma
GO
CREATE PROCEDURE newPlataforma( @plataformaID VARCHAR(20), @nome VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Plataforma VALUES(@plataformaID, @nome);
END


go
/* Teste */
--EXEC newPlataforma 'platGB', 'GameBoy';
--SELECT * FROM PROJETO.Plataforma;


--new publicador
GO
CREATE PROCEDURE newPublicador( @publicadorID VARCHAR(20), @nome VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Publicador VALUES(@publicadorID, @nome);
END


go
/* Teste */
--EXEC newPublicador'pubRT', 'Riot Games';
--SELECT * FROM PROJETO.Publicador;


--new desenvolvedor
GO
CREATE PROCEDURE newDesenvolvedor( @desenvolvedorID VARCHAR(20), @nome VARCHAR(40), @sede VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Desenvolvedor VALUES(@desenvolvedorID, @nome, @sede);
END


go
/* Teste */
--EXEC newDesenvolvedor 'devRT', 'Riot Games', 'West Los Angeles, Califórnia, EUA';
--SELECT * FROM PROJETO.Desenvolvedor;



--new utilizador
GO
CREATE PROCEDURE newUtilizador(@nomeUtilizador VARCHAR(40), @nome VARCHAR(40), @email VARCHAR(60), @telemovel INT, @regiao VARCHAR(40), @senha	VARCHAR(40))

AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.Utilizador VALUES(@nomeUtilizador, @nome, @email, @telemovel, @regiao);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END

BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.SistemaAutenticacao VALUES(@nomeUtilizador, @senha);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END
go

/* Teste */
--EXEC newUtilizador 'Acácio Rodrigues', 'NickName', 'randomemail@email.com', 912456512, 'America Norte', 'palavrapasse';
--SELECT * FROM PROJETO.Utilizador;
--SELECT * FROM PROJETO.SistemaAutenticacao;


--new in lista de desejos
GO
CREATE PROCEDURE addListaDesejos(@nomeUtilizador VARCHAR(40), @jogoID VARCHAR(20))

AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.ListaDesejos VALUES(@nomeUtilizador, @jogoID);
		PRINT 'Sucess'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH	
	
END

go

/* Teste */
--EXEC addListaDesejos 'xXReaperXx', 'JOGO1';
--SELECT * FROM PROJETO.ListaDesejos;


GO
CREATE PROCEDURE alterUtilizador(@nomeUtilizador VARCHAR(40), @nome VARCHAR(40), @email VARCHAR(60), @telemovel INT, @regiao VARCHAR(40), @senha VARCHAR(40))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @nomeUtilizador_old as VARCHAR(40);
			DECLARE @nome_old as VARCHAR(40);
			DECLARE @email_old as VARCHAR(60);
			DECLARE @telemovel_old as INT;
			DECLARE @regiao_old as VARCHAR(60);
			DECLARE @senha_old VARCHAR(40);
			

			SELECT @nomeUtilizador_old = nomeUtilizador, @nome_old = nome, @email_old = email,  @telemovel_old =  telemovel, @regiao_old = regiao
			FROM PROJETO.Utilizador
			WHERE PROJETO.Utilizador.nomeUtilizador = @nomeUtilizador;

			SELECT @senha_old = senha
			FROM PROJETO.SistemaAutenticacao
			WHERE PROJETO.SistemaAutenticacao.nomeUtilizador = @nomeUtilizador;


			IF @nome_old != @nome
			BEGIN
				UPDATE PROJETO.Utilizador SET nome = @nome WHERE nome=@nome_old;
				PRINT 'nome updated with success'
			END

			IF @email_old != @email
			BEGIN
				UPDATE PROJETO.Utilizador SET email = @email WHERE email=@email_old;
				PRINT 'email updated with success'
			END

			IF @telemovel_old != @telemovel
			BEGIN
				UPDATE PROJETO.Utilizador SET telemovel = @telemovel WHERE telemovel=@telemovel_old;
				PRINT 'telemovel updated with success'
			END

			IF @regiao_old != @regiao
			BEGIN
				UPDATE PROJETO.Utilizador SET regiao = @regiao WHERE regiao=@regiao_old;
				PRINT 'regiao updated with success'
			END

			IF @senha_old != @senha
			BEGIN
				UPDATE PROJETO.SistemaAutenticacao SET senha = @senha WHERE senha=@senha_old;
				PRINT 'senha updated with success'
			END
			

		COMMIT
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		ROLLBACK
	END CATCH
END

go
/* Teste */

--EXEC alterUtilizador 'Henrique1234', 'x', 'x@email.com', 910000000, 'Australia', 'x';
--SELECT * FROM PROJETO.Utilizador;
--SELECT * FROM PROJETO.SistemaAutenticacao;




GO
CREATE PROCEDURE DeleteFromListaDesejos(@nomeUtilizador VARCHAR(40), @jogoID VARCHAR(20))
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM PROJETO.ListaDesejos WHERE nomeUtilizador=@nomeUtilizador and jogoID=@jogoID; 
			PRINT 'Sucess'
		COMMIT
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		ROLLBACK
	END CATCH
END

go
/* Teste */
--EXEC DeleteFromListaDesejos 'Henrique1234', 'JOGO1';
--SELECT * FROM PROJETO.ListaDesejos;


GO
CREATE PROCEDURE AddToListaDesejos(@nomeUtilizador VARCHAR(40), @jogoID VARCHAR(20))
AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.ListaDesejos VALUES(@nomeUtilizador, @jogoID);
		PRINT 'Success'
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END


go
/* Teste */

--EXEC AddToListaDesejos 'Henrique1234', 'JOGO4';
--SELECT * FROM PROJETO.ListaDesejos;


