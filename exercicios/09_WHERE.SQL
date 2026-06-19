## CASE WHEN - Classificação de Dados

Nesta consulta foi utilizada a estrutura `CASE WHEN` para classificar as transações de acordo com a quantidade de pontos.

### Exemplo

```sql
SELECT
    IdTransacao,
    QtdePontos,
    CASE
        WHEN QtdePontos < 10 THEN 'Alto'
        WHEN QtdePontos >= 10 AND QtdePontos < 500 THEN 'Médio'
        ELSE 'Baixo'
    END AS Classificacao
FROM transacoes;
```

### Conceitos aprendidos

- Utilização do `CASE WHEN` para implementar regras de negócio.
- Criação de uma coluna calculada utilizando `AS`.
- Avaliação de múltiplas condições em sequência.
- Classificação de registros com base em intervalos de valores.

### Resultado esperado

A consulta retorna:

- O identificador da transação (`IdTransacao`);
- A quantidade de pontos (`QtdePontos`);
- Uma classificação para cada transação, conforme a regra:

| Quantidade de Pontos | Classificação |
|----------------------|---------------|
| Menor que 10 | Alto |
| De 10 até 499 | Médio |
| 500 ou mais | Baixo |

### Observação

O `CASE WHEN` avalia as condições na ordem em que são escritas. Quando uma condição é satisfeita, as demais não são avaliadas para aquele registro. Por isso, é importante definir corretamente a sequência das condições.
