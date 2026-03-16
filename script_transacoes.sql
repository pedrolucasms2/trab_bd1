-- 7(a) Transações com Autocommit

-- Terminal 1:
BEGIN;
UPDATE TIPOQUARTO SET preco = 999.00 WHERE tipoquarto = 'C' AND idhot = 1;

-- Terminal 2:
SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;

-- Terminal 1:
COMMIT;

-- Terminal 2:
SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;


-- 7(b) Deadlock

-- Passo 1 - Terminal 1:
BEGIN;
UPDATE HOTEL SET estrelas = 5 WHERE idhot = 1;

-- Passo 2 - Terminal 2:
BEGIN;
UPDATE HOTEL SET estrelas = 4 WHERE idhot = 2;

-- Passo 3 - Terminal 1:
UPDATE HOTEL SET estrelas = 5 WHERE idhot = 2;

-- Passo 4 - Terminal 2:
UPDATE HOTEL SET estrelas = 4 WHERE idhot = 1;
