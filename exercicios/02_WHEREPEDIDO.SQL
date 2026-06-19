-- Lista de pedidos realizados no fim de semana

SELECT  Idtransacao, DtCriacao,
strftime('%w', datetime(substr(DtCriacao, 1, 19))) as DiaSemana
FROM transacoes
WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('6', '0');
