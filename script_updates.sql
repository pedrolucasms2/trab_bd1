INSERT INTO PONTOTURISTICO (idtur, idcid, tipotur, endereco, descricaotur)
VALUES (6, 1, 'M', 'Rua da Bahia, 1149', 'Museu de Arte da Pampulha');

INSERT INTO RESTAURANTE (idres, precomedioref, tipoculi, nomeres)
VALUES (6, 90.00, 'BRA', 'Churrascaria do Sul');

CREATE TABLE HOTEIS_ALTO_PADRAO (
    idhot INT PRIMARY KEY,
    nomehot VARCHAR(100),
    estrelas INT
);

INSERT INTO HOTEIS_ALTO_PADRAO (idhot, nomehot, estrelas)
SELECT idhot, nomehot, estrelas
FROM HOTEL
WHERE estrelas >= 4;

DELETE FROM HOTEL WHERE idhot = 3;

ALTER TABLE PONTOTURISTICO ALTER COLUMN idcid DROP NOT NULL;
ALTER TABLE PONTOTURISTICO DROP CONSTRAINT pontoturistico_idcid_fkey;
ALTER TABLE PONTOTURISTICO ADD CONSTRAINT pontoturistico_idcid_fkey
    FOREIGN KEY (idcid) REFERENCES CIDADE(idcid) ON DELETE SET NULL;

DELETE FROM CIDADE WHERE idcid = 2;

UPDATE TIPOQUARTO
SET preco = preco * 1.15
WHERE idhot IN (
    SELECT idhot
    FROM HOTEL
    WHERE idcid = 1
);