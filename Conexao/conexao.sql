CREATE DATABASE aula;


CREATE TABLE usuario(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
usuario VARCHAR(100),
senha VARCHAR(100),
peso INT,
dataNascimento DATE
)



DELIMITER $
CREATE TRIGGER aula AFTER INSERT
ON usuario
FOR EACH ROW
BEGIN
INSERT INTO novos(nome,senha) VALUES(NEW.nome,NEW.senha);
END $

