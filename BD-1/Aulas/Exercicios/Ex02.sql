--Criar um banco de dados:
CREATE DATABASE provaSofrida;

-- Passar a trabalhar dentro desse DB:

use provaSofrida;

CREATE TABLE Produtos (
    codigo int,
    descricao VARCHAR(80),
    preco money
);

-- selecionar todos os dados da tabela:
SELECT * FROM Produtos;

-- cadastre um produto:
INSERT INTO Produtos (codigo, descricao, preco)
VALUES (100, 'Folha de Papel', 37);

-- criar novas colunas na tabela:
ALTER TABLE Produtos (
    ADD  COLUMN CodigoCidade int
    ADD  COLUMN NomeCidade varchar(80)
    ADD  COLUMN UF varchar(2)
