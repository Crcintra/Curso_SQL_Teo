
/*
SELECT SUM(QtdePontos)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'

AND DtCriacao < '2025-08-01'

AND QtdePontos > 0 */


SELECT 
       SUM(QtdePontos),
    SUM(CASE
        WHEN QtdePontos > 0 THEN  QtdePontos
    END) AS qtdePontosPositivos,

    SUM(CASE WHEN QtdePontos < 0 THEN QtdePontos
    ELSE 0
    END) AS qtdePontosNegativos,

    COUNT(CASE
    WHEN QtdePontos < 0 THEN QtdePontos
    END) AS qtdeTransacoesNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos;
