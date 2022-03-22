CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
uso VARCHAR(255),
controleEspecial BOOLEAN,
faixaEtaria VARCHAR(255)
);
SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
tipo VARCHAR(255),
preco DOUBLE,
quantidade INT,
descricao VARCHAR(255),
	categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)
    );
    SELECT * FROM tb_produto;
    
INSERT INTO tb_categoria(uso,controleEspecial,faixaEtaria)
VALUES ("Via Oral",TRUE,"ADULTO");
INSERT INTO tb_categoria(uso,controleEspecial,faixaEtaria)
VALUES ("Via Oral",FALSE,"LIVRE");
INSERT INTO tb_categoria(uso,controleEspecial,faixaEtaria)
VALUES ("Uso Parenterais",FALSE,"ADULTO");
INSERT INTO tb_categoria(uso,controleEspecial,faixaEtaria)
VALUES ("Via Nasal",FALSE,"PEDIATRICO");
INSERT INTO tb_categoria(uso,controleEspecial,faixaEtaria)
VALUES ("Via Sublingual",FALSE,"ADULTO");
SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Valium","Sedativo",52.41,30,"Valium 10MG, contem 30 comprimidos",1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Dorflex","Analgesico",6.0,10,"Age na dor e Relaxa a tensão muscular",2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Alivium","Antifebril",33.99,20,"Indicado para o alivio da febre e dor",2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Benzetacil","Antibiotico",15.79,1,"Indicado no tratamento de infecções",3);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Toragesic","Anti-Inflamatório",28.6,10,"Indicado para dores de curto prazo",4);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Rinosoro Sic","Descongenstionantes",20.25,50,"Indicado para a descongestão nasal",5);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Sundown Naturals","Vitamina",178.88,100,"Suplemento vitamínico indicado como auxiliar do sistema imunológico",2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,descricao,categoria_id)
VALUES("Primera 20","Anticoncepcional",26.36,21,"Anticoncepcional",2);
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto WHERE categoria_id = 2;