INSERT INTO CIDADE (idcid, estado, nomecid, populacao) VALUES
(1, 'MG', 'Uberlândia', 700000),
(2, 'SP', 'São Paulo', 12000000),
(3, 'RJ', 'Rio de Janeiro', 6500000);

INSERT INTO HOTEL (idhot, idcid, estrelas, enderecohol, nomehot) VALUES
(1, 1, 4, 'Av. João Naves de Ávila, 1000', 'Hotel Astra'),
(2, 2, 5, 'Av. Paulista, 1500', 'Paulista Plaza'),
(3, 1, 3, 'Rua Floriano Peixoto, 200', 'Pousada Central');

INSERT INTO TIPOQUARTO (tipoquarto, idhot, preco) VALUES
('C', 1, 150.00),
('L', 1, 300.00),
('SL', 2, 850.00),
('L', 2, 500.00),
('C', 3, 90.00);

INSERT INTO QUARTO (numquarto, idhot, tipoquart) VALUES
(101, 1, 'C'), 
(102, 1, 'C'), 
(201, 1, 'L'),
(501, 2, 'SL'), 
(502, 2, 'L'),
(10, 3, 'C');

INSERT INTO PONTOTURISTICO (idtur, idcid, tipotur, endereco, descricaotur) VALUES
(1, 1, 'I', 'Praça Clarimundo Carneiro', 'Igreja Nossa Sra. do Rosário'),
(2, 2, 'M', 'Av. Paulista, 1578', 'MASP - Museu de Arte de São Paulo'),
(3, 1, 'C', 'Rua das Festas, 10', 'Show Bar Center'),
(4, 3, 'M', 'Praça Mauá, 1', 'Museu do Amanhã'),
(5, 3, 'C', 'Lapa, 50', 'Circo Voador');

INSERT INTO IGREJA (idtur, dataconst, estiloconst) VALUES
(1, '1931-10-15', 'Neoclássico');

INSERT INTO MUSEU (idtur, datafund, numsalas) VALUES
(2, '1947-10-02', 15),
(4, '2015-12-17', 8);

INSERT INTO CASADESHOW (idtur, diafechamento, horarioabert, horariofecha) VALUES
(3, 'seg', '20:00:00', '04:00:00'),
(5, 'ter', '22:00:00', '05:00:00');

INSERT INTO RESTAURANTE (idres, idcid, nomeres, enderecores, precomedioref, tipoculi, idhot, idtur) VALUES
(1, 1, 'Restaurante Kanastra', 'Av. João Naves de Ávila, 1000', 85.00, 'BRA', 1, NULL),
(2, 2, 'Bistrô Paulista', 'Av. Paulista, 1500', 150.00, 'FRA', 2, NULL),
(3, 1, 'Sushi Night', 'Rua das Festas, 10', 120.00, 'JAP', NULL, 3),
(4, 3, 'Cantina Rio', 'Copacabana, 20', 90.00, 'ITA', NULL, NULL);

INSERT INTO FUNDADOR (idpes, nome, datanas, datafale, nacionalidade, atividadepro) VALUES
(1, 'Assis Chateaubriand', '1892-10-04', '1968-04-04', 'Brasileiro', 'Jornalista e Empresário'),
(2, 'Pietro Maria Bardi', '1900-02-21', '1999-10-01', 'Italiano', 'Jornalista e Crítico de Arte');

INSERT INTO MUSFUND (idpes, idtur) VALUES
(1, 2), 
(2, 2);