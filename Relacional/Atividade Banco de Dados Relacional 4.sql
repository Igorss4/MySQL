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
VALUES("Maçã","Gala",6.7,8,TRUE,2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Banana","Terra",8.5,12,TRUE,3);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Pera","Willians",10.3,9,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Cereja","Benton",22,6,TRUE,2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Uva","Merlot",16.5,12,TRUE,1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Abacaxi","Ajubá",11.5,7,TRUE,2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Melancia","Forrageira",9.9,2,TRUE,5);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao,categoria_id)
VALUES("Tomate","Carmem",13.4,10,TRUE,4);
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto WHERE categoria_id = 5;
