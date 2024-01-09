create database db_generation_game_online;

create table tb_classes (
	Id BIGINT AUTO_INCREMENT,
    Classe VARCHAR(100),
    Habilidade VARCHAR(100),
    PRIMARY KEY(Id)
);

create table tb_personagens (
	Id BIGINT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Raca VARCHAR(100),
    Ataque BIGINT,
    Defesa BIGINT,
    ClasseId BIGINT,
    PRIMARY KEY(Id),
    FOREIGN KEY (ClasseId) REFERENCES tb_classes(Id)
);


INSERT INTO tb_classes (Classe, Habilidade) VALUES
("Guerreiro", "Especialista em Machados"),
("Arqueiro", "Agilidade e especialista em Arco e Flecha"),
("Mago", "Magia"),
("Sacerdote", "Curandeiro"),
("Fera", "Magia e metamorfose");

INSERT INTO tb_personagens (Nome, Raca, Ataque, Defesa, ClasseId) VALUES 
("SweLL","Humano", 2200, 1100, "1"),
("Kalina", "Humano", 2300, 1000, "1"),
("Pain", "Lobos", 1700, 2500, "5"),
("James", "Humano", 1850, 1400, "2"),
("Amy", "Humano", 1400, 2000, "4"),
("Milla", "Humano", 2500, 1500, "3"),
("Morphel", "Leão", 1800, 2750, "5"),
("Stalker","Elfo", 2100, 1900, "2");

SELECT * FROM tb_personagens WHERE Ataque > 2000;

SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.ClasseId = tb_classes.Id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.ClasseId = tb_classes.Id WHERE tb_classes.Id = 2;













 


