CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
nivel VARCHAR(255),
entrega BOOLEAN
);
SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
tipo VARCHAR(255),
preco DOUBLE,
quantidade INT,
peso VARCHAR(255),
	categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)
);
SELECT * FROM tb_produto;

INSERT INTO tb_categoria(tipo,nivel,entrega)
VALUES ("Eletrico","Nivel Medio",FALSE);
INSERT INTO tb_categoria(tipo,nivel,entrega)
VALUES ("Hidraulico","Nivel Baixo",FALSE);
INSERT INTO tb_categoria(tipo,nivel,entrega)
VALUES ("Ferramenta","Nivel Medio",FALSE);
INSERT INTO tb_categoria(tipo,nivel,entrega)
VALUES ("Material","Nivel Baixo",FALSE);
INSERT INTO tb_categoria(tipo,nivel,entrega)
VALUES ("Insumo","Nivel Medio",TRUE);
SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Tijolo","Baiano",2.99,700,"Kg",5);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Bloco","Concreto",6.99,500,"Kg",5);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Bobina de Cabo","4mm",462.98,100,"kg",1);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Joelho de PVC","2''",7.49,6,"Kg",2);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Martelo","Boleado",45.69,2,"Kg",3);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Cimento","Amiantado",90.89,15,"Kg",4);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Jogo de Chave Allen","Aço",33.20,1,"Kg",3);
INSERT INTO tb_produto(nome,tipo,preco,quantidade,peso,categoria_id)
VALUES("Areia","Média",12.99,4,"552Kg",5);
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto WHERE categoria_id = 3;
