
--TESTE TRIGGERS DELETE plataforma, publicador, desenvolvedor

--DELETE FROM projeto.Plataforma WHERE plataformaID = 'platMO';
--DELETE FROM projeto.Publicador WHERE publicadorID = 'pubTC';
--DELETE FROM projeto.Desenvolvedor WHERE desenvolvedorID = 'devNH';
--select * from projeto.Jogo
--select * from projeto.Plataforma
--select * from projeto.Publicador
--select * from projeto.Desenvolvedor
--------------------------------------------------------------

--TESTE STORED PROCEDURES


--new jogo fisico
/* Teste */
--EXEC newJogoFisico 'JOGO6', 'MMO', 'league of legends', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'CD';
--SELECT * FROM PROJETO.Jogo;
--SELECT * FROM PROJETO.FormatoFisico;




--new jogo Digital
/* Teste */
--EXEC newJogoDigital'JOGO7', 'ação', 'BATMAN', 70, '8GB space, 2GB ram', '2004-03-25', 0, 'platXB', 'pubNM', 'devTA', 'AJHD-SDCH-SDHB-1273';
--SELECT * FROM PROJETO.Jogo;
--SELECT * FROM PROJETO.FormatoDigital;




--new plataforma
/* Teste */
--EXEC newPlataforma 'platGB', 'GameBoy';
--SELECT * FROM PROJETO.Plataforma;


--new publicador
/* Teste */
--EXEC newPublicador'pubRT', 'Riot Games';
--SELECT * FROM PROJETO.Publicador;


--new desenvolvedor
/* Teste */
--EXEC newDesenvolvedor 'devRT', 'Riot Games', 'West Los Angeles, Califórnia, EUA';
--SELECT * FROM PROJETO.Desenvolvedor;



--new utilizador
/* Teste */
--EXEC newUtilizador 'Acácio Rodrigues', 'NickName', 'randomemail@email.com', 912456512, 'America Norte', 'palavrapasse';
--SELECT * FROM PROJETO.Utilizador;
--SELECT * FROM PROJETO.SistemaAutenticacao;


--new in lista de desejos
/* Teste */
--EXEC addListaDesejos 'xXReaperXx', 'JOGO1';
--SELECT * FROM PROJETO.ListaDesejos;





--alter utilizaddor
/* Teste */
--EXEC alterUtilizador 'Henrique1234', 'x', 'x@email.com', 910000000, 'Australia', 'x';
--SELECT * FROM PROJETO.Utilizador;
--SELECT * FROM PROJETO.SistemaAutenticacao;


--delete from lista de desejos
/* Teste */
--EXEC DeleteFromListaDesejos 'Henrique1234', 'JOGO1';
--SELECT * FROM PROJETO.ListaDesejos;

--add to lista de desejos
/* Teste */
--EXEC AddToListaDesejos 'Henrique1234', 'JOGO4';
--SELECT * FROM PROJETO.ListaDesejos;



--TESTE UDF

--Validar o login
--Test
--SELECT * FROM checkLogins('Henrique1234','palavrapasse');


--Ver info de utilizador (check profile)
--Test 
--SELECT * FROM checkProfile('Henrique1234');


--Ver rankings
--Test
--SELECT * FROM checkEstatisticas('JOGO5');

--Ver todos os jogos
--Test
--SELECT * FROM getAllGames();

--Lista de desejos por user
--Test
--SELECT * FROM getListaDesejosByUser('Henrique1234');