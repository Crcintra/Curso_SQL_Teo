--Intervalos
--De 0 a 500 - ponei
--De 501 a 1000 - pomei premium
--De 1001 a 5000 - mago aprendiz
--de 5001 a 10000 - mago mestre
--+10001 - mago supremo


SELECT IdCliente, QtdePontos,
CASE
     WHEN QtdePontos <= 500 THEN 'ponei'
     WHEN QtdePontos <= 1000 THEN 'ponei premium'
     WHEN QtdePontos <= 5000 THEN 'mago aprendiz'
     WHEN QtdePontos <= 10000 THEN 'mago mestre'
     ELSE 'mago supremo'
     END AS grupo,

CASE
    WHEN QtdePontos <= 1000 THEN 1
    ELSE 0
END AS flPonei,

CASE
    WHEN QtdePontos > 1000 THEN 1
    ELSE 0
END AS flMago

WHERE flPonei = 1



      FROM clientes
       ORDER BY QtdePontos DESC;


