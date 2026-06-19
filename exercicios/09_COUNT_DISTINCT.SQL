## COUNT e DISTINCT

Nesta aula foram exploradas as funções `COUNT` e `DISTINCT` para realizar contagens e identificar valores únicos em uma tabela.

### 1. Contagem de valores distintos

```sql
SELECT
    COUNT(DISTINCT IdTransacao) AS TotalTransacoes,
    COUNT(DISTINCT IdCliente) AS TotalClientes
FROM transacoes;
```

**Objetivo:** calcular a quantidade de transações e de clientes distintos registrados na tabela.

---

### 2. Contagem de registros com filtro

```sql
SELECT
    COUNT(*) AS TotalTransacoes
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01';
```

**Objetivo:** contar o número de transações realizadas em um determinado período.

> **Observação:** Como `COUNT(*)` retorna apenas uma linha, a cláusula `ORDER BY` não é necessária.

---

### 3. Identificação de combinações únicas

```sql
SELECT DISTINCT
    flTwitch,
    flEmail
FROM clientes;
```

**Objetivo:** listar todas as combinações únicas dos indicadores `flTwitch` e `flEmail`, eliminando registros duplicados.

### Conceitos aprendidos

- `COUNT(*)` → Conta todos os registros retornados pela consulta.
- `COUNT(coluna)` → Conta apenas os valores não nulos da coluna.
- `COUNT(DISTINCT coluna)` → Conta apenas os valores únicos.
- `DISTINCT` → Remove registros duplicados do resultado.
- Utilização do `WHERE` para filtrar dados antes da contagem.

### Resultado esperado

- Quantidade total de transações distintas.
- Quantidade total de clientes distintos.
- Número de transações em um período específico.
- Lista das combinações únicas entre os indicadores `flTwitch` e `flEmail`.
