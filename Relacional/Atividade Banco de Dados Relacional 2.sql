CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(255),
massa VARCHAR(255),
sabor VARCHAR(255)
);
SELECT * FROM tb_categoria;
CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
sabor VARCHAR(255),
preco DOUBLE,
borda VARCHAR(255),
promocao BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)
);
SELECT * FROM tb_pizza;
INSERT INTO tb_categoria(tamanho,massa,sabor)
VALUES ("Mini","Grossa","Doce");
INSERT INTO tb_categoria(tamanho,massa,sabor)
VALUES ("Pequena","Grossa","Salgada");
INSERT INTO tb_categoria(tamanho,massa,sabor)
VALUES ("Média","Média","Salgada");
INSERT INTO tb_categoria(tamanho,massa,sabor)
VALUES ("Média","Média","Doce");
INSERT INTO tb_categoria(tamanho,massa,sabor)
VALUES ("Grande","Fina","Salgada");
SELECT * FROM tb_categoria;

INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Prestigio","Chocolate Belga com Coco Fresco Ralado",35.70,"Sem Recheio",TRUE,1);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("4 Queijos","Mussarela, Parmesão, Gorgonzola e Catupiry",48.80,"Borda de Cheddar",FALSE,3);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Frango 1","Frango desfiado, Mussarela e Catupiry",34.88,"Borda de Catupiry",TRUE,2);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Brocolis 2","Brocolis, Mussarela, Bacon e Catupiry",59.99,"Sem Recheio",FALSE,5);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Monthanara","Tomates, Catupiry, Calabresa, Orégano",43.55,"Sem Recheio",FALSE,5);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Banana Royal","Banana Caramelizada com Leite Condensado e Canela",44.5,"Borda de Chocolate",FALSE,4);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Toscana","Mussarela, coberta com calabresa curada moída salpicada de orégano",69.10,"Sem Recheio",TRUE,5);
INSERT INTO tb_pizza(nome,sabor,preco,borda,promocao,categoria_id)
VALUES ("Capriciosa","Molho de tomates, Queijo Brie, Coberta com fatias de abobrinha assada e temperada",57.52,"Borda de Provolone",FALSE,3);
SELECT * FROM tb_pizza;

SELECT *FROM tb_pizza WHERE preco > 45.0;
SELECT *FROM tb_pizza WHERE preco BETWEEN 29.0 AND 60.0;
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT  * FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza WHERE categoria_id = 5;