/*
ATIVIDADE 01
1.	Crie um banco de dados para a quitanda Generation, onde o sistema trabalhará com as informações dos produtos desta empresa. 
2.	Crie uma tabela de produtos e determine 5 atributos relevantes destes produtos para se trabalhar com o sistema da quitanda.
3.	Insira nesta tabela no mínimo 8 dados (registros).
4.	Faça um SELECT que retorne todos os produtos que sejam frutas.
5.	Faça um SELECT que retorne todos os produtos que sejam legumes.
6.	Ao término atualize um registro desta tabela através de uma query de atualização.
7.	Por fim, faça um DELETE de todas às verduras. 
8.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_quitanda;
use db_quitanda;

create table categoria(
	idCategoria bigint auto_increment,
    tipoCategoria varchar(255) not null,
    primary key(idCategoria)
);

insert into categoria(tipoCategoria) values ("Frutas");
insert into categoria(tipoCategoria) values ("Verduras");
insert into categoria(tipoCategoria) values ("Legumes");

select * from categoria;

create table produtos(
	idProduto bigint auto_increment,
    nomeProduto varchar(255) not null,
    valorProduto decimal(8,2) not null,
    qtdProduto int not null,
    idCategoria bigint not null,
    primary key(idProduto),
    foreign key(idCategoria) references categoria (idCategoria)
);

insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Abacate",3.50,8,1);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Alface",4,5,2);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Kiwi",8.50,10,1);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Cenoura",7.50,10,2);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Batata-doce",2,20,3);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Acerola",3.75,12,1);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Beterraba",6.50,2,3);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Cebolinha",3.50,10,2);
insert into produtos(nomeProduto, valorProduto, qtdProduto, idCategoria) values ("Banana",3,15,2);

select nomeProduto, valorProduto, qtdProduto, tipoCategoria from produtos natural join categoria where tipoCategoria="Frutas";

select nomeProduto, valorProduto, qtdProduto, tipoCategoria from produtos natural join categoria where tipoCategoria="Legumes";

update produtos set idCategoria=1 where idProduto=9; /*alterando banana*/

delete from produtos where idCategoria=1;