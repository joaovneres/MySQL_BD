/*
Atividade 3

1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
4.	Insira 5 registros na tabela tb_categorias.
5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
11.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	idcategoria bigint auto_increment primary key,
    nomecategoria varchar(255) not null,
    setorcategoria varchar(255) not null
);

create table tb_produtos(
	idproduto bigint auto_increment primary key,
    nomeproduto varchar(255) not null,
    valorproduto decimal(10,2) not null,
    valorcompraproduto decimal(10,2) not null,
    qtdproduto int not null,
    idcategoria bigint not null,
    foreign key(idcategoria) references tb_categorias(idcategoria)
);

insert into tb_categorias(nomecategoria, setorcategoria) values ("Higiene pessoal", "A-2");
insert into tb_categorias(nomecategoria, setorcategoria) values ("Remédios", "B-1");
insert into tb_categorias(nomecategoria, setorcategoria) values ("Bebês", "A-1");
insert into tb_categorias(nomecategoria, setorcategoria) values ("Cuidados íntimos", "A-3");
insert into tb_categorias(nomecategoria, setorcategoria) values ("Curativos", "B-2");

insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Xampu", 19.99, 9.99, 10, 1);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Condicionador", 14.99, 9.99, 10, 1);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Doril", 9.99, 6.99, 8, 2);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Lactopurga", 7.99, 5.99, 10, 2);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Merthiolate", 9.99, 5.99, 7, 5);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Fralda", 59.99, 49.99, 20, 3);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Mamadeira", 19.99, 14.99, 10, 3);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Preservativo", 4.99, 2.99, 20, 4);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Banheira", 69.99, 49.99, 5, 3);
insert into tb_produtos(nomeproduto, valorproduto, valorcompraproduto, qtdproduto, idcategoria) values("Gaze", 19.99, 14.99, 8, 5);

select * from tb_produtos where valorproduto > 50;

select * from tb_produtos where valorproduto between 5 and 60;

select * from tb_produtos where nomeproduto like ("%c%");

select * from tb_produtos p inner join tb_categorias c on p.idcategoria=c.idcategoria;

select * from tb_produtos p inner join tb_categorias c on p.idcategoria=c.idcategoria where c.nomecategoria="Bebês";