## Funções de Agregação em SQL

Nesta consulta foram utilizadas as principais funções de agregação para resumir informações da tabela `clientes`.

### Exemplo

```sql
SELECT
    AVG(QtdePontos) AS mediaPontos,
    1.0 * SUM(QtdePontos) / COUNT(IdCliente) AS mediaCalculada,
    MIN(QtdePontos) AS minCarteira,
    MAX(QtdePontos) AS maxCarteira,
    SUM(flTwitch) AS totalClientesTwitch,
    SUM(flEmail) AS totalClientesEmail

FROM clientes;
```

### Conceitos aprendidos

- `COUNT()` → Conta a quantidade de registros.
- `COUNT(DISTINCT coluna)` → Conta apenas os valores distintos.
- `SUM()` → Soma os valores de uma coluna.
- `AVG()` → Calcula a média dos valores.
- `MIN()` → Retorna o menor valor.
- `MAX()` → Retorna o maior valor.
- Combinação de funções de agregação para gerar indicadores em uma única consulta.
- Cálculo manual da média utilizando `SUM()` e `COUNT()`.

### Resultado esperado

A consulta retorna:

- Média de pontos dos clientes.
- Média calculada manualmente (`SUM / COUNT`).
- Menor quantidade de pontos.
- Maior quantidade de pontos.
- Total de clientes com Twitch (`flTwitch`).
- Total de clientes com e-mail (`flEmail`).

> **Observação:** A express
