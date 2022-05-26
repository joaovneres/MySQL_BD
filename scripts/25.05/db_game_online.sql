/*
ATIVIDADE 01

Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

1.	Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
2.	Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
3.	Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
4.	Insira 5 registros na tabela tb_classes.
5.	Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
6.	Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
7.	Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
8.	Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
11.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	idclasse bigint auto_increment primary key,
    tipoclasse varchar(255) not null,
    tipoataqueclasse varchar(255) not null,
    distanciaataqueclasse varchar(255) not null
);

create table tb_personagens(
	idpersonagem bigint auto_increment primary key,
    nomepersonagem varchar(255) not null,
    nivelpersonagem int not null,
    raridadepersonagem varchar(255) not null,
    ataquepersonagem int not null,
    defesapersonagem int not null,
    idclasse bigint,
    foreign key(idclasse) references tb_classes(idclasse)
);

insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Cavaleiro", "Ataque corporal", "Curta");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Xamã", "Magia natural", "Média");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Arqueiro", "Flechas", "Longa");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Mago", "Magia", "Longa");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Assassino", "Ataque corporal silencioso", "Curta");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Sacerdote", "Cura", "Média");
insert into tb_classes (tipoclasse, tipoataqueclasse, distanciaataqueclasse) values ("Necromante", "Magia obscura", "Média");

insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Meliodas", 11, "Raro", "7000", "3500", 5);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Diane", 7, "Comum", "1000", "5000", 2);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Ban", 9, "Raro", "5500", "5000", 1);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Harlequim", 10, "Raro", "1500", "7000", 6);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Gowther", 5, "Comum", "2000", "3500", 3);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Merlin", 11, "Raro", "4000", "10000", 4);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Escanor", 11, "Raro", "6000", "4000", 1);
insert into tb_personagens (nomepersonagem, nivelpersonagem, raridadepersonagem, ataquepersonagem, defesapersonagem, idclasse) values ("Elizabeth", 4, "Raro", "500", "3500", 7);

select * from tb_personagens where ataquepersonagem > 2000;

select * from tb_personagens where defesapersonagem between 1000 and 2000;

select * from tb_personagens where nomepersonagem like ("%c%");

select * from tb_personagens tbp inner join tb_classes tbc on tbp.idclasse = tbc.idclasse;

select * from tb_personagens tbp inner join tb_classes tbc on tbp.idclasse = tbc.idclasse where tbc.tipoclasse = "Cavaleiro";