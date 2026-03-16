CREATE TABLE CIDADE (
    idcid INT PRIMARY KEY,
    estado VARCHAR(2) NOT NULL,
    nomecid VARCHAR(100) NOT NULL,
    populacao INT
);

CREATE TABLE HOTEL (
    idhot INT PRIMARY KEY,
    idcid INT NOT NULL,
    estrelas INT CHECK (estrelas IN (1, 2, 3, 4, 5)),
    enderecohot VARCHAR(255) NOT NULL,
    nomehot VARCHAR(100) NOT NULL,
    FOREIGN KEY (idcid) REFERENCES CIDADE(idcid)
);

CREATE TABLE TIPOQUARTO (
    tipoquarto VARCHAR(2) CHECK (tipoquarto IN ('C', 'L', 'SL')),
    idhot INT,
    preco DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (tipoquarto, idhot),
    FOREIGN KEY (idhot) REFERENCES HOTEL(idhot) ON DELETE CASCADE
);

CREATE TABLE QUARTO (
    numquarto INT,
    idhot INT,
    tipoquarto VARCHAR(2),
    PRIMARY KEY (numquarto, idhot),
    FOREIGN KEY (tipoquarto, idhot) REFERENCES TIPOQUARTO(tipoquarto, idhot) ON DELETE CASCADE,
    FOREIGN KEY (idhot) REFERENCES HOTEL(idhot) ON DELETE CASCADE
);

CREATE TABLE RESTAURANTE (
    idres INT PRIMARY KEY,
    precomedioref DECIMAL(10, 2),
    tipoculi VARCHAR(3) CHECK (tipoculi IN ('JAP', 'ITA', 'FRA', 'BRA', 'GEN')),
    nomeres VARCHAR(100) NOT NULL
);

CREATE TABLE RESTAURANTENORM (
    idres INT PRIMARY KEY,
    idcid INT NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    FOREIGN KEY (idres) REFERENCES RESTAURANTE(idres) ON DELETE CASCADE,
    FOREIGN KEY (idcid) REFERENCES CIDADE(idcid)
);

CREATE TABLE RESTAURANTEHOT (
    idhot INT,
    idres INT,
    PRIMARY KEY (idhot, idres),
    FOREIGN KEY (idhot) REFERENCES HOTEL(idhot) ON DELETE CASCADE,
    FOREIGN KEY (idres) REFERENCES RESTAURANTE(idres) ON DELETE CASCADE
);

CREATE TABLE RESTAURANTECASA (
    idtur INT,
    idres INT,
    PRIMARY KEY (idtur, idres),
    FOREIGN KEY (idres) REFERENCES RESTAURANTE(idres) ON DELETE CASCADE
);

CREATE TABLE PONTOTURISTICO (
    idtur INT PRIMARY KEY,
    idcid INT NOT NULL,
    tipotur VARCHAR(1) CHECK (tipotur IN ('I', 'M', 'C')),
    endereco VARCHAR(255) NOT NULL,
    descricaotur TEXT,
    FOREIGN KEY (idcid) REFERENCES CIDADE(idcid)
);

CREATE TABLE IGREJA (
    idtur INT PRIMARY KEY,
    dataconst DATE,
    estiloconst VARCHAR(50),
    FOREIGN KEY (idtur) REFERENCES PONTOTURISTICO(idtur) ON DELETE CASCADE
);

CREATE TABLE CASADESHOW (
    idtur INT PRIMARY KEY,
    diafechamento VARCHAR(3) CHECK (diafechamento IN ('seg', 'ter', 'qua', 'qui', 'sex', 'sab', 'dom')),
    horarioabert TIME,
    horariofecha TIME,
    FOREIGN KEY (idtur) REFERENCES PONTOTURISTICO(idtur) ON DELETE CASCADE
);

ALTER TABLE RESTAURANTECASA 
ADD CONSTRAINT fk_restcasa_idtur FOREIGN KEY (idtur) REFERENCES CASADESHOW(idtur) ON DELETE CASCADE;

CREATE TABLE MUSEU (
    idtur INT PRIMARY KEY,
    datafund DATE,
    numsalas INT,
    FOREIGN KEY (idtur) REFERENCES PONTOTURISTICO(idtur) ON DELETE CASCADE
);

CREATE TABLE FUNDADOR (
    idpes INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    datanas DATE NOT NULL,
    datafale DATE,
    nacionalidade VARCHAR(50),
    atividadepro VARCHAR(100)
);

CREATE TABLE MUSFUND (
    idpes INT,
    idtur INT,
    PRIMARY KEY (idpes, idtur),
    FOREIGN KEY (idpes) REFERENCES FUNDADOR(idpes) ON DELETE CASCADE,
    FOREIGN KEY (idtur) REFERENCES MUSEU(idtur) ON DELETE CASCADE
);