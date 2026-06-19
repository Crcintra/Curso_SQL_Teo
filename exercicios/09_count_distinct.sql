SELECT 
COUNT (DISTINCT IdTransacao) AS TotalTransacoes,
COUNT (DISTINCT IdCliente) AS TotalClientes
FROM transacoes;




SELECT COUNT(*) AS TotalTransacoes
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
ORDER BY DtCriacao DESC;



SELECT DISTINCT flTwitch, flEmail
from clientes;