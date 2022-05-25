/*
Atividade 3

1.	Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
2.	Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
3.	Insira nesta tabela no mínimo 8 dados (registros).
4.	Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
5.	Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
6.	Ao término atualize um registro desta tabela através de uma query de atualização.
7.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_escola;

use db_escola;

create table estudante(
	idestudante bigint auto_increment primary key,
    nomeestudante varchar(255) not null,
    matriculaestudante int not null,
    datanascimentoestudante date not null,
    raestudante varchar(255) not null,
    mediageralestudante decimal(4,2) not null
);

insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Neres", 26, "2003-07-30", "105-x", 9.5);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("Gean Sousa", 25, "2001-01-30", "104-x", 7);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("Viviana Neres", 23, "1980-12-24", "102-x", 10);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("Adauto Sousa", 20, "1975-08-30", "99-x", 6.5);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("Irineu Irineia", 10, "2000-02-20", "98-x", 7.68);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Victor", 24, "2003-07-30", "105-x", 9.5);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Cosme", 11, "2003-06-29", "98-x", 5);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Sousa", 12, "2003-05-28", "95-x", 10);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Lucas", 13, "2003-04-27", "97-x", 8.5);
insert into estudante(nomeestudante, matriculaestudante, datanascimentoestudante, raestudante, mediageralestudante) values("João Pedro", 30, "2003-03-26", "101-x", 9.9);

select * from estudante where mediageralestudante > 7.0;

select * from estudante where mediageralestudante < 7.0;

update estudante set mediageralestudante = mediageralestudante + 1 where mediageralestudante < 7.0;