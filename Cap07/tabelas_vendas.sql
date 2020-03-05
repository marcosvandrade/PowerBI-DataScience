CREATE TABLE TB_VENDEDOR (
    ID_VENDEDOR VARCHAR(20) PRIMARY KEY,
    NOME_VENDEDOR VARCHAR(20)
)

COPY tb_vendedor FROM 'C:\Users\dcemvasconcellos\git\PowerBI-DataScience\Cap07\datasets-pratica\vendedor.csv' DELIMITER ',' CSV HEADER;

ERROR:  could not open file "C:\Users\dcemvasconcellos\git\PowerBI-DataScience\Cap07\datasets-pratica\vendedor.csv" for reading: Permission denied
HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
SQL state: 42501