/*REALIZANDO AS CONSULTAS
*/

-- CONTANDO TODOS OS REGISTROS

SELECT COUNT(*) AS total_linhas
FROM aryaheart.bebidas;

SELECT COUNT(*) AS total_linhas
FROM aryaheart.categorias;

SELECT COUNT(*) AS total_linhas
FROM aryaheart.funcionarios;

SELECT COUNT(*) AS total_linhas
FROM aryaheart.precos;

SELECT COUNT(*) AS total_linhas
FROM aryaheart.salarios;


-- RELACIONANDO TABELAS E REGISTROS IGUAIS
-- ENTRE UMA OU MAIS TABELAS UTILIZANDO O INNER JOIN


SELECT nome, valor, id_preco
FROM aryaheart.bebidas
INNER JOIN aryaheart.precos
ON bebidas.id_preco_bebida = precos.id_preco_bebida;

SELECT nome, sobrenome, valor
FROM aryaheart.funcionarios
INNER JOIN aryaheart.salarios
ON funcionarios.id_funcionario = salarios.id_funcionario;


-- Agrupando os valores das bebidas por meio da função janela


SELECT id_bebida, valor,
 ROW_NUMBER() OVER(PARTITION BY id_bebida ORDER BY valor ASC) AS n_bebidas
 FROM aryaheart.precos
 ORDER BY id_bebida;
 
 
 /*Criando usuarios
 */
 
CREATE USER 'arya' IDENTIFIED BY '1234';
CREATE USER 'aryaheart_interface' IDENTIFIED BY '1234';

CREATE ROLE 'consulta';
CREATE ROLE 'operacao';

GRANT SELECT ON aryaheart.* TO 'consulta';
GRANT SELECT, ALTER, INSERT ON aryaheart.* TO 'operacao';

GRANT 'consulta' TO 'arya';
GRANT 'operacao' TO 'aryaheart_interface';