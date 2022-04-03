-- Todas as compras realizadas no mês de janeiro de 2020 em lojas do estado do Ceará (CE)

SELECT
	PS.ID_PESSOA,
	PS.NM_PESSOA,
	TP.DT_REF,
	VN.VL_VENDA

FROM f_Vendas VN 
LEFT JOIN d_Tempo TP ON VN.ID_TEMPO = TP.ID_TEMPO
LEFT JOIN d_Loja LJ ON VN.ID_LOJA = LJ.ID_LOJA
LEFT JOIN d_Pessoa PS ON VN.ID_PESSOA = PS.ID_PESSOA

WHERE EOMONTH(TP.DT_REF) = '2020-01-31'
AND LJ.DS_UF = 'CE'
