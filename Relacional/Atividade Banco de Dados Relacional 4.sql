CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
madura BOOLEAN,
estacao VARCHAR(255),
trangenico BOOLEAN
);
SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
tipo VARCHAR(255),
preco DOUBLE,
quantidade INT,
promocao BOOLEAN,
	categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)
);
SELECT * FROM tb_produto;

INSERT INTO tb_categoria(madura,estacao,trangenico)
VALUES (TRUE,"Outono",FALSE);
INSERT INTO tb_categoria(madura,estacao,trangenico)
VALUES (TRUE,"Verão",FALSE);
INSERT INTO tb_categoria(madura,estacao,trangenico)
VALUES (TRUE,"Inverno",FALSE);
INSERT INTO tb_categoria(madura,estacao,trangenico)
VALUES (FALSE,"Primavera",FALSE);
INSERT INTO tb_categoria(madura,estacao,trangenico)
VALUES (FALSE,"Verão",TRUE);
SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Maçã","Fruta",6.7,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Banana","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Pera","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Cereja","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Uva","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Abacaxi","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Melancia","Fruta",6.5,8,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Tomate","Fruta",6.5,8,TRUE,1);
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto WHERE categoria_id = 2;
