SELECT avg(QtdePontos),
       1. * sum(QtdePontos)/ count(IdCliente),
       min(QtdePontos) As minCarteira,
       max(QtdePontos) As maxCarteira,
       sum(flTwitch),
       sum(flEmail)

FROM clientes;

/*

Agregações

Em muitos momentos desejamos alguns dados sumarizados, como
por exemplo: contagem, média, variância, mínimo, máximo etc.DescCategoriaProduto

Contade de linhas count(*)

Contagem de linhas distintas: count(distinct column)

soma: sum(column)

média: avg(column)

máx: max(column)


*/