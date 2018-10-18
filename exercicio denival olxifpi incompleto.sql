-- correçao do exercico denival --

olxifpi c

-- 1 
create database olxifpi;

use olxifpi;

create table estado(
UF varchar(2) not null,
nome varchar(35),
primary key(UF)
);

-- 2 povoar

insert into estado values("PI","Piaui");
insert into estado values("MA","Maranhão");
insert into estado values("CE","Ceará");

-- 3
insert into estado values("PI","Piaui");

-- erro valor duplicado, pq ja existe..

-- 4
delete from estado
where uf = "MA";

create table categoria(
idCategoria int not null,
nome varchar(30),
primary key(idCategoria)
);



-- 5

insert into categoria values (1,"Imoveis");
insert into categoria values (2,"Veiculos");
insert into categoria values (3,"Emprego");


create table usuario(
idUsuario int not null,
nome varchar(35),
primary key (idUsuario)
);

-- 6

alter table usuario
add idade int;

-- 7

insert into usuario values(1,"Denival", 40);
insert into usuario values(2,"Marilia", 60);
insert into usuario values(3,"Jamilly", 10);
insert into usuario(idUsuario, nome) values(4,"Athanio");


-- 8

update
   set idade = 35
where idUsuario = 4;

-- 11

alter table usuario
add check(idade > 12);

-- 12
update usuario
   set idade = 41
where idUsuario = 1;


-- 9
create table Postagem(
numPostagem int not null,
descricao varchar(50),
usuario int not null,
primary key(numPostagem),
foreign key(usuario) references Usuario(idUsuario)
);


alter table postagem
add estado varchar(2);

alter table postagem
add foreign key(estado) references estado(uf);

-- 11


-- 13 --

insert into postagem values(1,1,4,"Vendo uma casa velha","PI");
insert into postagem values(2,3,1,"Emprego de programador","CE");
insert into postagem values(3,2,3,"Vendo Fusca 70","PI");