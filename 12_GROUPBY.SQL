## GROUP BY - Agrupamento de Dados

Nesta consulta foi utilizado o `GROUP BY` para agrupar as transações por cliente e calcular métricas agregadas para cada grupo.

### Exemplo

```sql
SELECT
    IdCliente,
    SUM(QtdePontos) AS totalPontos,
    COUNT(IdTransacao) AS totalTransacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

ORDER BY IdCliente;
```

### Conceitos aprendidos

- Utilização do `GROUP BY` para agrupar registros.
- Aplicação de funções de agregação (`SUM` e `COUNT`) sobre cada grupo.
- Filtragem de dados utilizando `WHERE` antes do agrupamento.
- Ordenação dos resultados com `ORDER BY`.
- Geração de indicadores por cliente.

### Resultado esperado

A consulta retorna, para cada cliente:

- Identificador do cliente (`IdCliente`);
- Soma dos pontos acumulados no período;
- Quantidade de transações realizadas no período.

### Fluxo de execução da consulta

1. `FROM` → Seleciona a tabela `transacoes`.
2. `WHERE` → Filtra apenas as transações do período informado.
3. `GROUP BY` → Agrupa as transações por cliente.
4. `SUM()` e `COUNT()` → Calculam os indicadores de cada grupo.
5. `ORDER BY` → Ordena os resultados pelo identificador do cliente.
