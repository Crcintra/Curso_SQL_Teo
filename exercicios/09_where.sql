SELECT 
    IdTransacao,
    QtdePontos,
    CASE
        WHEN QtdePontos < 10 THEN 'Alto'
        WHEN QtdePontos >= 10 AND QtdePontos < 500 THEN 'Médio'
        ELSE 'Baixo'
    END AS Classificacao
FROM transacoes;