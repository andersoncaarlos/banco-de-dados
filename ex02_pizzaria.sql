CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	Id BIGINT AUTO_INCREMENT,
    Categoria VARCHAR(50),
    Tipo VARCHAR(50),
    PRIMARY KEY(Id)
);

CREATE TABLE tb_pizzas (
Id BIGINT AUTO_INCREMENT,
Sabor VARCHAR(50),
Borda VARCHAR(50),
Preco DECIMAL,
Quantidade INT,
CategoriaId BIGINT,
PRIMARY KEY(Id),
FOREIGN KEY (CategoriaId) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_categorias (Categoria, Tipo) VALUES 
("Pizza", "Salgada"),
("Pizza", "Doce"),
("Broto", "Salgado"),
("Broto", "Doce"),
("Esfiha", "Salgada"),
("Esfiha", "Doce");

INSERT INTO tb_pizzas (Sabor, Borda, Preco, Quantidade, CategoriaId) VALUES 
("Mussarela", "Catupiry", 40, 3, 1),
("Calabresa", "Cheddar", 45, 2, 1),
("Carne", "Sem Borda", 1.50, 10, 5),
("Romeu e Julieta", "Sem Borda", 35, 1, 4),
("Calabresa, Bacon e Queijo", "Catupiry", 55, 2, 1),
("Brigadeiro", "Sem Borda", 48, 1, 2),
("Beijinho", "Sem Borda", 5.50, 3, 6),
("Chocolate com Morango", "Sem Borda", 37, 1, 4);

SELECT * FROM tb_pizzas WHERE Preco > 45;

SELECT * FROM tb_pizzas WHERE Preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE Sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.CategoriaId = tb_categorias.Id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.CategoriaId = tb_categorias.Id WHERE tb_pizzas.CategoriaId = 2;






