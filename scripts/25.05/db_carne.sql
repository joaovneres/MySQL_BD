/*
Atividade 4

Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
4.	Insira 5 registros na tabela tb_categorias.
5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
11.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
	idcategoria bigint auto_increment primary key,
    nomecategoria varchar(255) not null,
    importadocategoria boolean not null
);

create table tb_produtos(
	idproduto bigint auto_increment primary key,
    nomeproduto varchar(255) not null,
    valorproduto decimal(7,2) not null,
    qtdproduto int not null,
    medidaqtdproduto varchar(255) not null,
    idcategoria bigint not null,
    foreign key(idcategoria) references tb_categorias(idcategoria)
);

insert into tb_categorias(nomecategoria, importadocategoria) values("Bovino")