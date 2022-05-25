/*
ATIVIDADE 01

1.	Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
2.	Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
3.	Insira nesta tabela no mínimo 5 dados (registros).
4.	Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
5.	Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
6.	Ao término atualize um registro desta tabela através de uma query de atualização.
7.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_rh;

use db_rh;

create table funcionario(
	idfuncionario bigint auto_increment primary key,
    nomefuncionario varchar(255) not null,
    nrocarteirafuncionario int not null,
    telefonefuncionario varchar(255) not null,
    salariofuncionario decimal(10,2) not null
);

insert into funcionario(nomefuncionario, nrocarteirafuncionario, telefonefuncionario, salariofuncionario) values("João Neres", 123456, "+5517997938669", 4500.00);
insert into funcionario(nomefuncionario, nrocarteirafuncionario, telefonefuncionario, salariofuncionario) values("Henrique Brito", 456789, "+5517997797945", 3600.00);
insert into funcionario(nomefuncionario, nrocarteirafuncionario, telefonefuncionario, salariofuncionario) values("Allana Vilharva", 789123, "+5517994568977", 5000.00);
insert into funcionario(nomefuncionario, nrocarteirafuncionario, telefonefuncionario, salariofuncionario) values("Amanda Brito", 147258, "+5517887444512", 1095.50);
insert into funcionario(nomefuncionario, nrocarteirafuncionario, telefonefuncionario, salariofuncionario) values("Irineu Irineia", 258369, "+551745789963", 200.00);

select * from funcionario where salariofuncionario>2000.00;

select * from funcionario where salariofuncionario<2000.00;

update funcionario set salariofuncionario=10000.00 where nomefuncionario="João Neres";