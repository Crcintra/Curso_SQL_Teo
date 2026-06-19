## Agregações com `SUM`, `COUNT` e `CASE WHEN`

Nesta consulta foram utilizadas funções de agregação em conjunto com `CASE WHEN` para calcular métricas específicas de uma tabela de transações dentro de um período.

### Exemplo

```sql
SELECT
    SUM(QtdePontos) AS totalPontos,

    SUM(
        CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END
    ) AS qtdePontosPositivos,

    SUM(
        CASE
            WHEN QtdePontos < 0 THEN QtdePontos
            ELSE 0
        END
    ) AS qtdePontosNegativos,

    COUNT(
        CASE
            WHEN QtdePontos < 0 THEN QtdePontos
        END
    ) AS qtdeTransacoesNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01';
```

### Conceitos aprendidos

- Utilização da função `SUM()`.
- Utilização da função `COUNT()`.
- Agregações condicionais com `CASE WHEN`.
- Cálculo de indicadores em uma única consulta.
- Filtragem de registros por intervalo de datas utilizando `WHERE`.
- Aplicação de boas práticas para consultas analíticas.

### Resultado esperado

A consulta retorna:

- Total de pontos movimentados no período.
- Soma apenas dos pontos positivos.
- Soma apenas dos pontos negativos.
- Quantidade de transações com pontuação negativa.
