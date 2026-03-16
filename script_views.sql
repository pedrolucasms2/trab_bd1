CREATE VIEW view_hoteis_5_estrelas AS
SELECT idhot, idcid, estrelas, enderecohot, nomehot
FROM HOTEL
WHERE estrelas = 5
WITH LOCAL CHECK OPTION;

CREATE VIEW view_catalogo_turistico AS
SELECT
    PT.idtur,
    PT.descricaotur AS nome_ponto_turistico,
    CASE
        WHEN PT.tipotur = 'I' THEN 'Igreja'
        WHEN PT.tipotur = 'M' THEN 'Museu'
        WHEN PT.tipotur = 'C' THEN 'Casa de Show'
    END AS tipo_ponto,
    C.nomecid AS cidade,
    C.estado
FROM PONTOTURISTICO PT
JOIN CIDADE C ON PT.idcid = C.idcid;

CREATE VIEW view_fundadores_publico AS
SELECT
    nome AS nome_fundador,
    nacionalidade,
    atividadepro AS profissao
FROM FUNDADOR;

SELECT * FROM view_hoteis_5_estrelas;

SELECT * FROM view_catalogo_turistico
WHERE estado = 'RJ';

SELECT * FROM view_fundadores_publico
ORDER BY nome_fundador;
