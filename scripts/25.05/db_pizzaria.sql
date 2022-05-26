/*
Atividade 2

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
2.	Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
4.	Insira 5 registros na tabela tb_categorias.
5.	Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6.	Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
7.	Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
8.	Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
11.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	idcategoria bigint auto_increment primary key,
    nomecategoria varchar(255) not null,
    modopreparado varchar(255) not null
);

create table tb_pizzas(
	idpizza bigint auto_increment primary key,
    nomepizza varchar(255) not null,
    valorpizza decimal(5,2) not null,
    ingredientespizza varchar(255) not null,
    tempopreparopizza varchar(255) not null,
    idcategoria bigint,
    foreign key(idcategoria) references tb_categorias(idcategoria)
);

insert into tb_categorias(nomecategoria, modopreparado) values("Napolitana", "Assada à lenha");
insert into tb_categorias(nomecategoria, modopreparado) values("Frita", "Frita em óleo");
insert into tb_categorias(nomecategoria, modopreparado) values("Pissalandrea", "Cozida");
insert into tb_categorias(nomecategoria, modopreparado) values("Salgada", "Assada ao forno");
insert into tb_categorias(nomecategoria, modopreparado) values("Doce", "Assada ao forno");

insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Alcatra parmegiana", 74.99, "Mussarela, alcatra, molho parmegiana e parmesão.","60 min", 1);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Alcatra ao alho", 69.99, "Mussarela e alcatra ao alho.","60 min", 1);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("El ninho", 49.99, "Chocolate e leite em pó.","40 min", 5);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Crocante", 49.99, "Chocolate com amendoim.","40 min", 5);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Bacon cheddar", 39.99, "Mussarela, bacon, e cheddar.","30 min", 4);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Napolitana Tradiocional", 49.99, "Mussarela, tomate e parmesão.","60 min", 1);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Presunto e queijo", 19.99, "Mussarela, tomate e presunto.","20 min", 2);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Bauru", 34.99, "Mussarela, frango, milho, ervilha e palmito.","70 min", 3);
insert into tb_pizzas(nomepizza, valorpizza, ingredientespizza, tempopreparopizza, idcategoria) values ("Crocante", 29.99, "Mussarela, bacon, frango, batata palha e azeitona.","35 min", 4);

select * from tb_pizzas where valorpizza > 45;

select * from tb_pizzas where valorpizza between 50 and 100;

select * from tb_pizzas where nomepizza like ("%m%");

select * from tb_pizzas p inner join tb_categorias c on p.idcategoria = c.idcategoria;

select * from tb_pizzas p inner join tb_categorias c on p.idcategoria = c.idcategoria where nomecategoria="Doce";