
/*	Plataforma	*/
INSERT INTO projeto.plataforma
VALUES ('PS-JMUDnN8DlM', 'Play Station');

INSERT INTO projeto.plataforma
VALUES ('XB-IcF7fhtCFb', 'XBOX');

INSERT INTO projeto.plataforma
VALUES ('NT-nW6Oj3JvB5', 'Nintendo Switch');

INSERT INTO projeto.plataforma
VALUES ('PC-tnOd87AfDP', 'PC');

INSERT INTO projeto.plataforma
VALUES ('MO-l2s0kzzsst', 'Mobile');



/*	Publicador	*/
INSERT INTO projeto.publicador
VALUES ('SY-x4ka-GlMbN', 'Sony');
INSERT INTO projeto.publicador
VALUES ('TC-aWzQhmMA9_', 'Tencent');
INSERT INTO projeto.publicador
VALUES ('MC-rqscSF_8_c', 'Microsoft');
INSERT INTO projeto.publicador
VALUES ('NT-ZRVtvRmo3E', 'Nintendo');
INSERT INTO projeto.publicador
VALUES ('BZ-MrM4RIynjZ', 'Blizzard');
INSERT INTO projeto.publicador
VALUES ('EA-9UrTAKQp4q', 'Electronic Arts');
INSERT INTO projeto.publicador
VALUES ('NM-ncO-Nj2H-v', 'Namco');
INSERT INTO projeto.publicador
VALUES ('UB-aYAqf6cI3m', 'Ubisoft');
INSERT INTO projeto.publicador
VALUES ('VL-ZeDmY8M8ds', 'VALVE');


/*	Desenvolvedor	*/
INSERT INTO projeto.desenvolvedor
VALUES ('NH-Bj4sPnDx5h', 'NineHertz', 'Midwestern, US');
INSERT INTO projeto.desenvolvedor
VALUES ('TA-SAwzg6Jfgl', 'iTechArt', 'San Francisco, US');
INSERT INTO projeto.desenvolvedor
VALUES ('ZG-kKu9ixEaKv', 'Zero Games Studio', 'Paris, Ile-de-France, France');
INSERT INTO projeto.desenvolvedor
VALUES ('EA-cwEGE6ZkAi', 'Electronic Arts', 'Redwood City, Califórnia, EUA');
INSERT INTO projeto.desenvolvedor
VALUES ('NT-wHg9ebHdUO', 'Nintendo', 'Quioto, Japão');
INSERT INTO projeto.desenvolvedor
VALUES ('UB-POg3j2peoZ', 'Ubisoft', 'Montreuil, França');


/*	Jogo	*/
INSERT INTO projeto.jogo
VALUES ('JOGO-V7-NJS3s8j', 'ação', 'Free Fire', 78, '2.8GB space, 2GB ram', '2017-11-03', 0, 'MO-l2s0kzzsst', 'TC-aWzQhmMA9_', 'NH-Bj4sPnDx5h');
INSERT INTO projeto.jogo
VALUES ('JOGO-McMDYXF-jE', 'aventura', 'It Takes Two', 81, '4.2GB space, 4GB ram', '2021-03-26', 25.99, 'PS-JMUDnN8DlM', 'EA-9UrTAKQp4q', 'EA-cwEGE6ZkAi');
INSERT INTO projeto.jogo
VALUES ('JOGO-XUhi8lRvNm', 'RPG', 'Undertale', 62, '8GB space, 4GB ram', '2015-11-15', 64.99, 'NT-nW6Oj3JvB5', 'NT-ZRVtvRmo3E', 'NT-wHg9ebHdUO');
INSERT INTO projeto.jogo
VALUES ('JOGO-FBhuiD1PzP', 'FPS', 'Team Fortress 2', 77, '2.4GB space, 3GB ram', '2007-10-10', 15.99, 'PC-tnOd87AfDP', 'VL-ZeDmY8M8ds', 'ZG-kKu9ixEaKv');
INSERT INTO projeto.jogo
VALUES ('JOGO-yizl_Xr9HZ', 'Puzzle', 'Tetris', 91, '0.52GB space, 1GB ram', '1985-06-30', 5.99, 'XB-IcF7fhtCFb', 'NM-ncO-Nj2H-v', 'TA-SAwzg6Jfgl');


/*	Formato físico	*/
INSERT INTO projeto.formatoFisico
VALUES ('JOGO-yizl_Xr9HZ', 'cartucho');
INSERT INTO projeto.formatoFisico
VALUES ('JOGO-FBhuiD1PzP', 'CD');

/*	Formato digital	*/
INSERT INTO projeto.formatoDigital
VALUES ('JOGO-V7-NJS3s8j', 'PT627-PHPV3-P7XCA-F3P2M-JXC2Z');
INSERT INTO projeto.formatoDigital
VALUES ('JOGO-McMDYXF-jE', 'WST56-TRE45-HF93Y-SICHB-468H3');
INSERT INTO projeto.formatoDigital
VALUES ('JOGO-XUhi8lRvNm', 'RF38N-R8YHK-23NCH-124F3-SICC9');

/*	Utilizador	*/
INSERT INTO projeto.utilizador
VALUES ('Henrique1234', 'Henrique Ramos', 'henrique@email.com', 910123456, 'europa sul');
INSERT INTO projeto.utilizador
VALUES ('Gamer5', 'Luis Silva', 'luis@email.com', 910789512, 'america norte');
INSERT INTO projeto.utilizador
VALUES ('_player_', 'Pedro Santos', 'pedro@email.com', 917842035, 'australia');
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
VALUES ('Henrique1234', 'JOGO-McMDYXF-jE');
INSERT INTO projeto.listaDesejos
VALUES ('Henrique1234', 'JOGO-FBhuiD1PzP');
INSERT INTO projeto.listaDesejos
VALUES ('Henrique1234', 'JOGO-yizl_Xr9HZ');
INSERT INTO projeto.listaDesejos
VALUES ('Gamer5', 'JOGO-yizl_Xr9HZ');
INSERT INTO projeto.listaDesejos
VALUES ('Gamer5', 'JOGO-V7-NJS3s8j');
INSERT INTO projeto.listaDesejos
VALUES ('pinkflower', 'JOGO-FBhuiD1PzP');
INSERT INTO projeto.listaDesejos
VALUES ('pinkflower', 'JOGO-yizl_Xr9HZ');
INSERT INTO projeto.listaDesejos
VALUES ('ISmart', 'JOGO-XUhi8lRvNm');
INSERT INTO projeto.listaDesejos
VALUES ('ISmart', 'JOGO-FBhuiD1PzP');



/*	Autenticação	*/
INSERT INTO projeto.SistemaAutenticacao
VALUES ('Henrique1234', 'palavrapasse');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('Gamer5', 'chave!');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('_player_', 'senha1234');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('j0ana', 'pizza');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('fire1', 's3nha');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('pinkflower', 'pinkflower_senha');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('xXReaperXx', 'xXchaveXx');
INSERT INTO projeto.SistemaAutenticacao
VALUES ('ISmart', 'B2dGl4Lt12_');


/*	Autenticação	*/
INSERT INTO projeto.Estatisticas
VALUES ('JOGO-XUhi8lRvNm','Henrique1234',25,56);
INSERT INTO projeto.Estatisticas
VALUES ('JOGO-XUhi8lRvNm','pinkflower',99,262);
INSERT INTO projeto.Estatisticas
VALUES ('JOGO-V7-NJS3s8j','pinkflower',5,1);

select * from projeto.Estatisticas