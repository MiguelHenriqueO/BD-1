-- Active: 1778544382276@@127.0.0.1@3306
CREATE DATABASE EscolaTeste;

use EscolaTeste;

CREATE TABLE Alunos (
    RA int,
    nome varchar(80),
    data_nasc date,
    fone varchar(90),
    mae VARCHAR(50),
    pai VARCHAR(50)
);

-- date e datetime temcomo principal diferença o formato de data, onde o date tem o formato 'YYYY-MM-DD' e o datetime tem o formato 'YYYY-MM-DD HH:MM:SS'


--char e varchar tem como principal diferença o fato de que o char tem um tamanho fixo, ou seja, se for definido como char(10) e for inserido um valor com 5 caracteres, os outros 5 caracteres serão preenchidos com espaços em branco. Já o varchar tem um tamanho variável, ou seja, se for definido como varchar(10) e for inserido um valor com 5 caracteres, ele ocupará apenas os 5 caracteres sem preencher os outros 5 com espaços em branco.

CREATE TABLE Alunos2 (
    RA int,
    nome varchar(80) NOT NULL,
    data_nasc datetime,
    fone varchar(20),
    mae VARCHAR(50),
    pai VARCHAR(50)
);

SELECT * FROM Alunos;
SELECT * FROM Alunos2;

--cadastrar um novo registro na tabela Alunos preenchendo colunas especificas
insert into Alunos2(RA, pai, mae, nome)
VALUES (102030, 'João', 'Maria', 'Ana');

--criar uma nova coluna na tabela Alunos2
ALTER TABLE Alunos2 ADD naturalidade varchar(80);

ALTER TABLE Alunos2 ALTER COLUMN nome varchar(80) NOT NULL;

--inserir novo registro sem passar valor para coluna nome

INSERT INTO Alunos2 (RA, mae)
VALUES(203040, 'Paula');

DROP TABLE Alunos2;