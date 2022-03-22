create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255),
genero varchar(255),
salario decimal(5,2),
funcao varchar(255),
ferias boolean,
primary key (id)
);
select * from tb_funcionaries;

insert into tb_funcionaries(nome,genero,salario,funcao,ferias)
values("Pedro","Masculino",1651.22,"Estagiario",true);
insert into tb_funcionaries(nome,genero,salario,funcao,ferias)
values("Katarina","Masculino",2144.12,"Estagiario",false);
insert into tb_funcionaries(nome,genero,salario,funcao,ferias)
values("Sophie","Feminino",3655.10,"Dev Junior",false);
insert into tb_funcionaries(nome,genero,salario,funcao,ferias)
values("Ravena","Neutro",1985.46,"Estagiarie",false);
insert into tb_funcionaries(nome,genero,salario,funcao,ferias)
values("Carlos","Masculino",5122.21,"Dev Pleno",true);

select * from tb_funcionaries where salario >2000;
select * from tb_funcionaries where salario <2000;

update tb_funcionaries set nome="Paula", genero = "Neutro",
salario = 5520.33, funcao = "Dev Senior", ferias = false
where id=5;

select * from tb_funcionaries;
