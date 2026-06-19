-- Exemplos de contagem

-- Total de registros
-- SELECT COUNT(*)
-- FROM clientes;

-- Outra forma de contar registros
-- SELECT COUNT(1)
-- FROM clientes;

-- Total de clientes distintos
SELECT
    COUNT(DISTINCT IdCliente) AS TotalClientes
FROM
    clientes;
