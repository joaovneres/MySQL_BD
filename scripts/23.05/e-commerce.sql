/*
Atividade 2

1.	Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
2.	Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
3.	Insira nesta tabela no mínimo 8 dados (registros).
4.	Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
5.	Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
6.	Ao término atualize um registro desta tabela através de uma query de atualização.
7.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_ecommerce;

use db_ecommerce;

create table produto(
	idproduto bigint auto_increment primary key,
    nomeproduto varchar(255) not null,
    valorproduto decimal(10,2) not null,
    valorcompraproduto decimal(10,2) not null,
    qtdproduto int not null
);

insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Bolsa", 49.99, 35, 10);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Estojo", 37.99, 19.49, 30);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Fichário Monster High", 599.99, 430, 3);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Caderno", 19.99, 15, 200);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Lápis", 4.99, 2, 2000);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Guache", 11, 6, 20);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Giz de cera", 4.99, 3.50, 30);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Borracha", 0.50, 0.15, 1000);
insert into produto (nomeproduto, valorproduto, valorcompraproduto, qtdproduto) values ("Lousa digital", 1500, 1100, 3);

select * from produto where valorproduto>500;

select * from produto where valorproduto<500;

update produto set valorproduto = valorproduto-100 where valorproduto>500;