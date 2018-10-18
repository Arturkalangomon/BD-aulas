create database UBUNITAO;

use UBUNITAO;

create table CIDADE(
Cod_cidade int not null,
Nome_cidade varchar(50),
primary key (Cod_cidade)
);

-- insira dados...
insert into cidade values(01,'Goiânia');
insert into cidade values(02,'Uberlândia');
insert into cidade values(03,'São Paulo');
insert into cidade values(04,'Rio de Janeiro');
insert into cidade values(05,'Brasilia');
insert into cidade values(06,'Belo Horizonte');

-- fin das provoação...

create table PERCURSO(
Cod_percurso int not null,
Cidade_destino int,
Cidade_origem int,
Qte_passageiros int,
primary key (Cod_percurso),
foreign key (Cidade_origem) references cidade(Cod_cidade),
foreign key (Cidade_destino) references cidade(Cod_cidade)
);

-- insira dados...

insert into percurso values(01,01,02,40);
insert into percurso values(03,03,01,45);
insert into percurso values(20,06,04,30);
insert into percurso values(23,04,02,25);
insert into percurso values(24,01,05,40);

-- diliça funciona beleza ^.-.^ B) aeeeee...

alter table cidade
add distancia int null;

-- criou mas ta vazio >.-.> :v adicionando...

-- alter table cidade values (05,'Brasilia',33);

insert into cidade values(10,'Brasilia', 33);


alter table percurso
add Tempo_viagem int check (Tempo_viagem > 1);

-- atividades extras do denival --

alter table percurso -- 1
add Hora_saida int; /* add Hora_saida time; */

alter table percurso -- 2
change Cidade_destino Destino int not null; /*não funciona*/

alter table percurso -- 3
drop distancia;

alter table percurso rename percursos; -- 4

alter table percursos
drop foreign key percursos_ibfk_2;
 show create table percursos; /*refente a percursos_ibfk_2*/
 