CREATE SCHEMA PROJETO;
GO

CREATE TABLE PROJETO.Plataforma(
	plataformaID	VARCHAR					NOT NULL,
	nome			VARCHAR					NOT NULL,

	PRIMARY KEY (plataformaID)
);

CREATE TABLE PROJETO.Publicador(
	publicadorID	VARCHAR					NOT NULL,
	nome			VARCHAR					NOT NULL,

	PRIMARY KEY (publicadorID)
);

CREATE TABLE PROJETO.Desenvolvedor(
	desenvolvedorID		VARCHAR					NOT NULL,
	nome				VARCHAR					NOT NULL,
	sede				VARCHAR					NOT NULL,

	PRIMARY KEY (desenvolvedorID)
);

CREATE TABLE PROJETO.Jogo(
	jogoID					VARCHAR					NOT NULL,
	categoria				VARCHAR					NOT NULL,
	nome					VARCHAR					NOT NULL,
	rating					INT CHECK(Rating > 0)	NOT NULL,
	especificacoesTecnicas	VARCHAR					NOT NULL,
	dataLancamento			DATE					NOT NULL,
	preco					MONEY CHECK(preco >= 0) NOT NULL,
	plataformaID			VARCHAR					NOT NULL,
	publicadorID			VARCHAR					NOT NULL,
	desenvolvedorID			VARCHAR					NOT NULL,

	PRIMARY KEY (jogoID),
	FOREIGN KEY (plataformaID) REFERENCES PROJETO.Plataforma(plataformaID),
	FOREIGN KEY (publicadorID) REFERENCES PROJETO.Publicador(publicadorID),
	FOREIGN KEY (desenvolvedorID) REFERENCES PROJETO.Desenvolvedor(desenvolvedorID)
);

CREATE TABLE PROJETO.FormatoFisico(
	jogoID				VARCHAR					NOT NULL,
	tipoFormato			VARCHAR					NOT NULL,

	PRIMARY KEY (jogoID),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID)
);

CREATE TABLE PROJETO.FormatoDigital(
	jogoID				VARCHAR					NOT NULL,
	codigoAcesso		VARCHAR					NOT NULL,

	PRIMARY KEY (jogoID, codigoAcesso),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID)
);


CREATE TABLE PROJETO.Utilizador(
	nomeUtilizador		VARCHAR					NOT NULL,
	nome				VARCHAR					NOT NULL,
	email				VARCHAR					NOT NULL,
	telemovel			INT						NOT NULL,
	regiao				VARCHAR					NOT NULL,

	PRIMARY KEY (nomeUtilizador)
);

CREATE TABLE PROJETO.ListaDesejos(
	nomeUtilizador		VARCHAR					NOT NULL,
	jogoID				VARCHAR					NOT NULL,

	PRIMARY KEY (jogoID, nomeUtilizador),
	FOREIGN KEY (jogoID) REFERENCES PROJETO.Jogo(jogoID),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);

CREATE TABLE PROJETO.SistemaAutenticacao(
	nomeUtilizador		VARCHAR					NOT NULL,
	senha				VARCHAR					NOT NULL,

	PRIMARY KEY (nomeUtilizador),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);

CREATE TABLE PROJETO.Statisticas(
	jogoID			VARCHAR					NOT NULL,
	nomeUtilizador	VARCHAR					NOT NULL,

	PRIMARY KEY (nomeUtilizador),
	FOREIGN KEY (nomeUtilizador) REFERENCES PROJETO.Utilizador(nomeUtilizador)
);