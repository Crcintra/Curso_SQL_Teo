/*
SELECT count(*)

FROM transacao_produto

WHERE IdProduto = 15; 


SELECT IdProduto,
       count(*)

FROM transacao_produto

GROUP BY IdProduto;
*/


SELECT IdCliente,
       SUM(QtdePontos),
       count(IdTransacao)


FROM transacoes


WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
GROUP BY IdCliente
ORDER BY IdCliente;
