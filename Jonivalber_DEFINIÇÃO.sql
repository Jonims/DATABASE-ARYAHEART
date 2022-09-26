/*CRIANDO TABELAS PARA O BANCO DE DADOS Aryaheart
*/

CREATE DATABASE IF NOT EXISTS Aryaheart;

USE Aryaheart;

CREATE TABLE IF NOT EXISTS Aryaheart.bebidas (
	id_bebida INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria VARCHAR(255),
    nome VARCHAR(255),
    id_preco_bebida VARCHAR(255),
    quantidade VARCHAR(255),
    disponivel BOOL
)
COMMENT "Tabela que armazena informaçoes das bebidas";

CREATE TABLE IF NOT EXISTS Aryaheart.categorias (
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_bebida INT NOT NULL,
    nome VARCHAR(255),
    FOREIGN KEY (id_bebida) REFERENCES bebidas(id_bebida)
) 
COMMENT "Tabela que armazena bebidas com suas categorias";

CREATE TABLE IF NOT EXISTS Aryaheart.funcionarios (
	id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    data_contratacao DATE,
    data_nascimento DATE,
    ativa BOOL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
) 
COMMENT "Tabela que armazena pessoas contratadas pela empresa";

CREATE TABLE IF NOT EXISTS Aryaheart.salarios (
	id_salario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    valor DECIMAL(2),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
)
COMMENT "Tabela que armazena salários de pessoas de acordo com sua contratação";


CREATE TABLE IF NOT EXISTS Aryaheart.precos (
	id_preco INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_salario INT NOT NULL,
    id_preco_bebida VARCHAR(255),
    id_bebida VARCHAR(255),
    valor DECIMAL(2),
    FOREIGN KEY (id_salario) REFERENCES salarios(id_salario)
)
COMMENT "Tabela que armazena salários de pessoas de acordo com sua contratação";


/*ADCIONANDO OS DADOS NO BD ARYAHEART
*/
-- TABELA BEBIDAS
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (1, 1, 'Budweiser', 1, 2555, FALSE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (2, 1, 'Heineken', 2, 1245,TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (3, 1, 'Skol', 3, 1535, FALSE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (4, 1, 'Brahma', 4, 12135, FALSE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (5, 1, 'Stella Artouis', 5, 15454, TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (6, 1, 'Becks', 6, 4564,TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (7, 1, 'Corona', 7, 4566,FALSE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (8, 1, 'Sol', 8, 15466,TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (9, 1, 'Original', 9, 4566,FALSE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (10, 2, 'Coca 2L', 10, 4566, TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (11, 2, 'Fanta laranja 2L', 11, 5656, TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (12, 2, 'Fanta uva 2L', 12, 4565, TRUE);
INSERT INTO aryaheart.bebidas (id_bebida, id_categoria, nome, id_preco_bebida, quantidade, disponivel) VALUES (13, 2, 'Água mineral', 13, 54665, TRUE);

DELETE FROM Aryaheart.funcionarios
WHERE id_funcionario >= 1;


-- TABELA CATEGORIA
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,1, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,2,'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,3, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,4, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,5,'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,6, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,7,'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,8, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,9, 'Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,10,'Nao Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,11, 'Nao Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,12, 'Nao Alcoolico');
INSERT INTO aryaheart.categorias (id_categoria, id_bebida,nome) VALUES (DEFAULT,13, 'Nao Alcoolico');


-- TABELA FUNCIONÁRIOS

INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (1, 1, 'Amanda', 'Siva', 'hjulano@gmail.com', '2004-10-05', '1975-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (2, 2, 'Joao', 'Mota', 'julano@gmail.com', '2002-10-05', '1985-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (3, 3, 'Marcos', 'Snatos', 'mulano@gmail.com', '2004-10-05', '1979-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (4, 4, 'Julia', 'Tindra', 'kulano@gmail.com', '2004-10-05', '1980-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (5, 5, 'Natasha', 'Safira', 'nulano@gmail.com', '2005-10-05', '1985-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (6, 6, 'Renato', 'Souza', 'rulano@gmail.com', '2006-10-05', '1985-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (7, 7, 'Ivana', 'Franca', 'iulano@gmail.com', '2006-10-05', '1977-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (8, 8, 'Igor', 'Safira', 'nhulano@gmail.com', '2005-10-05', '1985-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (9, 9, 'Robert', 'Souza', 'ruhlano@gmail.com', '2006-10-05', '1985-02-05', TRUE);
INSERT INTO aryaheart.funcionarios (id_funcionario, id_categoria, nome, sobrenome, email, data_contratacao, data_nascimento, ativa) VALUES (10, 10, 'Alaska', 'Franca', 'ihuhlano@gmail.com', '2006-10-05', '1977-02-05', TRUE);


-- TABELA SALARIOS

INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,15);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,25);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,15);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,35);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,45);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,25);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,15);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,35);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,85);
INSERT INTO aryaheart.salarios (id_salario, id_funcionario,data_inicio, data_fim, valor) VALUES (DEFAULT,1,'2001-11-10',NULL,25);



-- TABELA PRECOS

INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,1,1, 1,5);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,2,2, 2, 6);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,3,3, 3, 7);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,4,4,4, 8);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,5,5,5, 9);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,6,6,6, 8);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,7,7,7, 7);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,8,8,8, 7);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,9,9,9, 7);
INSERT INTO aryaheart.precos (id_preco, id_salario,id_preco_bebida, id_bebida,  valor) VALUES (DEFAULT,10,10,10, 5);

 
 
 



