CREATE DATABASE funcionarios;

CREATE TABLE tb_funcionarios (ID BIGINT AUTO_INCREMENT, Nome VARCHAR(100) NOT NULL, Cargo VARCHAR(100), Salario DECIMAL, Data_de_Admissao DATE, primary key(ID));

INSERT INTO tb_funcionarios (Nome, Cargo, Salario, Data_de_Admissao)
VALUES ("Maria Silva", "Desenvolvedora FrontEnd", 4000, "2020-01-08"),
("João Silva", "Desenvolvedor BackEnd", 5000, "2021-03-12"),
("Carlos Morais", "Desenvolvedor Full Stack", 5600, "2018-08-20"),
("Oliver Sousa", "Desenvolvedor Full Stack", 5000, "2021-08-03"),
("Daniele Sousa", "Desenvolvedora FrontEnd", 4300, "2019-10-10"),
("José Silva", "Estagiário", 1800, "2023-06-19");

SELECT * FROM tb_funcionarios WHERE Salario > 2000;
SELECT * FROM tb_funcionarios WHERE Salario < 2000;

UPDATE tb_funcionarios SET Salario = 4100 WHERE ID = 1;

SELECT * FROM tb_funcionarios;






