create database db_registroescolar;

use db_registroescolar;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
nchamada int,
nota int,
falta int,
aprovado boolean,
primary key (id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Almiro",3,8,13,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Bianca",6,9,7,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Carla",10,5,23,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Debora",16,2,55,false);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Giovanna",18,6,20,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Isabela",19,8,8,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Mariana",29,3,22,true);
insert into tb_estudantes(nome,nchamada,nota,falta,aprovado)
values("Victoria",31,2,73,false);

select * from tb_estudantes where nota >7;
select * from tb_estudantes where nota <7;

update tb_estudantes set nome="Jubileu", nchamada = 20,
nota = 5, falta = 8
where id=4;

select * from tb_estudantes;

