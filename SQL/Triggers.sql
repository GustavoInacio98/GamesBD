DROP TRIGGER IF EXISTS DeleteJogo;
go
create Trigger DeleteJogo on PROJETO.Jogo instead of Delete
as
	declare @id as VARCHAR(20);
	select @id=jogoID from deleted;
	delete from PROJETO.Estatisticas where jogoID=@id;
	delete from PROJETO.FormatoDigital where jogoID=@id;
	delete from PROJETO.FormatoFisico where jogoID=@id;
	delete from PROJETO.ListaDesejos where jogoID=@id;
	delete from PROJETO.Jogo where jogoID=@id;


DROP TRIGGER IF EXISTS DeleteUtilizador;
go
create Trigger DeleteUtilizador on PROJETO.Utilizador instead of Delete
as
	declare @id as VARCHAR(40);
	select @id=nomeUtilizador from deleted;
	delete from PROJETO.ListaDesejos where nomeUtilizador=@id;
	delete from PROJETO.Estatisticas where nomeUtilizador=@id;
	delete from PROJETO.SistemaAutenticacao where nomeUtilizador=@id;
	delete from PROJETO.Utilizador where nomeUtilizador=@id;


DROP TRIGGER IF EXISTS DeleteUtilizador;
go
create Trigger DeletePlataforma on PROJETO.Plataforma instead of Delete
as
	declare @id as VARCHAR(20);
	select @id=plataformaID from deleted;
	update PROJETO.Jogo set plataformaID=null where plataformaID=@id;
	delete from PROJETO.Plataforma where plataformaID=@id;


DROP TRIGGER IF EXISTS DeleteUtilizador;
go
create Trigger DeletePublicador on PROJETO.Publicador instead of Delete
as
	declare @id as VARCHAR(20);
	select @id=publicadorID from deleted;
	update PROJETO.Jogo set publicadorID=null where publicadorID=@id;
	delete from PROJETO.Publicador where publicadorID=@id;

DROP TRIGGER IF EXISTS DeleteUtilizador;
go
create Trigger DeleteDesenvolvedor on PROJETO.Desenvolvedor instead of Delete
as
	declare @id as VARCHAR(20);
	select @id=desenvolvedorID from deleted;
	update PROJETO.Jogo set desenvolvedorID=null where desenvolvedorID=@id;
	delete from PROJETO.Desenvolvedor where desenvolvedorID=@id;
	

    