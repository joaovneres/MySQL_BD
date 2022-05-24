/*
Atividade 2
1.	Crie um banco de dados para um brechó online, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
2.	Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
3.	Insira nesta tabela no mínimo 8 dados (registros).
4.	Faça um SELECT que retorne todos os produtos com o valor maior do que 50.
5.	Faça um SELECT que retorne todos os produtos com o valor menor do que 50.
6.	Faça um SELECT que retorne todos os produtos com ID = 2.
7.	Ao término atualize um registro desta tabela através de uma query de atualização.
8.	Por fim, faça um DELETE dos produtos com ID = 2 e ID = 3. 
9.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_brecho;
use db_brecho;

create table produtos(
	idProduto bigint auto_increment,
    tipoProduto varchar(255) not null,
    tamanhoProduto varchar(3) not null,
    valorProduto decimal(4,2) not null,
    situacaoProduto varchar(255) not null,
    primary key(idProduto)
);

insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Camisa", "M", 9.99, "Perfeito estado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Calça", "44", 60.99, "Bom estado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Macacão", "50", 99.99, "Perfeito estado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Short", "M", 19.99, "Um pouco desbotado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Tênis", "41", 99.99, "Perfeito estado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Short", "GG", 29.99, "Perdeu um pouco o elástico");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Calça", "38", 50.99, "Ótimo estado");
insert into produtos(tipoProduto, tamanhoProduto, valorProduto, situacaoProduto)
values("Macacão", "42", 49.99, "Perfeito estado");

select * from produtos where valorProduto>50;

select * from produtos where valorProduto<50;

select * from produtos where idProduto=2;

update produtos set tipoProduto="Jardineira" where tipoProduto="Macacão";

delete from produtos where idProduto in(2,3);