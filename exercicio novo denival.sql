create database RedeSociais;

use RedeSociais;

create table Sentimento(
idSentimento int not null,
nome varchar(15),
primary key(idSentimento)
);

create table Usuario(
idUsuario int not null,
nome varchar(35),
idade int null,
primary key(idUsuario)
);

create table Postagem(
numPostagem int not null,
hora varchar(5) not null, -- hora date, time time,
conteudo varchar(100),
sentimento int not null,
usuario int not null,
primary key(numPostagem),
foreign key(usuario) references Usuario(idUsuario),
foreign key(sentimento) references Sentimento(idSentimento)
);


-- questão 01 --

insert into Usuario
values(1,"Ricardo Silva",33);
insert into Usuario
values(2,"Jurandir Pascoal",54);
insert into Usuario
values(3,"Fernando Pessoa",17);
insert into Usuario
values(4,"Maria Clara",25);
insert into Usuario
values(5,"Artur da Silva",null);

-- complete...

-- questão 02 --
insert into Sentimento
values(1,"Alegre");
insert into Sentimento
values(2,"Festivo");
insert into Sentimento
values(3,"Triste");
insert into Sentimento
values(4,"Irritado");
-- complete....

-- questão 03 --

Update Usuario
set nome = "Artur da Silva",
		idade = 25
where idUsuario = 5
Update usuario
	set idade = 47
where id = 2;
-- complete ...

-- questão 04 --

Delete from Usuario
where idade < 18

-- complete ...

-- questão 05 --

insert into Postagem
values(1,"22:37","Hoje, conheci o amor da minha vida! C: <3 ", 2, 1);
insert into Postagem
values(2,"22:35","Conheci o amor da minha vida, awwwwww xD <3 !", 1, 4);

insert into Postagem
values(3,"16:30","Vamo sair hoje galera? :v ", 1, 5);

-- vide professor ...
insert into postagem
values(3,"14:45 de outubro", "Feriadão manolo!", 2, 5);
insert into postagem
values(4,"16:40 de outubro","Descanso no feriadão!", 1, 1);
-- vide proff par aa questão 08 ..
insert into Postagem
values(3,"2018 - 10 - 07","14:20:00","indo votar", 1, 5);

-- parece ok >.-.> :v ---

-- questão 06 --

Update Postagem
set conteudo = "Ces não vão não >:C ?!",
    sentimento = 3
where id = 3;


--- vide professor ... nesse caso, é para afetar todos...
update postagem
	set conteudo = "Feriado a Vista"
where = sentimento = 2 -- where usuario = 2;

--- se for um usuario especifico
update postagem
	set conteudo ="Feriadão a vista"
where usuario = 2;

-- 07 vide professor

delete from postagem
where sentimento = 3;

-- 08 vide professor
update postagem
	set conteudo = "Eleição 2018 - Indo Votar"
where dia = "2018 - 10 - 07";

-- 9 vide professor
-- tratamento de erro no sql é zuado... deixa passar (mesmo que o id não exista entre outros erros
update usuario
	set idade = idade + 1
where idUsuario = 2;