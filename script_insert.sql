INSERT INTO CIDADE (idcid, estado, nomecid, populacao) VALUES
(1, 'MG', 'Belo Horizonte', 2500000),
(2, 'RJ', 'Rio de Janeiro', 6700000),
(3, 'SP', 'São Paulo', 12300000);

INSERT INTO HOTEL (idhot, idcid, estrelas, enderecohot, nomehot) VALUES
(1, 1, 4, 'Av. Afonso Pena, 1000', 'Hotel Fasano BH'),
(2, 2, 5, 'Av. Atlântica, 1702', 'Copacabana Palace'),
(3, 3, 3, 'Rua Augusta, 500', 'Augusta Inn');

INSERT INTO TIPOQUARTO (tipoquarto, idhot, preco) VALUES
('C', 1, 250.00), ('L', 1, 450.00), ('SL', 1, 800.00),
('L', 2, 900.00), ('SL', 2, 2500.00),
('C', 3, 150.00), ('L', 3, 300.00);

INSERT INTO QUARTO (numquarto, idhot, tipoquarto) VALUES
(101, 1, 'C'), (102, 1, 'C'), (201, 1, 'L'), (301, 1, 'SL'),
(1001, 2, 'L'), (2001, 2, 'SL'), (2002, 2, 'SL'),
(10, 3, 'C'), (11, 3, 'C'), (20, 3, 'L');

INSERT INTO RESTAURANTE (idres, precomedioref, tipoculi, nomeres) VALUES
(1, 120.00, 'BRA', 'Restaurante Mineirinho'),
(2, 450.00, 'FRA', 'Mee Copacabana Palace'),
(3, 80.00, 'ITA', 'Cantina da Nonna'),
(4, 200.00, 'GEN', 'Show Bar & Food'),
(5, 150.00, 'JAP', 'Sushi do Fasano');

INSERT INTO RESTAURANTENORM (idres, idcid, endereco) VALUES
(1, 1, 'Rua Sapucaí, 200'),
(3, 3, 'Rua Treze de Maio, 100');

INSERT INTO RESTAURANTEHOT (idhot, idres) VALUES
(2, 2),
(1, 5);

INSERT INTO PONTOTURISTICO (idtur, idcid, tipotur, endereco, descricaotur) VALUES
(1, 1, 'I', 'Praça da Liberdade, S/N', 'Igreja da Boa Viagem'),
(2, 2, 'M', 'Praça Mauá, 1', 'Museu do Amanhã'),
(3, 3, 'C', 'Rua Funchal, 500', 'Vila Olímpia Hall'),
(4, 1, 'M', 'Praça da Liberdade, 680', 'MM Gerdau - Museu das Minas e do Metal'),
(5, 2, 'C', 'Av. Ayrton Senna, 3000', 'Jeunesse Arena');

INSERT INTO IGREJA (idtur, dataconst, estiloconst) VALUES
(1, '1923-12-08', 'Neogótico');

INSERT INTO CASADESHOW (idtur, diafechamento, horarioabert, horariofecha) VALUES
(3, 'seg', '20:00:00', '04:00:00'),
(5, 'dom', '18:00:00', '02:00:00');

INSERT INTO RESTAURANTECASA (idtur, idres) VALUES
(3, 4);

INSERT INTO MUSEU (idtur, datafund, numsalas) VALUES
(2, '2015-12-17', 15),
(4, '2010-06-22', 18);

INSERT INTO FUNDADOR (idpes, nome, datanas, datafale, nacionalidade, atividadepro) VALUES
(1, 'Santiago Calatrava', '1951-07-28', NULL, 'Espanhol', 'Arquiteto'),
(2, 'Eike Batista', '1956-11-03', NULL, 'Brasileiro', 'Empresário'),
(3, 'Jorge Gerdau', '1936-12-24', NULL, 'Brasileiro', 'Empresário');

INSERT INTO MUSFUND (idpes, idtur) VALUES
(1, 2),
(2, 2),
(3, 4);