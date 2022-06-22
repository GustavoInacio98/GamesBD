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
EXEC newJogoFisico 'JOGO6', 'MMO', 'league of legends', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'CD';
SELECT * FROM PROJETO.Jogo;
SELECT * FROM PROJETO.FormatoFisico;


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
EXEC newJogoDigital'JOGO7', 'ação', 'BATMAN', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'AJHD-SDCH-SDHB-1273';
SELECT * FROM PROJETO.Jogo;
SELECT * FROM PROJETO.FormatoDigital;

--new plataforma
GO
CREATE PROCEDURE newPlataforma( @plataformaID VARCHAR(20), @nome VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Plataforma VALUES(@plataformaID, @nome);
END


go
/* Teste */
EXEC newPlataforma 'platGB', 'GameBoy';
SELECT * FROM PROJETO.Plataforma;


--new publicador
GO
CREATE PROCEDURE newPublicador( @publicadorID VARCHAR(20), @nome VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Publicador VALUES(@publicadorID, @nome);
END


go
/* Teste */
EXEC newPublicador'pubRT', 'Riot Games';
SELECT * FROM PROJETO.Publicador;


--new developer
GO
CREATE PROCEDURE newDesenvolvedor( @desenvolvedorID VARCHAR(20), @nome VARCHAR(40), @sede VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Desenvolvedor VALUES(@desenvolvedorID, @nome, @sede);
END


go
/* Teste */
EXEC newDesenvolvedor 'devRT', 'Riot Games', 'West Los Angeles, Califórnia, EUA';
SELECT * FROM PROJETO.Desenvolvedor;

--new developer
GO
CREATE PROCEDURE newDesenvolvedor( @desenvolvedorID VARCHAR(20), @nome VARCHAR(40), @sede VARCHAR(40))
AS
BEGIN	
	INSERT INTO PROJETO.Desenvolvedor VALUES(@desenvolvedorID, @nome, @sede);
END


go
/* Teste */
EXEC newDesenvolvedor 'devRT', 'Riot Games', 'West Los Angeles, Califórnia, EUA';
SELECT * FROM PROJETO.Desenvolvedor;


--new utilizador
GO
CREATE PROCEDURE newUtilizador(@nomeUtilizador VARCHAR(40), @nome VARCHAR(40), @email VARCHAR(60), @telemovel INT, @regiao VARCHAR(40), @senha	VARCHAR(40))

AS
BEGIN
	BEGIN TRY
		INSERT INTO PROJETO.Utilizador VALUES(@nomeUtilizador, @nome, @nome, @email, @telemovel, @regiao);
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
EXEC newUtilizador 'Acácio Rodrigues', 'NickName', 'randomemail@email.com', 912456512, 'America Norte', 'palavrapasse';
SELECT * FROM PROJETO.Utilizador;
SELECT * FROM PROJETO.SistemaAutenticacao;