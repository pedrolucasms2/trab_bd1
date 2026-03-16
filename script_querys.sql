SELECT
    H.nomehot AS "Nome do Hotel",
    C.nomecid AS "Cidade",
    C.estado AS "Estado"
FROM HOTEL H
JOIN CIDADE C ON H.idcid = C.idcid;

SELECT
    PT.descricaotur AS "Nome do Museu",
    F.nome AS "Fundador",
    F.atividadepro AS "Profissão"
FROM PONTOTURISTICO PT
JOIN MUSEU M ON PT.idtur = M.idtur
JOIN MUSFUND MF ON M.idtur = MF.idtur
JOIN FUNDADOR F ON MF.idpes = F.idpes;

SELECT
    R.nomeres AS "Restaurante",
    R.tipoculi AS "Culinária",
    H.nomehot AS "Hotel"
FROM RESTAURANTE R
JOIN RESTAURANTEHOT RH ON R.idres = RH.idres
JOIN HOTEL H ON RH.idhot = H.idhot;

SELECT
    ROUND(AVG(preco), 2) AS "Média de Preço Geral (R$)"
FROM TIPOQUARTO;

SELECT
    SUM(populacao) AS "População Total (Cidades Cadastradas)"
FROM CIDADE;

SELECT
    MAX(precomedioref) AS "Refeição Mais Cara (R$)",
    MIN(precomedioref) AS "Refeição Mais Barata (R$)"
FROM RESTAURANTE;

SELECT
    H.nomehot AS "Hotel",
    COUNT(Q.numquarto) AS "Quantidade de Quartos"
FROM HOTEL H
JOIN QUARTO Q ON H.idhot = Q.idhot
GROUP BY H.nomehot
HAVING COUNT(Q.numquarto) > 2;

SELECT
    H.nomehot AS "Hotel",
    ROUND(AVG(TQ.preco), 2) AS "Média de Diária (R$)"
FROM HOTEL H
JOIN TIPOQUARTO TQ ON H.idhot = TQ.idhot
GROUP BY H.nomehot
HAVING AVG(TQ.preco) > 400.00;

SELECT
    C.nomecid AS "Cidade",
    COUNT(PT.idtur) AS "Total de Pontos Turísticos"
FROM CIDADE C
JOIN PONTOTURISTICO PT ON C.idcid = PT.idcid
GROUP BY C.nomecid
HAVING COUNT(PT.idtur) >= 2;