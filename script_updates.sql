INSERT INTO RESTAURANTE (idres, idcid, nomeres, enderecores, precomedioref, tipoculi)
VALUES (5, 1, 'Churrascaria Minas', 'Rua X, 10', 60.00, 'BRA');

INSERT INTO HOTEL (idhot, idcid, estrelas, enderecohol, nomehot)
VALUES (4, 1, 5, 'Av. Rondon Pacheco, 500', 'Hotel Premium');

INSERT INTO QUARTO (numquarto, idhot, tipoquart)
SELECT 103, 1, tipoquarto
FROM TIPOQUARTO
WHERE idhot = 1 AND tipoquarto = 'C';

DELETE FROM HOTEL WHERE idhot = 3;

DELETE FROM CASADESHOW WHERE idtur = 3;

UPDATE TIPOQUARTO
SET preco = preco * 1.05
WHERE idhot IN (SELECT idhot FROM HOTEL WHERE estrelas = 5);