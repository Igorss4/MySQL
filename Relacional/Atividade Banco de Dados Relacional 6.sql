CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
modulo VARCHAR(255),
instrutor VARCHAR(255),
categoria VARCHAR(255)
);
SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
duracao VARCHAR(255),
preco DOUBLE,
descricao VARCHAR(255),
promocao boolean,
	categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)
);
SELECT * FROM tb_curso;

INSERT INTO tb_categoria(modulo,instrutor,categoria)
VALUES ("Modulo 1","Caio","Tech");
INSERT INTO tb_categoria(modulo,instrutor,categoria)
VALUES ("Modulo 1","Pedro","ADM");
INSERT INTO tb_categoria(modulo,instrutor,categoria)
VALUES ("Modulo 2","Fernanda","Tech");
INSERT INTO tb_categoria(modulo,instrutor,categoria)
VALUES ("Modulo 2","Patricia","Economia");
INSERT INTO tb_categoria(modulo,instrutor,categoria)
VALUES ("Modulo 3","Angel","Programação");
SELECT * FROM tb_categoria;

INSERT INTO tb_curso(nome,duracao,preco,descricao,promocao,categoria_id)
VALUES("Java POO Avançado","120 Horas",199.98,"Curso para aperfeiçoamento em POO",FALSE,5);
INSERT INTO tb_curso(nome,duracao,preco,descricao,promocao,categoria_id)
VALUES("Iniciação a Programação","90 Horas",149.98,"Curso para Iniciar em Programação",FALSE,1);
INSERT INTO tb_curso(nome,duracao,preco,descricao,promocao,categoria_id)
VALUES("Iniciando em Adiministração","140 Horas",135.77,"Curso para começar a administrar",TRUE,2);
INSERT INTO tb_curso(nome,duracao,preco,descricao,promocao,categoria_id)
VALUES("Entendendo Logica","110 Horas",210.45,"Curso especializado em Logica",FALSE,3);
INSERT INTO tb_curso(nome,duracao,preco,descricao,promocao,categoria_id)
VALUES("Economia do Bem","80 Horas",99.98,"Curso voltado a conceitos da Economia",TRUE,4);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 50.0;
SELECT * FROM tb_curso WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM tb_curso WHERE nome LIKE "%J%";

SELECT * FROM tb_curso
INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id;

SELECT * FROM tb_curso WHERE categoria_id = 3;