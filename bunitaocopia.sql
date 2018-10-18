aula revisão create, alter and restrictions...

create database ubunitaocopia;

use ubunitaocopia;

create table cidade(
cod_cidade int not null,
nome_cidade varchar(30),
primary key(cod_cidade)
);

create table percurso(
cod_percurso int not null,
cidade_destino int not null,
cidade_origem int not null,
qte_passageiros int not null check(qte_passageiros > 20),
primary key(cod_percurso),
foreign key(cidade_origem) references cidade(cod_cidade),
foreign key(cidade_destino) references cidade(cod_cidade)
);

