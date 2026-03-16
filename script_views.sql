CREATE OR REPLACE VIEW v_hoteis_luxo AS
SELECT * FROM HOTEL WHERE estrelas = 5
WITH CHECK OPTION;

CREATE OR REPLACE VIEW v_info_restaurantes AS
SELECT R.nomeres AS "Restaurante", R.tipoculi AS "Culinária", C.nomecid AS "Cidade"
FROM RESTAURANTE R
JOIN CIDADE C ON R.idcid = C.idcid;

CREATE OR REPLACE VIEW v_fundadores_publico AS
SELECT idpes, nome, nacionalidade FROM FUNDADOR;

SELECT * FROM v_hoteis_luxo;

SELECT * FROM v_info_restaurantes;

SELECT * FROM v_fundadores_publico;
