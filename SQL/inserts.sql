
/*	Plataforma	*/
INSERT INTO projeto.plataforma
VALUES ('platPS', 'Play Station');

INSERT INTO projeto.plataforma
VALUES ('platXB', 'XBOX');

INSERT INTO projeto.plataforma
VALUES ('platNT', 'Nintendo Switch');

INSERT INTO projeto.plataforma
VALUES ('platPC', 'PC');

INSERT INTO projeto.plataforma
VALUES ('platMO', 'Mobile');



/*	Publicador	*/
INSERT INTO projeto.publicador
VALUES ('pubSY', 'Sony');
INSERT INTO projeto.publicador
VALUES ('pubTC', 'Tencent');
INSERT INTO projeto.publicador
VALUES ('pubMC', 'Microsoft');
INSERT INTO projeto.publicador
VALUES ('pubNT', 'Nintendo');
INSERT INTO projeto.publicador
VALUES ('pubBZ', 'Blizzard');
INSERT INTO projeto.publicador
VALUES ('pubEA', 'Electronic Arts');
INSERT INTO projeto.publicador
VALUES ('pubNM', 'Namco');
INSERT INTO projeto.publicador
VALUES ('pubUB', 'Ubisoft');
INSERT INTO projeto.publicador
VALUES ('pubVL', 'VALVE');


/*	Desenvolvedor	*/
INSERT INTO projeto.desenvolvedor
VALUES ('devNH', 'NineHertz', 'Midwestern, US');
INSERT INTO projeto.desenvolvedor
VALUES ('devTA', 'iTechArt', 'San Francisco, US');
INSERT INTO projeto.desenvolvedor
VALUES ('devZG', 'Zero Games Studio', 'Paris, Ile-de-France, France');
INSERT INTO projeto.desenvolvedor
VALUES ('devEA', 'Electronic Arts', 'Redwood City, Califórnia, EUA');
INSERT INTO projeto.desenvolvedor
VALUES ('devNT', 'Nintendo', 'Quioto, Japão');
INSERT INTO projeto.desenvolvedor
VALUES ('devUB', 'Ubisoft', 'Montreuil, França');


/*	Jogo	*/
INSERT INTO projeto.jogo
VALUES ('JOGO1', 'ação', 'Free Fire', 78, '2.8GB space, 2GB ram', '2017-11-03', 0, 'platMO', 'pubTC', 'devNH');
INSERT INTO projeto.jogo
VALUES ('JOGO2', 'aventura', 'It Takes Two', 81, '4.2GB space, 4GB ram', '2021-03-26', 25.99, 'platPS', 'pubEA', 'devEA');
INSERT INTO projeto.jogo
VALUES ('JOGO3', 'RPG', 'Undertale', 62, '8GB space, 4GB ram', '2015-11-15', 64.99, 'platNT', 'pubNT', 'devNT');
INSERT INTO projeto.jogo
VALUES ('JOGO4', 'FPS', 'Team Fortress 2', 77, '2.4GB space, 3GB ram', '2007-10-10', 15.99, 'platPC', 'pubVL', 'devZG');
INSERT INTO projeto.jogo
VALUES ('JOGO5', 'Puzzle', 'Tetris', 91, '0.52GB space, 1GB ram', '1985-06-30', 5.99, 'platXB', 'pubNM', 'devTA');



/*	Formato físico	*/
INSERT INTO projeto.formatoFisico
VALUES ('JOGO5', 'cartucho');
INSERT INTO projeto.formatoFisico
VALUES ('JOGO4', 'CD');


/*	Formato digital	*/
INSERT INTO projeto.formatoDigital
VALUES ('JOGO1', 'PT627');
INSERT INTO projeto.formatoDigital
VALUES ('JOGO2', 'WST56');
INSERT INTO projeto.formatoDigital
VALUES ('JOGO3', 'RF38N');

/*	Utilizador	*/
INSERT INTO projeto.utilizador
VALUES ('Henrique1234', 'Henrique Ramos', 'henrique@email.com', 910123456, 'europa sul');
INSERT INTO projeto.utilizador
VALUES ('Gamer5', 'Luis Silva', 'luis@email.com', 910789512, 'america norte');
INSERT INTO projeto.utilizador
VALUES ('player', 'Pedro Santos', 'pedro@email.com', 917842035, 'australia');
INSERT INTO projeto.utilizador
VALUES ('j0ana', 'Joana Matos', 'joana@email.com', 918451024, 'europa sul');
INSERT INTO projeto.utilizador
VALUES ('fire1', 'Renato Simões', 'ren@email.com', 965789101, 'america sul');
INSERT INTO projeto.utilizador
VALUES ('pinkflower', 'Gabriela Aguiar', 'gabi@email.com', 984562013, 'europa norte');
INSERT INTO projeto.utilizador
VALUES ('xXReaperXx', 'Margarida Soares', 'margs@email.com', 918463012, 'europa norte');
INSERT INTO projeto.utilizador
VALUES ('ISmart', 'Gonçalo Ferreira', 'goncalo@email.com', 935647894, 'europa este');


/*	Lista Desejos	*/
INSERT INTO projeto.listaDesejos
VALUES ('Henrique1234', 'JOGO1');
INSERT INTO projeto.listaDesejos
VALUES ('Henrique1234', 'JOGO2');
INSERT INTO projeto.listaDesejos
VALUES ('Henrique1234', 'JOGO3');
INSERT INTO projeto.listaDesejos
VALUES ('Gamer5', 'JOGO1');
INSERT INTO projeto.listaDesejos
VALUES ('Gamer5', 'JOGO2');
INSERT INTO projeto.listaDesejos
VALUES ('pinkflower', 'JOGO1');
INSERT INTO projeto.listaDesejos
VALUES ('pinkflower', 'JOGO2');
INSERT INTO projeto.listaDesejos
VALUES ('ISmart', 'JOGO4');
INSERT INTO projeto.listaDesejos
VALUES ('ISmart', 'JOGO5');



/*	Autenticação	*/
INSERT INTO projeto.SistemaAutenticacao
VALUES ('Henrique1234', 'palavrapasse');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('Gamer5', 'chave!');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('player', 'senha1234');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('j0ana', 'pizza');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('fire1', 's3nha');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('pinkflower', 'pinkflowersenha');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('xXReaperXx', 'xXchaveXx');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('ISmart', 'B2dGl4Lt12');


/*	Estaticticas	*/
INSERT INTO projeto.Estatisticas
VALUES ('JOGO5','Henrique1234',25,56);
INSERT INTO projeto.Estatisticas
VALUES ('JOGO5','pinkflower',99,262);
INSERT INTO projeto.Estatisticas
VALUES ('JOGO4','pinkflower',5,1);
INSERT INTO projeto.Estatisticas
VALUES ('JOGO1','fire1',10,15);


