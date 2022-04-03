-- Todos os clientes que não fizeram compras no mês de março de 2020

SELECT
	PS.ID_PESSOA,
	PS.NM_PESSOA

FROM d_Pessoa PS 
LEFT JOIN f_Vendas VN ON VN.ID_PESSOA = PS.ID_PESSOA
LEFT JOIN d_Tempo TP ON VN.ID_TEMPO = TP.ID_TEMPO

WHERE EOMONTH(TP.DT_REF) <> '2020-03-31'
