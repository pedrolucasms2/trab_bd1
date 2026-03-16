SELECT H.nomehot AS "Nome do Hotel", H.estrelas AS "Categoria", C.nomecid AS "Cidade"
FROM HOTEL H
JOIN CIDADE C ON H.idcid = C.idcid;

SELECT PT.descricaotur AS "Nome do Museu", F.nome AS "Nome do Fundador"
FROM MUSEU M
JOIN PONTOTURISTICO PT ON M.idtur = PT.idtur
JOIN MUSFUND MF ON MF.idtur = M.idtur
JOIN FUNDADOR F ON F.idpes = MF.idpes;

SELECT H.nomehot AS "Hotel", Q.numquarto AS "Quarto", TQ.preco AS "Valor (R$)"
FROM QUARTO Q
JOIN TIPOQUARTO TQ ON Q.idhot = TQ.idhot AND Q.tipoquart = TQ.tipoquarto
JOIN HOTEL H ON Q.idhot = H.idhot;

SELECT ROUND(AVG(preco), 2) AS "Média de Preço das Diárias (R$)"
FROM TIPOQUARTO;

SELECT MAX(preco) AS "Mais Cara", MIN(preco) AS "Mais Barata"
FROM TIPOQUARTO;

SELECT COUNT(numquarto) AS "Total Geral de Quartos"
FROM QUARTO;

SELECT H.nomehot AS "Hotel", COUNT(Q.numquarto) AS "Qtd Quartos"
FROM HOTEL H
JOIN QUARTO Q ON H.idhot = Q.idhot
GROUP BY H.nomehot
HAVING COUNT(Q.numquarto) >= 2;

SELECT tipoculi AS "Especialidade", ROUND(AVG(precomedioref), 2) AS "Média (R$)"
FROM RESTAURANTE
GROUP BY tipoculi
HAVING AVG(precomedioref) > 100;

SELECT C.nomecid AS "Cidade", COUNT(PT.idtur) AS "Total"
FROM CIDADE C
JOIN PONTOTURISTICO PT ON C.idcid = PT.idcid
GROUP BY C.nomecid
HAVING COUNT(PT.idtur) >= 2;

SELECT * FROM v_hoteis_luxo;

SELECT * FROM v_info_restaurantes;

SELECT * FROM v_fundadores_publico;