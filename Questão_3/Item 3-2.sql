-- Quantidade de compras por cliente no mês de março de 2020

SELECT
	PS.ID_PESSOA,
	COUNT(*) QTD_COMPRAS

FROM f_Vendas VN 
LEFT JOIN d_Tempo TP ON VN.ID_TEMPO = TP.ID_TEMPO
LEFT JOIN d_Pessoa PS ON VN.ID_PESSOA = PS.ID_PESSOA

WHERE EOMONTH(TP.DT_REF) = '2020-03-31'

GROUP BY PS.ID_PESSOA
