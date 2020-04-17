CREATE TABLE TB_VENDEDOR (
    ID_VENDEDOR VARCHAR(20) PRIMARY KEY,
    NOME_VENDEDOR VARCHAR(20)
)

CREATE TABLE TB_PRODUTO (
    ID_PRODUTO VARCHAR(20) PRIMARY KEY NOT NULL,
    NOME_PRODUTO VARCHAR(100),
    CATEGORIA VARCHAR(50),
    SEGMENTO VARCHAR(50),
    FABRICANTE VARCHAR(50)
)

CREATE TABLE TB_REGIAO (
    ID_REGIAO VARCHAR(20) PRIMARY KEY NOT NULL,
    CIDADE VARCHAR(50),
    ESTADO VARCHAR(50)
)

CREATE TABLE TB_TEMPO (
    DATA DATE PRIMARY KEY NOT NULL
)

CREATE TABLE TB_VENDAS (
    ID_PRODUTO VARCHAR(20) NOT NULL,
    ID_REGIAO VARCHAR(20) NOT NULL,
    ID_VENDEDOR VARCHAR(20) NOT NULL,
    DATA DATE NOT NULL,
    VALOR_VENDA FLOAT,
    CONSTRAINT pk_composta_vendas PRIMARY KEY (ID_PRODUTO, ID_REGIAO, ID_VENDEDOR, DATA)
)