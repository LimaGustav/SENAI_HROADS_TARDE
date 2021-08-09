USE HROADS;
GO

INSERT INTO CLASSE (nomeClasse)
VALUES	('Bárbaro'),('Cruzado'),('Caçadora de Demônios'),
		('Monge'),('Necromante'),('Feiticeiro'),('Arcanista')
GO

INSERT INTO TIPOHABILIDADE (nomeTipoHabilidade)
VALUES	('Ataque'),('Defesa'),('Cura'),('Magia')
GO

INSERT INTO PERSONAGEM (idClasse, nomePersonagem, capacidadeMaxVida,
capacidadeMaxMana, dataAtualizacao, dataCriacao)
VALUES	(1,'DeuBug',100,80,GETDATE(),'18/01/2019 17:35:21'),
		(4,'BitBug',70,100,GETDATE(),'17/03/2016 09:45:03'),
		(7,'Fer8',75,60,GETDATE(),'18/03/2018 16:02:01')
GO

INSERT INTO HABILIDADE (idTipoHabilidade, nomeHabilidade)
VALUES	(1,'Lança Mortal'),
		(2,'Escudo Supremo'),
		(3,'Recuperar Vida')
GO

INSERT INTO CLASSEHABILIDADE (idClasse, idHabilidade)
VALUES	(1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(6,3)
GO

UPDATE PERSONAGEM
SET nomePersonagem = 'Fer7'
WHERE nomePersonagem = 'Fer8'
GO

UPDATE CLASSE 
SET nomeClasse = 'Necromancer'
WHERE nomeClasse = 'Necromante'
GO

