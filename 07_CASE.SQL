## CASE WHEN - Classificação e criação de indicadores

Nesta consulta foram utilizados múltiplos blocos `CASE WHEN` para:

- Classificar clientes de acordo com a quantidade de pontos.
- Criar colunas calculadas (flags) para identificar categorias específicas.
- Ordenar os resultados com base na pontuação.

### Exemplo

```sql
SELECT
    IdCliente,
    QtdePontos,

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

FROM clientes
ORDER BY QtdePontos DESC;
```

### Conceitos aprendidos

- Utilização de `CASE WHEN` para implementar regras de negócio.
- Criação de colunas derivadas utilizando aliases (`AS`).
- Geração de indicadores binários (flags) para facilitar análises.
- Ordenação dos resultados com `ORDER BY`.

> **Observação:** Não é possível utilizar um alias criado no `SELECT` diretamente na cláusula `WHERE`, pois o `WHERE` é executado antes do `SELECT`. Nesses casos, é necessário repetir a condição ou utilizar uma subconsulta (ou CTE).


