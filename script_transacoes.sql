BEGIN;
UPDATE TIPOQUARTO SET preco = 200.00 WHERE tipoquarto = 'C' AND idhot = 1;

SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;

COMMIT;

SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;

BEGIN;
UPDATE HOTEL SET estrelas = 3 WHERE idhot = 1;

BEGIN;
UPDATE HOTEL SET estrelas = 4 WHERE idhot = 2;

UPDATE HOTEL SET estrelas = 5 WHERE idhot = 2;

UPDATE HOTEL SET estrelas = 5 WHERE idhot = 1;
