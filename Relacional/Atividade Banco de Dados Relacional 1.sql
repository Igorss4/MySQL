CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(255),
	passiva VARCHAR(255),
	nivel INT,
	habilidade VARCHAR(255),
	arma VARCHAR(255)
);
SELECT * FROM tb_classe;
CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
	raca VARCHAR(255),
	hp INT,
	mp INT,
	ataque INT,
	defesa INT,
	classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
SELECT * FROM tb_personagem;
INSERT INTO tb_classe(classe,passiva,nivel,habilidade,arma)
VALUES ("Guerreiro","Pericia em Corpo a Corpo",120,"Golpe de Espada","Espada Sanguinária");
INSERT INTO tb_classe(classe,passiva,nivel,habilidade,arma)
VALUES ("Arqueiro","Alvo na Mira",150,"Ponto Fraco","Arco de Cristal");
INSERT INTO tb_classe(classe,passiva,nivel,habilidade,arma)
VALUES ("Mago","Arcanismo",161,"Inferno Ascendente","Cajado Proeficiente");
INSERT INTO tb_classe(classe,passiva,nivel,habilidade,arma)
VALUES ("Ladrão","Mãos Leves",200,"Apunhalada","Adaga de Belchen");
INSERT INTO tb_classe(classe,passiva,nivel,habilidade,arma)
VALUES ("Druida","Naturalista",245,"Xamanismo","Luvas de Gaia");
SELECT * FROM tb_classe;
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Bernardo","Orc",4051,2541,3254,3221,1);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Kyrlia","Elfa",3201,3214,4552,1804,2);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Hendgo","Anão",5211,4215,1541,6550,5);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Bia","Humana",5123,6541,5411,2554,3);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Finch","Semi-Deus",7240,3551,4521,2640,4);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Jublich","Demonio",4561,4215,3321,2640,3);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Griseld","Centauro",3255,2987,3321,2640,4);
INSERT INTO tb_personagem(nome,raca,hp,mp,ataque,defesa,classe_id)
VALUES ("Bobreds","Golem",9545,2974,3321,2640,1);
SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000; -- outra forma de fazer a pesquisa
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT  * FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;

SELECT  * FROM tb_classe
INNER JOIN tb_personagem ON tb_personagem.classe_id =tb_classe.id 
WHERE tb_classe.id = 1;

SELECT * FROM tb_personagem WHERE classe = 3;

SELECT  * FROM tb_personagem
LEFT JOIN tb_classe ON tb_classe.id = tb_personagem.id; -- COMO MOSTRA TODOS MEUS BONECOOOOOOOOOO????????
