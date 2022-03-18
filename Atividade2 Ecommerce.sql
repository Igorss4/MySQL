create database db_ecommerce;
use  db_ecommerce;
create table tb_estoque(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
quantidade int,
preco double,
avaliacao varchar(255),
primary key(id)
);
select * from tb_estoque;
insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Mel","Alimenticio",1,125.80,"4.2 de 5 Estrelas!");
insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Granola","Alimenticio",115,60.80,"4.8 de 5 Estrelas!");

insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Óleo para massagem","Cosmético",57,95.82,"3.9 de 5 Estrelas!");
insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Protetor para rosto","Cosmético",120,500.5,"4.5 de 5 Estrelas!");

insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Pacote InBeleze","Cosmético",15,699.98,"4.9 de 5 Estrelas!");
insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Luminaria de Bambu","Decoração",30,752.35,"3.8 de 5 Estrelas!");

insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Cesta Breakfast","Alimenticio",10,99.40,"5 de 5 Estrelas!");
insert into tb_estoque(nome,tipo,quantidade,preco,avaliacao)
values("Bala de Canela","Alimenticio",200,5.0,"6 de 5 Estrelas!");

select * from tb_estoque where preco >500;
select * from tb_estoque where preco <500;

update tb_estoque set nome="InBeleze Packet", quantidade = 10,
preco = 788.55, avaliacao = "4.4 de 5 Estrelas"
where id=5;

select * from tb_estoque;

