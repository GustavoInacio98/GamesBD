CREATE SCHEMA PROJETO;
GO

CREATE TABLE PROJETO.Plataforma(
	plataformaID	VARCHAR(20)				NOT NULL,
	nome			VARCHAR(40)				NOT NULL,

	PRIMARY KEY (plataformaID)
);

CREATE TABLE PROJETO.Publicador(
	publicadorID	VARCHAR(20)				NOT NULL,
	nome			VARCHAR(40)				NOT NULL,

	PRIMARY KEY (publicadorID)
);

CREATE TABLE PROJETO.Desenvolvedor(
	desenvolvedorID		VARCHAR(20)				NOT NULL,
	nome				VARCHAR(40)				NOT NULL,
	sede				VARCHAR(40)				NOT NULL,

	PRIMARY KEY (desenvolvedorID)
);

CREATE TABLE PROJETO.Jogo(
	jogoID					VARCHAR(20)					NOT NULL,
	categoria				VARCHAR(40)					NOT NULL,
	nome					VARCHAR(40)					NOT NULL,
	rating					INT CHECK(Rating > 0)		NOT NULL,
	especificacoesTecnicas	VARCHAR(120)				NOT NULL,
	dataLancamento			DATE						NOT NULL,
	preco					MONEY CHECK(preco >= 0)		NOT NULL,
	plataformaID			VARCHAR(20)					,
	publicadorID			VARCHAR(20)					,
	desenvolvedorID			VARCHAR(20)					,

	PRIMARY KEY (jogoID),
	FOREIGN KEY (plataformaID) REFERENCES PROJETO.Plataforma(plataformaID),
	FOREIGN KEY (publicadorID) REFERENCES PROJETO.Publicador(publicadorID),
	FOREIGN KEY (desenvolvedorID) REFERENCES PROJETO.Desenvolvedor(desenvolvedorID)
);

CREATE TABLE PROJETO.FormatoFisico(
	jogoID				VARCHAR(20)				NOT NULL,
	tipoFormato			VARCHAR(20)				NOT NULL,

	PRIMARY KEY (jogoID),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID)
);

CREATE TABLE PROJETO.FormatoDigital(
	jogoID				VARCHAR(20)				NOT NULL,
	codigoAcesso		VARCHAR(60)				NOT NULL,

	PRIMARY KEY (jogoID, codigoAcesso),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID)
);


CREATE TABLE PROJETO.Utilizador(
	nomeUtilizador		VARCHAR(40)				NOT NULL,
	nome				VARCHAR(40)				NOT NULL,
	email				VARCHAR(60)				NOT NULL,
	telemovel			INT						NOT NULL,
	regiao				VARCHAR(40)				NOT NULL,

	PRIMARY KEY (nomeUtilizador)
);

CREATE TABLE PROJETO.ListaDesejos(
	nomeUtilizador		VARCHAR(40)				NOT NULL,
	jogoID				VARCHAR(20)				NOT NULL,

	PRIMARY KEY (jogoID, nomeUtilizador),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);

CREATE TABLE PROJETO.SistemaAutenticacao(
	nomeUtilizador		VARCHAR(40)				NOT NULL,
	senha				VARCHAR(40)				NOT NULL,

	PRIMARY KEY (nomeUtilizador),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);

CREATE TABLE PROJETO.Estatisticas(
	jogoID			VARCHAR(20)				NOT NULL,
	nomeUtilizador	VARCHAR(40)				NOT NULL,
	nivel			INT						NOT NULL,
	horasJogadas	INT						NOT NULL,

	PRIMARY KEY (jogoID, nomeUtilizador),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);