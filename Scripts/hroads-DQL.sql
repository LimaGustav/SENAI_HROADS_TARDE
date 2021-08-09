USE HROADS;
GO

SELECT * FROM PERSONAGEM
GO

SELECT * FROM CLASSE
GO

SELECT nomeClasse FROM CLASSE
GO

SELECT * FROM HABILIDADE
GO

SELECT COUNT(*) FROM HABILIDADE
GO

SELECT idHabilidade FROM HABILIDADE
ORDER BY idHabilidade ASC
GO

SELECT * FROM TIPOHABILIDADE
GO

SELECT nomeHabilidade Habilidade, nomeTipoHabilidade [Tipo Habilidade] FROM HABILIDADE H
LEFT JOIN TIPOHABILIDADE TH
ON H.idTipoHabilidade = TH.idTipoHabilidade
GO

SELECT nomePersonagem Personagem, nomeClasse Classe FROM PERSONAGEM P
LEFT JOIN CLASSE C
ON P.idClasse = C.idClasse
GO

SELECT nomePersonagem Personagem, nomeClasse Classe FROM PERSONAGEM P
RIGHT JOIN CLASSE C
ON P.idClasse = C.idClasse
GO

SELECT nomeClasse Classe, nomeHabilidade Habilidade FROM CLASSE C
LEFT JOIN CLASSEHABILIDADE CH
ON C.idClasse = CH.idClasse
LEFT JOIN HABILIDADE H
ON CH.idHabilidade = H.idHabilidade
GO

SELECT nomeHabilidade Habilidade, nomeClasse Classe FROM CLASSE C
LEFT JOIN CLASSEHABILIDADE CH
ON C.idClasse = CH.idClasse
INNER JOIN HABILIDADE H
ON CH.idHabilidade = H.idHabilidade
GO

SELECT nomeHabilidade Habilidade, nomeClasse Classe FROM CLASSE C
FULL OUTER JOIN CLASSEHABILIDADE CH
ON C.idClasse = CH.idClasse
FULL OUTER JOIN HABILIDADE H
ON CH.idHabilidade = H.idHabilidade
GO

