CREATE DATABASE exercicio1;

/*
Criar um novo banco de dados,
criar 1 tabela com nome, telefone, endereço, sexo, idade(int)
-- inserir 2 cadastros iguais,
-- inserir 2 cadastros com campos nulos

inserir pelo menos 10 cadastros
*/
CREATE TABLE cadastro(
	nome VARCHAR(50),
    sexo CHAR(1),
    idade INT(2),
    telefone VARCHAR(15),
    endereco VARCHAR(140)
);

INSERT INTO cadastro VALUES("Alan Albergaria Vitorino", 'M', 25, "(96) 98532-4456","Avenida Nove de Novembro"), ("Alan Albergaria Vitorino", "M", 25, "(96) 98532-4456","Avenida Nove de Novembro"), ("Gael Alves Quintela", 'M', 15, NULL, NULL), ("Berenice Dias Arruda", NULL, 48, "(31) 98288-8692", NULL), ("Thalia Bastos Arlia", 'F', 41, "(33) 98733-7405", "Travessa Florianópolis"), ("Antônia Pena Zuniga", 'F', 71, "(85) 97217-8164", "Rua Santa Mônica"), ("Clevisson Serra Gadelha", 'M', 36, "(82) 99974-7766", "Travessa Sampaio Marques"), ("Ivalter dos Passos Geraldo", 'M', 69, "(83) 99961-6094", "Rua José Francisco de Melo"), ("Gabriela Biango Couto", 'F', 45, "(94) 98547-3328", "Vila Batista"), ("Pedro Leonicio Estellet", 'M', 17, "(86) 96981-5651", "Quadra 355");

SELECT * FROM cadastro;

SELECT sexo FROM cadastro;

SELECT nome FROM cadastro WHERE nome = "Alan Albergaria Vitorino";

SELECT nome FROM cadastro WHERE nome LIKE 'Alan%';

SELECT nome FROM cadastro WHERE nome LIKE '%Vitorino%';

SELECT nome, endereco, telefone FROM cadastro WHERE sexo = 'M';

select nome, telefone from cadastro where sexo = 'F' or endereco like '%Quadra%';

select nome, telefone from cadastro where sexo = 'M' and endereco like '%Quadra%';

select  count(*) from cadastro;

select  count(*) as 'Quantidade'from cadastro;

select sexo, nome, count(*) as 'Quantidade de cadastro agrupado por sexo' from cadastro group by sexo;

select nome, idade from cadastro where telefone is not null;

update cadastro set telefone = '(61) 96541-5522' where nome = "Gael Alves Quintela"; #atualizar um dado
update cadastro set sexo = 'F' where idCadastro = 4; #atualizar um dado

set sql_safe_updates=0;

alter table cadastro add idCadastro int primary key auto_increment;

ALTER TABLE pessoa DROP COLUMN idPessoa; #dropar uma coluna

alter table cadastro modify column idCadastro int (10) first;

alter table cadastro modify column idCadastro int (10) after nome;

select concat(nome, ' é do sexo: ', sexo) from cadastro;

select concat(nome, ' é do sexo: ', sexo) as 'mensagem' from cadastro;

select sum(2 + 2) as "soma";#teste

delete from cadastro where idCadastro like 2;#Não utilizavel

delete from cadastro where idCadastro = 11;

update cadastro set endereco = 'Quadra L' where idCadastro = 3;  #atualizar um dado


SELECT * FROM cadastro;