-- 7(a) Transações Concorrentes (BEGIN / COMMIT)

-- Terminal A:
BEGIN;
UPDATE TIPOQUARTO SET preco = 200.00 WHERE tipoquarto = 'C' AND idhot = 1;

-- Terminal B:
SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;

-- Terminal A:
COMMIT;

-- Terminal B:
SELECT preco FROM TIPOQUARTO WHERE tipoquarto = 'C' AND idhot = 1;


-- 7(b) Simulação de Deadlock

-- Terminal A:
BEGIN;
UPDATE HOTEL SET estrelas = 3 WHERE idhot = 1;

-- Terminal B:
BEGIN;
UPDATE HOTEL SET estrelas = 4 WHERE idhot = 2;

-- Terminal A:
UPDATE HOTEL SET estrelas = 5 WHERE idhot = 2;

-- Terminal B:
UPDATE HOTEL SET estrelas = 5 WHERE idhot = 1;
