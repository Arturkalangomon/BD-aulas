1-> create database UBUNITAO; 

2-> use UBUNITAO;

    create table CIDADE(
	Cod_cidade int not null,
	Nome_cidade varchar(50),
	primary key(Cod_cidade)
	);

3-> create table PERCURSO(
	Cod_percurso int not null,
	Cidade_origen int not null,
	Cidade_destino int not null,
	Qte_passageiros int check(Qte_passageiros > 20),
	primary key(Cod_percurso),
	foreign key(Cidade_destino) references cidade(Cod_cidade),
	foreing key(Cidade_origen) references cidade(Cod_cidade)
	);

4-> alter table cidade
    add distancia int;

5-> alter table Percurso
    add Tempo_Viagem int check(Tempo_Viagem > 1);