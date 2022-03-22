Create database db_pokemon; -- criar banco de dados

use db_pokemon;

create table tb_kanto( -- criar tabela 
	id bigint auto_increment, -- nao saber a quantidades de id
	nome varchar(255),
	tipo varchar(255),
	ataque int,

	primary key(id) -- chave da tabela
);

select * from tb_kanto; -- o * é para ver tudo

insert into tb_kanto(nome, tipo, ataque) values ("Bulbasaur","Planta-Veneno", 21); -- insere os valoresss

alter table tb_kanto add defesa int;
insert into tb_kanto(defesa) values (19);
select * from tb_kanto;