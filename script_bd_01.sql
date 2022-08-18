CREATE DATABASE primeiroBanco;

CREATE TABLE pessoa(
	nome varchar(30),
    endereco varchar(150),
    cpf varchar(14),
    telefone varchar(15)
);

INSERT INTO pessoa VALUES("Michael Vieira", "QMS 51A", "054.548.488-15", "(61)99858-2077");


show tables;

desc pessoa;

insert into pessoa values("Michell Anastacio Mozer", "Beco São Carlos 2", "340.640.056-60", "(38) 98006-2212"), ("Cauê Coutinho Carmo", "Avenida Doutor Pedro Barroso", "875.930.827-33", "(24) 96868-1814");

CREATE TABLE produto (
	nomeProduto VARCHAR(50),
    preco FLOAT(6, 2)
);

INSERT INTO produto VALUES("osso", 61.50);

/*
Comentario varias linhas
*/ 
#Comentario uma linha

SELECT * FROM produto; #Mostra todos atributos

SELECT nomeProduto FROM produto; #Mostra o atributo desejado
