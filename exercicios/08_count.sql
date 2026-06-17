-- SELECT count(*),
-- count(1),
-- count(distinct IdCliente)
-- FROM clientes;



SELECT COUNT(DISTINCT IdCliente) AS TotalClientes
FROM clientes;